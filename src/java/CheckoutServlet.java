
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckoutServlet extends HttpServlet {
//Declarations

    Connection conn = null;
    String username = null;

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

        String choice = request.getParameter("Choice");
        //checks if checkout is pressed
        if (choice.equalsIgnoreCase("Checkout")) {
            HttpSession session = request.getSession();
            Person person = (Person) session.getAttribute("person");

            //checks if the person logged in has filled up the personal information before
            String firstname = person.getFirstName();
            username = person.getUsername();
            String sqlUpdate = "UPDATE USER_INFO set firstname=?,lastname=?,address=?,company=?,postalcode=?,region=?,country=? WHERE username=?";
            try (PreparedStatement pstmt = conn.prepareStatement(sqlUpdate);) {
                //prepare data for update
                firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String address = request.getParameter("address");
                String company = request.getParameter("company");
                int postalcode = Integer.parseInt(request.getParameter("postalcode"));
                String region = request.getParameter("region");
                String country = request.getParameter("country");
                pstmt.setString(1, firstname);
                pstmt.setString(2, lastname);
                pstmt.setString(3, address);
                pstmt.setString(4, company);
                pstmt.setInt(5, postalcode);
                pstmt.setString(6, region);
                pstmt.setString(7, country);
                pstmt.setString(8, username);
                pstmt.executeUpdate();
            } catch (SQLException sqle) {
                System.out.println("SQLException error occured - "
                        + sqle.getMessage());

            }
            List<Product> cart = (List) session.getAttribute("cart");
            for (Product product : cart) {
                int qty = product.getQty();
                String id = product.getId();
                String query = "UPDATE PRODUCTSTOCK set productsold = productsold+? where nameofproduct=?";
                String query2 = "INSERT INTO PURCHASES (USERNAME, "+id+") VALUES (?, ?)";
                try (PreparedStatement pstmt2 = conn.prepareStatement(query);) {
                    //update stocks
                    pstmt2.setInt(1, qty);
                    pstmt2.setString(2, id);
                    pstmt2.executeUpdate();
                } catch (SQLException sqle) {
                    System.out.println("SQLException error occured - "
                            + sqle.getMessage());

                }
                try (
                        PreparedStatement pstmt3 = conn.prepareStatement(query2);) {
                    //update purchases
                    pstmt3.setString(1, username);
                    pstmt3.setInt(2, qty);
                    pstmt3.executeUpdate();
                } catch (SQLException sqle) {
                    System.out.println("SQLException error occured - "
                            + sqle.getMessage());

                }
            }

            response.sendRedirect("PaymentDone.jsp");
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
