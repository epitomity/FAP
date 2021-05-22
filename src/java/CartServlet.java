
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

        Product p1 = new Product();
        p1.setId("P1");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product p2 = new Product();
        p1.setId("P2");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product p3 = new Product();
        p1.setId("P3");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product p4 = new Product();
        p1.setId("P1");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product p5 = new Product();
        p1.setId("P1");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product rl1 = new Product();
        p1.setId("RL1");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product rl2 = new Product();
        p1.setId("RL1");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product rl3 = new Product();
        p1.setId("RL1");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product rl4 = new Product();
        p1.setId("RL1");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product rl5 = new Product();
        p1.setId("RL1");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");

        Product rl6 = new Product();
        p1.setId("RL1");
        p1.setQty(0);
        p1.setPrice(350);
        p1.setImg("Parfum-Ethereal.png");
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
                }
                Cart.add(p1);
                System.out.println(Cart);
                session.setAttribute("cart", Cart);

                break;
        }
            case "P2":
                System.out.println("tite");
                break;
            case "P3":
                System.out.println("tite");
                break;
            case "P4":
                System.out.println("tite");
                break;
            case "P5":
                System.out.println("tite");
                break;
            case "RL1":
                System.out.println("tite");
                break;
            case "RL2":
                System.out.println("tite");
                break;
            case "RL3":
                System.out.println("tite");
                break;
            case "RL4":
                System.out.println("tite");
                break;
            case "RL5":
                System.out.println("tite");
                break;
            case "RL6":
                System.out.println("tite");
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
