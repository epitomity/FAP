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
        <link href="Payment.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div id="Profile" class="container-fluid flex-column justify-content-center">

            <ul id="Header" class="nav container-fluid align-items-center fixed-top m-0 p-0">
                <div id="Header_Left" class="row">
                    <li class="nav-item">
                        <a class="nav-link " href="LandingPage.jsp">Products</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="LandingPage.jsp">Reviews</a>
                    </li>
                </div>

                <li class="nav-item mx-auto">
                    <a class="nav-link" href="LandingPage.jsp"><img id="Luvamine-Logo-White" src="imageAssets/Luvamine-Logo-White.png"></a>
                </li>

                <div id="Header_Right" class="row">
                    <li class="nav-item">
                        <button class="nav-link header_button" data-toggle="modal" data-target="#LoginModal">Login</button>
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
            <div class="HeartWithCircle"><span id="HeartIcon">&#9825;</span> <span class="dot"> </span> </div>
            <p class="OtherTextThankYou">An email receipt including the details of your order has been sent to your email address. Please keep it for records.</p>
            <p class="DownloadPDFText">You can also download a PDF of your receipt here:</p>
            <div> <button type="submit"  class="btn btn-primary Login_Signup_Button">Download</button></div>
            <p class="VisitAccText">Visit your account page at any time to check the status of your order, order history, and payment details</p>
            <div><button type="submit" id="profile" class="btn btn-primary Login_Signup_Button">Profile</button></div>

        </div>
        <div>
            <!-- Login Modal -->
            <div class="modal right fade" id="LoginModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <h1 class="text-center LoginSignUpHeader">Login</h1>
                            <form>
                                <div class="form-group">
                                    <label for="Email_Input_Login">Email</label>
                                    <input type="email" class="form-control" id="Email_Input_Login">
                                </div>
                                <div class="form-group">
                                    <label for="Password_Input_Login">Password</label>
                                    <input type="password" class="form-control" id="Password_Input_Login">
                                </div>
                                Error Messages
                                <div class="d-flex flex-column justify-content-center mt-5">
                                    <a id="Login_Signup" class="text-center mb-3 text-decoration-none" data-dismiss="modal" data-toggle="modal" href="#SignupModal">Create Account</a>
                                    <button type="submit" id="Login_Submit" class="btn btn-primary Login_Signup_Button">Submit</button>
                                </div>

                            </form>
                        </div>
                    </div>
                    <!-- modal-content -->
                </div>
                <!-- modal-dialog -->
            </div>
            <!-- modal -->
        </div>

        <div>
            <!-- Sign Up Modal -->
            <div class="modal right fade" id="SignupModal" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <h1 class="text-center LoginSignUpHeader">Sign Up</h1>
                            <form>
                                <div class="form-group">
                                    <label for="Email_Input_Signup">Email</label>
                                    <input type="email" class="form-control" id="Email_Input_Signup">
                                </div>
                                <div class="form-group">
                                    <label for="Password_Input_Signup">Password</label>
                                    <input type="text" class="form-control" id="Password_Input_Signup">
                                </div>
                                <div class="form-group">
                                    <label for="ConfirmPassword_Signup">Confirm Password</label>
                                    <input type="text" class="form-control" id="ConfirmPassword_Signup">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" id="Captcha_Signup" placeholder="What is being shown above?">
                                </div>
                                Error Messages
                                <div class="d-flex flex-column justify-content-center mt-5">
                                    <button type="submit" id="Signup_Button" class="btn btn-primary Login_Signup_Button">Submit</button>
                                </div>

                            </form>
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