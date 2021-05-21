<!DOCTYPE html>
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
    <link href="payment.css" rel="stylesheet" type="text/css"/>
    <style>
        
    </style>
</head>
<body>
    <div id="Landing_Page container-fluid flex-column justify-content-center">
        <ul id="Header" class="nav container-fluid align-items-center fixed-top">
            <li class="nav-item pl-4">
                <a class="nav-link" href="#">Products</a>
            </li>
            <li class="nav-item ">
                <a class="nav-link" href="#">Reviews</a>
            </li>
            <li class="nav-item mx-auto">
                <a class="nav-link" href="#"><img id="Luvamine-Logo-White" src="imageAssets/Luvamine-Logo-White.png"></a>
            </li>
            <li class="nav-item">
                <button class="nav-link header_button" data-toggle="modal" data-target="#LoginModal">Login</button>
            </li>
            <li class="nav-item pr-4">
                <button class="nav-link header_button" data-toggle="modal" data-target="#CartModal">Cart</button>
            </li>
        </ul>
    </div>
     <div id="ThankYouBox">
 
         <p class="ThankYou">Thank you.</p>
            <p class="OrderPlaced">Your order was placed.</p>
            <div class="HeartWithCircle"><span id="HeartIcon">&#9825;</span> <span class="dot"> </span> </div>
            <p class="OtherTextThankYou">An email receipt including the details of your order has been sent to your email address. Please keep it for records.</p>
            <p class="DownloadPDFText">You can also download a PDF of your receipt here:</p>
            <div> <button type="submit"  class="btn btn-primary Login_Signup_Button">Download</button></div>
            <p class="VisitAccText">Visit your account page at any time to check the status of your order, order history, and payment details</p>
            <div><button type="submit" id="profile" class="btn btn-primary Login_Signup_Button">Profile</button></div>

     </div>
    

</body>
</html>