
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartServlet extends HttpServlet {

    Product p1 = null;
    Product p2 = null;
    Product p3 = null;
    Product p4 = null;
    Product p5 = null;
    Product rl1 = null;
    Product rl2 = null;
    Product rl3 = null;
    Product rl4 = null;
    Product rl5 = null;
    Product rl6 = null;

    @Override
    public void init(ServletConfig config) throws ServletException {

        super.init(config);

        p1 = new Product();
        p1.setName("Ethereal<br>Eau De Parfum<br>(60ml)");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        p2 = new Product();
        p2.setName("Autumn Bloom<br>Eau De Parfum<br>(60ml)");
        p2.setQty(0);
        p2.setPrice(350);
        p2.setImg("Parfum-Autumn-Bloom.png");

        p3 = new Product();
        p3.setName("Amber Wood<br>Eau De Parfum<br>(60ml)");
        p3.setQty(0);
        p3.setPrice(350);
        p3.setImg("Parfum-Amber-Wood.png");

        p4 = new Product();
        p4.setName("Rendezvous<br>Eau De Parfum<br>(60ml)");
        p4.setQty(0);
        p4.setPrice(350);
        p4.setImg("Parfum-Rendezvous.png");

        p5 = new Product();
        p5.setName("Green Tea Lush<br>Eau De Parfum<br>(60ml)");
        p5.setQty(0);
        p5.setPrice(350);
        p5.setImg("Parfum-Green-Tea-Lush.png");

        rl1 = new Product();
        rl1.setName("Autumn Bloom<br>Room & Linen Spray<br>(200ml)");
        rl1.setQty(0);
        rl1.setPrice(300);
        rl1.setImg("Room-Spray-Autumn-Bloom.png");

        rl2 = new Product();
        rl2.setName("Amber Wood<br>Room & Linen Spray<br>(200ml)");
        rl2.setQty(0);
        rl2.setPrice(300);
        rl2.setImg("Amber-Wood.png");

        rl3 = new Product();
        rl3.setName("Rendezvous<br>Room & Linen Spray<br>(200ml)");
        rl3.setQty(0);
        rl3.setPrice(300);
        rl3.setImg("Room-Spray-Rendezvous.png");

        rl4 = new Product();
        rl4.setName("Green Tea Lush<br>Room & Linen Spray<br>(200ml)");
        rl4.setQty(0);
        rl4.setPrice(300);
        rl4.setImg("Room-Spray-Green-Tea-Lush.png");

        rl5 = new Product();
        rl5.setName("Peach Blossom<br>Room & Linen Spray<br>(200ml)");
        rl5.setQty(0);
        rl5.setPrice(300);
        rl5.setImg("Room-Spray-Peach-Blossom.png");

        rl6 = new Product();
        rl6.setName("White Tea & Sage<br>Room & Linen Spray<br>(200ml)");
        rl6.setQty(0);
        rl6.setPrice(300);
        rl6.setImg("Room-Spray-White-Tea-_-Sage.png");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        List<Product> Cart = (List) session.getAttribute("cart");
        System.out.println("i am in process request");

        switch (action) {
            case "P1":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;

                //NOT YET IMPLEMENTED
            case "P2":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
            case "P3":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
            case "P4":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
            case "P5":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
            case "RL1":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
            case "RL2":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
            case "RL3":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
            case "RL4":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
            case "RL5":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
            case "RL6":
                if (Cart.contains(p1)) {
                    p1.addQty();
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);
                response.sendRedirect("LandingPage.jsp");
                break;
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
