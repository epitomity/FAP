
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
        p1.setId("P1");
        p1.setName("Ethereal<br>Eau De Parfum<br>(60ml)");
        p1.setQty(1);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        p2 = new Product();
        p2.setId("P2");
        p2.setName("Autumn Bloom<br>Eau De Parfum<br>(60ml)");
        p2.setQty(1);
        p2.setPrice(350);
        p2.setImg("Parfum-Autumn-Bloom.png");

        p3 = new Product();
        p3.setId("P3");
        p3.setName("Amber Wood<br>Eau De Parfum<br>(60ml)");
        p3.setQty(1);
        p3.setPrice(350);
        p3.setImg("Parfum-Amber-Wood.png");

        p4 = new Product();
        p4.setId("P4");
        p4.setName("Rendezvous<br>Eau De Parfum<br>(60ml)");
        p4.setQty(1);
        p4.setPrice(350);
        p4.setImg("Parfum-Rendezvous.png");

        p5 = new Product();
        p5.setId("P5");
        p5.setName("Green Tea Lush<br>Eau De Parfum<br>(60ml)");
        p5.setQty(1);
        p5.setPrice(350);
        p5.setImg("Parfum-Green-Tea-Lush.png");

        rl1 = new Product();
        rl1.setId("RL1");
        rl1.setName("Autumn Bloom<br>Room & Linen Spray<br>(200ml)");
        rl1.setQty(1);
        rl1.setPrice(300);
        rl1.setImg("Room-Spray-Autumn-Bloom.png");

        rl2 = new Product();
        rl2.setId("RL2");
        rl2.setName("Amber Wood<br>Room & Linen Spray<br>(200ml)");
        rl2.setQty(1);
        rl2.setPrice(300);
        rl2.setImg("Room-Spray-Amber-Wood.png");

        rl3 = new Product();
        rl3.setId("RL3");
        rl3.setName("Rendezvous<br>Room & Linen Spray<br>(200ml)");
        rl3.setQty(1);
        rl3.setPrice(300);
        rl3.setImg("Room-Spray-Rendezvous.png");

        rl4 = new Product();
        rl4.setId("RL4");
        rl4.setName("Green Tea Lush<br>Room & Linen Spray<br>(200ml)");
        rl4.setQty(1);
        rl4.setPrice(300);
        rl4.setImg("Room-Spray-Green-Tea-Lush.png");

        rl5 = new Product();
        rl5.setId("RL5");
        rl5.setName("Peach Blossom<br>Room & Linen Spray<br>(200ml)");
        rl5.setQty(1);
        rl5.setPrice(300);
        rl5.setImg("Room-Spray-Peach-Blossom.png");

        rl6 = new Product();
        rl6.setId("RL6");
        rl6.setName("White Tea & Sage<br>Room & Linen Spray<br>(200ml)");
        rl6.setQty(1);
        rl6.setPrice(300);
        rl6.setImg("Room-Spray-White-Tea-_-Sage.png");
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        List<Product> Cart = (List) session.getAttribute("cart");

        switch (action) {
            case "P1":
                if (Cart.contains(p1)) {
                    p1.addQty();
                } else {
                    Cart.add(p1);
                }

                break;
            case "addP1":
                p1.addQty();
                break;
            case "subP1":
                if (p1.getQty() == 1) {
                    Cart.remove(p1);
                } else {
                    p1.subQty();
                }
                break;

            case "P2":
                if (Cart.contains(p2)) {
                    p2.addQty();
                } else {
                    Cart.add(p2);
                }
                break;
            case "addP2":
                p2.addQty();
                break;
            case "subP2":
                if (p2.getQty() == 1) {
                    Cart.remove(p2);
                } else {
                    p2.subQty();
                }
                break;

            case "P3":
                if (Cart.contains(p3)) {
                    p3.addQty();
                } else {
                    Cart.add(p3);
                }
                break;
            case "addP3":
                p3.addQty();
                break;
            case "subP3":
                if (p3.getQty() == 1) {
                    Cart.remove(p3);
                } else {
                    p3.subQty();
                }
                break;

            case "P4":
                if (Cart.contains(p4)) {
                    p4.addQty();
                } else {
                    Cart.add(p4);
                }
                break;
            case "addP4":
                p4.addQty();
                break;
            case "subP4":
                if (p4.getQty() == 1) {
                    Cart.remove(p4);
                } else {
                    p4.subQty();
                }
                break;

            case "P5":
                if (Cart.contains(p5)) {
                    p5.addQty();
                } else {
                    Cart.add(p5);
                }
                break;
            case "addP5":
                p5.addQty();
                break;
            case "subP5":
                if (p5.getQty() == 1) {
                    Cart.remove(p5);
                } else {
                    p5.subQty();
                }
                break;

            case "RL1":
                if (Cart.contains(rl1)) {
                    rl1.addQty();
                } else {
                    Cart.add(rl1);
                }
                break;
            case "addRL1":
                rl1.addQty();
                break;
            case "subRL1":
                if (rl1.getQty() == 1) {
                    Cart.remove(rl1);
                } else {
                    rl1.subQty();
                }
                break;

            case "RL2":
                if (Cart.contains(rl2)) {
                    rl2.addQty();
                } else {
                    Cart.add(rl2);
                }
                break;
            case "addRL2":
                rl2.addQty();
                break;
            case "subRL2":
                if (rl2.getQty() == 1) {
                    Cart.remove(rl2);
                } else {
                    rl2.subQty();
                }
                break;

            case "RL3":
                if (Cart.contains(rl3)) {
                    rl3.addQty();
                } else {
                    Cart.add(rl3);
                }
                break;
            case "addRL3":
                rl3.addQty();
                break;
            case "subRL3":
                if (rl3.getQty() == 1) {
                    Cart.remove(rl3);
                } else {
                    rl3.subQty();
                }
                break;

            case "RL4":
                if (Cart.contains(rl4)) {
                    rl4.addQty();
                } else {
                    Cart.add(rl4);
                }
                break;
            case "addRL4":
                rl4.addQty();
                break;
            case "subRL4":
                if (rl4.getQty() == 1) {
                    Cart.remove(rl4);
                } else {
                    rl4.subQty();
                }
                break;

            case "RL5":
                if (Cart.contains(rl5)) {
                    rl5.addQty();
                } else {
                    Cart.add(rl5);
                }
                break;
            case "addRL5":
                rl5.addQty();
                break;
            case "subRL5":
                if (rl5.getQty() == 1) {
                    Cart.remove(rl5);
                } else {
                    rl5.subQty();
                }
                break;

            case "RL6":
                if (Cart.contains(rl6)) {
                    rl6.addQty();
                } else {
                    Cart.add(rl6);
                }
                break;
            case "addRL6":
                rl6.addQty();
                break;
            case "subRL6":
                if (rl6.getQty() == 1) {
                    Cart.remove(rl6);
                } else {
                    rl6.subQty();
                }
                break;

        }
        session.setAttribute("cart", Cart);
        response.sendRedirect("PaymentMethods.jsp");
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
