<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <meta charset="utf-8" />
        <title>Luvamine</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- JS library -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" id="applicationStylesheet" href="style.css" />
        <link href="Payment.css" rel="stylesheet" type="text/css"/>

        <%
            //Cache Control
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");//HTTP 1.1
            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
            response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility

            //Illegal Session Handling
            String user = (String) session.getAttribute("username");
            if (null == user) {
                String errorMessage = "You don't have access to this page.";
                request.setAttribute("errorMessage", errorMessage);
                getServletContext().getRequestDispatcher("/Error.jsp").forward(request, response);
            }
        %>

    </head>
    <body>
        <div id="Payment Done" class="container-fluid flex-column justify-content-center">

            <ul id="Header" class="nav container-fluid align-items-center fixed-top m-0 p-0">
                <div id="Header_Left" class="row">
                    <li class="nav-item">
                        <a class="nav-link " href="LandingPage.jsp#Products">Products</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="LandingPage.jsp#Reviews">Reviews</a>
                    </li>
                </div>

                <li class="nav-item mx-auto">
                    <a class="nav-link" href="LandingPage.jsp"><img id="Luvamine-Logo-White" src="imageAssets/Luvamine-Logo-White.png"></a>
                </li>

                <div id="Header_Right" class="row">
                    <li class="nav-item">
                        <a class="nav-link header_button" href="Profile.jsp">Profile</a>
                    </li>
                    <li class="nav-item">
                        <button class="nav-link header_button" data-toggle="modal" data-target="#CartModal">Cart</button>
                    </li>
                </div>
            </ul>

        </div>
        <div id="ThankYouBox">

            <p class="ThankYou">Thank you.</p>
            <p class="OrderPlaced">Your order was placed.</p>
            <svg id="Email_Icon" xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
            <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555zM0 4.697v7.104l5.803-3.558L0 4.697zM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757zm3.436-.586L16 11.801V4.697l-5.803 3.546z"/>
            </svg>
            <p class="OtherTextThankYou mt-4">An email receipt including the details of your order has been sent to your email address. Please keep it for records.</p>
            <p class="OtherTextThankYou mt-4">You can also download a PDF of your receipt here:</p>

            <form action="PDFServlet" method="post">
                <button type="submit" name="action" value="receipt" class="btn btn-primary Login_Signup_Button">Download</button>
            </form>

            <p class="OtherTextThankYou mt-4">Visit your account page at any time to check the status of your order, order history, and payment details</p>
            <div><a href="Profile.jsp" id="profile" class="btn btn-primary Login_Signup_Button">Profile</a></div>

        </div>

        <div>
            <!-- Cart Modal -->
            <div class="modal right fade" id="CartModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <h1 id="Cart_Header">Your Cart</h1>
                        <div id="Cart_Body" class="modal-body col text-center">

                            <c:forEach var="item" items="${sessionScope.cart}">
                                <form action="CartServlet" method="get" id="Cart_Container" class="row align-items-center justify-content-between">
                                    <div id="Cart_Img_Container">
                                        <img class="cart-img" src="imageAssets/${item.img}">
                                    </div>
                                    <p>${item.name}</p>
                                    <button type="submit" class="btn btn-primary" name="action" value="add${item.id}">+</button>
                                    <p>${item.qty}</p>
                                    <button type="submit" class="btn btn-primary" name="action" value="sub${item.id}">-</button>
                                    <p>₱ ${item.qty * item.price}</p>
                                </form>

                            </c:forEach>
                            <c:set var="username" value="${sessionScope.username}"/>
                            <c:choose>
                                <c:when test="${username != null}">
                                    <a href="PaymentMethods.jsp"><button type="button" id="Signup_Button" class="btn btn-primary Login_Signup_Button cart-button">Checkout</button></a>
                                </c:when>
                                <c:otherwise>
                                    <button class="nav-link header_button cart-button" data-dismiss="modal" data-toggle="modal" data-target="#LoginModal">You need to be logged in to checkout.</button>
                                </c:otherwise>    
                            </c:choose>

                        </div>
                    </div>
                    <!-- modal-content -->
                </div>
                <!-- modal-dialog -->
            </div>
            <!-- modal -->
        </div>
    </body>
</html>