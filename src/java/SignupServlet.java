
import java.io.IOException;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import nl.captcha.Captcha;

public class SignupServlet extends HttpServlet {

    //Declarations
    String user = null;
    String pass = null;
    String email = null;
    String pass2 = null;
    Connection conn = null;

    @Override
    public void init(ServletConfig config) throws ServletException {

        super.init(config);

        //Establish Database Connection
        try {

            //Initialize Variables
            Class.forName(config.getInitParameter("jdbcClassName"));
            String username = config.getInitParameter("dbUserName");
            String password = config.getInitParameter("dbPassword");

            //Build URL String
            StringBuffer url = new StringBuffer(config.getInitParameter("jdbcDriverURL"))
                    .append("://")
                    .append(config.getInitParameter("dbHostName"))
                    .append(":")
                    .append(config.getInitParameter("dbPort"))
                    .append("/")
                    .append(config.getInitParameter("databaseName"));

            //Establish Connection
            conn = DriverManager.getConnection(url.toString(), username, password);

        } catch (SQLException sqle) {

            System.out.println("SQLException error occured - "
                    + sqle.getMessage());

        } catch (ClassNotFoundException nfe) {

            System.out.println("ClassNotFoundException error occured - "
                    + nfe.getMessage());
        }
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            HttpSession session = request.getSession();
            Captcha captcha = (Captcha) session.getAttribute(Captcha.NAME);
            request.setCharacterEncoding("UTF-8");
            String answer = request.getParameter("answer");
            
            //Incorrect Captcha
            if (!captcha.isCorrect(answer)) {
               // throw new CaptchaIncorrectException(null);
            }
            
            //Initialize Variables from User
            user = request.getParameter("username");
            pass = request.getParameter("password");
            pass2 = request.getParameter("repeatpassword");
            email = request.getParameter("email");
            //Check if the user missed any inputs 
            if (user.isEmpty() || pass.isEmpty() || pass2.isEmpty()||email.isEmpty()) {

                //Redirect to error page
               // throw new NullValueException(null);
            }

            //Check if the password confirmation is true
            if (!pass.equals(pass2)) {

                //Redirect to error page
               // throw new IncorrectMatchPassException(null);

            } else {

                //Initialize Prepared SQL Statement
                String query = "SELECT * FROM APP.USER_INFO WHERE username = ? OR email=?";
                String query2 = "INSERT INTO APP.USER_INFO (EMAIL,USERNAME, PASSWORD, \"ROLE\") VALUES (?, ?, ?, DEFAULT)";


                //Sign-up Logic
                try (PreparedStatement pstmt = conn.prepareStatement(query);
                        PreparedStatement pstmt2 = conn.prepareStatement(query2);) {

                    //Checks the database if the username or email entered by the database already exists.
                    pstmt.setString(1, user);
                    pstmt.setString(2, email);
                    ResultSet result = pstmt.executeQuery();

                    //If the username or email was not found in the database, encrypts the password and adds the user into the database.
                    if (!result.next()) {
                        pstmt2.setString(1, email);
                        pstmt2.setString(2, user);
                        pstmt2.setString(3,pass);
                        pstmt2.executeUpdate();
                        response.sendRedirect("PaymentDone.jsp");
                    } else {
                        
                        //The username or email was already taken
                       // throw new UserTakenException(null);
                    }
                }
            }

        } catch (SQLException sqle) {

            System.out.println("SQLException error occured - "
                    + sqle.getMessage());

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
