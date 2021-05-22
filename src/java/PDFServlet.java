import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;
import java.io.*;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.http.*;

public class PDFServlet extends HttpServlet {

    //Declarations
    Connection conn = null;
    String user = null;
    String pass = null;
    String username;
    String header;
    String footer;

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

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //Pdf Event Handling for Header, Footer and Page Number
        class HeaderFooterPageEvent extends PdfPageEventHelper {

            //Declare Variables
            PdfTemplate t;
            Image total;

            //Initialize Variables
            @Override
            public void onOpenDocument(PdfWriter writer, Document document) {

                t = writer.getDirectContent().createTemplate(30, 16);
                try {
                    total = Image.getInstance(t);
                    total.setRole(PdfName.ARTIFACT);

                } catch (DocumentException de) {
                    throw new ExceptionConverter(de);
                }
            }

            //Saves total page number
            @Override
            public void onCloseDocument(PdfWriter writer, Document document) {

                //Print page number on 
                ColumnText.showTextAligned(t, Element.ALIGN_LEFT,
                        new Phrase(String.valueOf(writer.getPageNumber())),
                        2, 2, 0);
            }

            //Format for Header and Footer
            public void onEndPage(PdfWriter writer, Document document) {

                //Initialize Variables
                PdfPTable table = new PdfPTable(3);
                try {

                    //Table formatting
                    table.setWidths(new int[]{24, 24, 2});
                    table.setTotalWidth(720);
                    table.getDefaultCell().setFixedHeight(20);
                    table.getDefaultCell().setBorder(Rectangle.BOTTOM);

                    //Add footer
                    table.addCell(new Phrase(request.getServletContext().getInitParameter("footer")));

                    //Formatting
                    table.getDefaultCell().setHorizontalAlignment(Element.ALIGN_RIGHT);
                    //Page Number Formatting
                    table.addCell(new Phrase(String.format("Page %d of", writer.getPageNumber())));
                    PdfPCell cell = new PdfPCell(total);
                    cell.setBorder(Rectangle.BOTTOM);
                    table.addCell(cell);
                    PdfContentByte canvas = writer.getDirectContent();
                    canvas.beginMarkedContentSequence(PdfName.ARTIFACT);
                    table.writeSelectedRows(0, -1, 36, 30, canvas);
                    canvas.endMarkedContentSequence();

                } catch (DocumentException de) {
                    throw new ExceptionConverter(de);
                }

                PdfContentByte cb = writer.getDirectContent();

                //Add Header
                Phrase header = new Phrase(request.getServletContext().getInitParameter("header"));

                //Header Formatting
                ColumnText.showTextAligned(cb, Element.ALIGN_CENTER,
                        header,
                        (document.right() - document.left()) / 2 + document.leftMargin(),
                        document.top() + 10, 0);
            }
        }

        //Initialization
        String action = request.getParameter("action");
        java.util.Date date = new java.util.Date();
        // Get username from the current session
        Person person = (Person) request.getSession(false).getAttribute("person");
        username = person.getUsername();
        //Create an output stream for writing binary data in the response.
        ServletOutputStream os = response.getOutputStream();
        //Set the response content type to PDF
        response.setContentType("application/pdf");
        //Get dates
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        DateFormat pdfDate = new SimpleDateFormat("yyyyMMddhhmmss");
        //Save dates as string
        String pdfDateName = pdfDate.format(date);
        String strDate = dateFormat.format(date);
        //Set filename to current date
        response.setHeader("Content-Disposition", "attachment;filename=" + pdfDateName + ".pdf");
        //Create a new document
        Document doc = new Document();

        try {
            //Initialization
            Statement stmt = conn.createStatement();

            //Check which button is clicked
            if (action.equals("own")) {

                //Create an instance of the PdfWriter using the output stream
                PdfWriter writer = PdfWriter.getInstance(doc, os);

                //Create new HeaderFooterPageEvent for the header and footer
                HeaderFooterPageEvent event = new HeaderFooterPageEvent();
                writer.setPageEvent(event);

                //Document formatting
                doc.setPageSize(PageSize.LETTER.rotate());
                doc.open();

                //Add information
                doc.add(new Paragraph("Currently logged in as: " + username));
                doc.add(new Paragraph("User Database as of: " + strDate));
                doc.add(Chunk.NEWLINE);

                //Get result set using a sql statement
                ResultSet rs = stmt.executeQuery("SELECT * FROM APP.USER_INFO WHERE username = '" + username + "'");

                //Create table with 2 columns
                PdfPTable my_report_table = new PdfPTable(2);

                //Create a table header
                PdfPCell table_cell = new PdfPCell(new Phrase("Username"));
                my_report_table.addCell(table_cell);
                table_cell = new PdfPCell(new Phrase("Role"));
                my_report_table.addCell(table_cell);

                //Input data
                while (rs.next()) {

                    String usernameDB = rs.getString("username");
                    table_cell = new PdfPCell(new Phrase(usernameDB + "*"));
                    my_report_table.addCell(table_cell);
                    String role = rs.getString("role");
                    table_cell = new PdfPCell(new Phrase(role));
                    my_report_table.addCell(table_cell);

                }

                //Attach report table to PDF
                doc.add(my_report_table);
                doc.close();

            } else if (action.equals("all")) {

                //Create an instance of the PdfWriter using the output stream
                PdfWriter writer = PdfWriter.getInstance(doc, os);

                //Create new HeaderFooterPageEvent for the header and footer
                HeaderFooterPageEvent event = new HeaderFooterPageEvent();
                writer.setPageEvent(event);

                //Document formatting
                doc.setPageSize(PageSize.LETTER.rotate());
                doc.open();

                //Add information
                doc.add(new Paragraph("Currently logged in as: " + username));
                doc.add(new Paragraph("User Database as of: " + strDate));
                doc.add(Chunk.NEWLINE);

                //Get result set using a sql statement
                ResultSet rs = stmt.executeQuery("select username,role  from APP.USER_INFO");

                //Create table with 2 columns
                PdfPTable my_report_table = new PdfPTable(2);

                //Create a table header
                PdfPCell table_cell = new PdfPCell(new Phrase("Username"));
                my_report_table.addCell(table_cell);
                table_cell = new PdfPCell(new Phrase("Role"));
                my_report_table.addCell(table_cell);

                //Inputs data
                while (rs.next()) {
                    String usernameDB = rs.getString("username");
                    table_cell = new PdfPCell(new Phrase(usernameDB));
                    
                    //Checking for current user
                    if (usernameDB.equals(username)) {
                        table_cell = new PdfPCell(new Phrase(usernameDB + "*"));
                    }
                    
                    my_report_table.addCell(table_cell);
                    String role = rs.getString("role");
                    table_cell = new PdfPCell(new Phrase(role));
                    my_report_table.addCell(table_cell);

                }

                //Attach report table to PDF
                doc.add(my_report_table);
                doc.close();
            }
        } catch (SQLException e) {
        } catch (DocumentException ex) {
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
    }// </editor-fold

}
