//Imports

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.*;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {

    //Declarations
    Connection conn = null;
    String user = null;
    String pass = null;

    //Initialization
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

    //Login Logic
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {

            //Initialize Variables from User
            user = request.getParameter("username");
            pass = request.getParameter("password");

            //Initialize Prepared SQL Statement
            String query = "SELECT * FROM USER_INFO WHERE username = ?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, user);

            //Execute SQL Code
            ResultSet result = pstmt.executeQuery();

            //Declare Person Object
            Person person = null;

            //Declare Error Message
            String errorMessage;

            //Check if the User didn't input 
            if (user.isEmpty() && pass.isEmpty()) {

                //The username and password is empty
                errorMessage = "Please enter your username and password.";
                request.setAttribute("errorMessage", errorMessage);
                RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
                rd.forward(request, response);

                //If the user inputed a VALID username, executes this block
            } else if (result.next()) {

                //Initialize Variables
                String DBpass = result.getString("password");
                //Check if passwords match with the encrpyed password stored in the database
                if (DBpass.equals(Security.encrypt(pass))) {           
                    //Creates a new Person and associates them to a Session
                    person = new Person();
                    person.setFirstName(result.getString("firstName"));
                    person.setLastName(result.getString("lastName"));
                    person.setRole(result.getString("role"));
                    person.setEmail(result.getString("email"));
                    person.setCompany(result.getString("company"));
                    person.setCountry(result.getString("country"));
                    person.setRegion(result.getString("region"));
                    person.setPostalCode(result.getInt("postalCode"));
                    person.setAddress(result.getString("address"));
                    person.setUsername(result.getString("username"));

                    HttpSession session = request.getSession();

                    List<Product> cart = new ArrayList<Product>();
                    session.setAttribute("cart", cart);
                    session.setAttribute("person", person);
                    session.setAttribute("username", result.getString("username"));
                    //Go to success page
                    response.sendRedirect("Profile.jsp");

                } else {

                    //The password was incorect
                    errorMessage = "You password was incorrect.";
                    request.setAttribute("errorMessage", errorMessage);
                    RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
                    rd.forward(request, response);
                }
                //If the user inputed an INVALID username, executes this block
            } else {

                if (pass.isEmpty() || pass == null) {
                    //Has a username, but password is empty
                    errorMessage = "Please enter a password.";
                    request.setAttribute("errorMessage", errorMessage);
                    RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
                    rd.forward(request, response);
                }

                //Both the username and the password was incorrect.
                errorMessage = "Your username and password was incorrect.";
                request.setAttribute("errorMessage", errorMessage);
                RequestDispatcher rd = request.getRequestDispatcher("/Error.jsp");
                rd.forward(request, response);
            }

            //Close streams
            result.close();
            pstmt.close();

        } catch (SQLException sqle) {
            System.out.println("SQLException error occured - "
                    + sqle.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
