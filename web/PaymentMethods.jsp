<!DOCTYPE html>

<html>

    <head>

        <%@page contentType="text/html" pageEncoding="UTF-8"%>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

        <div class="row g-5" id="PaymentDetails">
            <div class="col-md-7 col-lg-8" id="PaymentInformation">
                <h4 class="mb-3">Contact Information</h4>
                <form class="needs-validation" novalidate="">
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="firstName" class="form-label"> </label>
                            <input type="text" class="form-control" id="firstName" placeholder="First Name" value="" required="">
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>

                        <div class="col-sm-6">
                            <label for="lastName" class="form-label"> </label>
                            <input type="text" class="form-control" id="lastName" placeholder="Last Name" value="" required="">
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="Company" class="form-label"></label>
                            <input type="text" class="form-control" id="Company" placeholder="Company (Optional)">

                        </div>

                        <div class="col-12">
                            <label for="email" class="form-label"></label>
                            <input type="email" class="form-control" id="email" placeholder="Email">
                            <div class="invalid-feedback">
                                Please enter a valid email address for shipping updates.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="address" class="form-label"></label>
                            <input type="text" class="form-control" id="address" placeholder="Address" required="">
                            <div class="invalid-feedback">
                                Please enter your shipping address.
                            </div>
                        </div>

                        <div class="col-12">
                            <label for="address2" class="form-label"></label>
                            <input type="text" class="form-control" id="address2" placeholder="Address 2 (Optional)">
                        </div>

                        <div class="col-md-5" style="padding-top: 2rem;">
                            <label for="country" class="form-label"></label>
                            <select class="form-select" id="country" required=""style="background-color:#f7f6ee; width: 98%; border-color:#f7f6ee;">
                                <option value="" disabled selected>Country</option>
                                <option>Philippines</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid country.
                            </div>
                        </div>

                        <div class="col-md-4" style="padding-top: 2rem;">
                            <label for="state" class="form-label"></label>
                            <select class="form-select" id="Region" required="" style="background-color:#f7f6ee; width: 98%; border-color:#f7f6ee;">
                                <option value="" disabled selected>Region</option>
                                <option>NCR</option>
                            </select>
                            <div class="invalid-feedback">
                                Please provide a valid Region.
                            </div>
                        </div>

                        <div class="col-md-3">
                            <label for="zip" class="form-label"></label>
                            <input type="text" class="form-control" id="zip" placeholder="Postal" required="">
                            <div class="invalid-feedback">
                                Postal code required.
                            </div>
                        </div>
                    </div>

                    <hr class="my-4">

                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="same-address">
                        <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
                    </div>

                    <hr class="my-4">

                    <h4 class="mb-3">Payment</h4>

                    <div class="my-3">
                        <div class="form-check">
                            <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked="" required="">
                            <label class="form-check-label" for="credit">Credit card</label>
                        </div>
                        <div class="form-check">
                            <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required="">
                            <label class="form-check-label" for="debit">Debit card</label>
                        </div>
                        <div class="form-check">
                            <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required="">
                            <label class="form-check-label" for="paypal">PayPal</label>
                        </div>
                        <div class="form-check">
                            <input id="Gcash" name="paymentMethod" type="radio" class="form-check-input" required="">
                            <label class="form-check-label" for="Gcash">Gcash</label>
                        </div>          
                    </div>

                    <div class="row gy-3">
                        <div class="col-md-6">
                            <label for="cc-name" class="form-label"></label>
                            <input type="text" class="form-control" id="cc-name" placeholder="Name on card" required="">
                            <div class="invalid-feedback">
                                Name on card is required
                            </div>
                        </div>

                        <div class="col-md-6">
                            <label for="cc-number" class="form-label"></label>
                            <input type="text" class="form-control" id="cc-number" placeholder="Credit card number" required="">
                            <div class="invalid-feedback">
                                Credit card number is required
                            </div>
                        </div>

                        <div class="col-md-3">
                            <label for="cc-expiration" class="form-label"></label>
                            <input type="text" class="form-control" id="cc-expiration" placeholder="Expiration" required="">
                            <div class="invalid-feedback">
                                Expiration date required
                            </div>
                        </div>

                        <div class="col-md-3">
                            <label for="cc-cvv" class="form-label"></label>
                            <input type="text" class="form-control" id="cc-cvv" placeholder="CVV" required="">
                            <div class="invalid-feedback">
                                Security code required
                            </div>
                        </div>
                    </div>

                    <hr class="my-4">
                    <div class ="ButtonsPayment">
                        <button type="submit" class="btn btn-primary Login_Signup_Button" style="background-color:#f7f6ee; color:black; ">&lt; Continue Shopping</button>
                        <button type="submit" class="btn btn-primary Login_Signup_Button" style="width: 11rem;">Checkout</button>
                    </div>
                </form>
            </div>
            <div class="col-md-5 col-lg-4 order-md-last" id="PaymentCart">
                <h4 class="d-flex justify-content-between align-items-center mb-3">
                    <span>Your cart</span>
                </h4>
                <ul class="list-group mb-3">
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h6 class="my-0">Product name</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">$12</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h6 class="my-0">Second product</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">$8</span>
                    </li>
                    <li class="list-group-item d-flex justify-content-between lh-sm">
                        <div>
                            <h6 class="my-0">Third item</h6>
                            <small class="text-muted">Brief description</small>
                        </div>
                        <span class="text-muted">$5</span>
                    </li>

                    <li class="list-group-item d-flex justify-content-between">
                        <span>Total (USD)</span>
                        <strong>$20</strong>
                    </li>
                </ul>    
            </div>
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
