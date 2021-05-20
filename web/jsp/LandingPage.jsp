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

        <link rel="stylesheet" type="text/css" id="applicationStylesheet" href="jsp/style.css" />
    </head>

    <body>
        <div id="Landing_Page container-fluid flex-column justify-content-center">

            <ul id="Header" class="nav container-fluid align-items-center fixed-top m-0 p-0">
                <li class="nav-item pl-4">
                    <a class="nav-link" href="#">Products</a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="#">Reviews</a>
                </li>
                <li class="nav-item mx-auto">
                    <a class="nav-link" href="#"><img id="Luvamine-Logo-White" src="jsp/imageAssets/Luvamine-Logo-White.png"></a>
                </li>
                <li class="nav-item">
                    <button class="nav-link header_button" data-toggle="modal" data-target="#LoginModal">Login</button>
                </li>
                <li class="nav-item pr-4">
                    <button class="nav-link header_button" data-toggle="modal" data-target="#CartModal">Cart</button>
                </li>
            </ul>

            <div id="Title" class="container-fluid">
                <img id="Quote_Background" src="jsp/imageAssets/Quote_Background.png">
                <div class="flex-row align-items-center flex-nowrap">
                    <img id="Product_Sample" src="jsp/imageAssets/Parfum-Ethereal.png">

                    <div id="Title_Page" class="position-absolute">
                        <h1 id="Title_Header">Iconic scents remade<br/>for every bougie on a budget.</h1>

                        <a id="Shop_Now_Button" href="#Products">
                            <button id="Shop_Now_Button" type="button" class="btn btn-dark">SHOP NOW</button>
                        </a>
                    </div>
                </div>
            </div>

            <div id="Products" class="container-fluid p-0">

                <div class="row m-0">
                    <div class="col">
                        <h1 id="Product_Title">We believe that everyone can showcase<br/>who they are through a scent.<br/>
                            <br/>Unique, striking, yet accessible.<br/>
                            <br/>Dare to express yourself through a fragrance<br/>and let the scent do the talking.
                        </h1>
                    </div>
                    <div id="Product_col" class="col">

                        <div class="container">
                            <div class="row">
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image parfum" src="jsp/imageAssets/Parfum-Ethereal.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Ethereal</p>
                                    </button>
                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Autumn-Bloom.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Room & Linen Spray (200ml) - ₱ 300<br>Autumn Bloom</p>
                                    </button>

                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image parfum" src="jsp/imageAssets/Parfum-Autumn-Bloom.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Autumn Bloom</p>
                                    </button>

                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Amber-Wood.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Room & Linen Spray (200ml) - ₱ 300<br>Amber Wood</p>
                                    </button>

                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image parfum" src="jsp/imageAssets/Parfum-Amber-Wood.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Amber Wood</p>
                                    </button>

                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Rendezvous.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Room & Linen Spray (200ml) - ₱ 300<br>Rendezvous</p>
                                    </button>

                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image parfum" src="jsp/imageAssets/Parfum-Rendezvous.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Rendezvous</p>
                                    </button>

                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Green-Tea-Lush.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Room & Linen Spray (200ml) - ₱ 300<br>Green Tea Lush</p>
                                    </button>

                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image parfum" src="jsp/imageAssets/Parfum-Green-Tea-Lush.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Green Tea Lush</p>
                                    </button>

                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Peach-Blossom.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Room & Linen Spray (200ml) - ₱ 300<br>Peach Blossom</p>
                                    </button>

                                </div>
                            </div>
                        </div>

                        <div class="container">
                            <div class="row">
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-White-Tea-_-Sage.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Room & Linen Spray (200ml) - ₱ 300<br>White Tea & Sage</p>
                                    </button>

                                </div>
                                <div class="col product-container" align="center">
                                    <button id="Empty_Product_Container" class="bg-product product-img-container">
                                    </button>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="Quote_Break" class="container-fluid d-flex justify-content-center align-items-center">
                <h1 id="Quote" class="text-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore</h1>
            </div>

            <div class="container-fluid row m-0 p-0">
                <h1 id="Review_Title" class="col">Reviews</h1>
                <div id="Review_Right_Side" class="col">
                    <div id="Review_Container" class="row border-0">
                        <div class="col">
                            <h1>Jamielle R.</h1>
                            <h2>Reviewed on May 5, 2021</h2>
                        </div>
                        <div class="col-8">
                            <h2>About Room & Linen Spray<br>
                                No. 05 Green Tea Lush + No. 06 Peach Blossom</h2>
                            <p>"So bangoooooo huhu same na same sa Jo Malone."</p>
                        </div>

                    </div>

                    <div id="Review_Container" class="row">
                        <div class="col">
                            <h1>Jon L.</h1>
                            <h2>Reviewed on May 5, 2021</h2>
                        </div>
                        <div class="col-8">
                            <h2>About Love in Bloom<br>
                                No. 02 Autumn Bloom + No. 06 Peach Blossom</h2>
                            <p>"Thank you for the 100% customer service! Hoping for masculine scents soon!"</p>
                        </div>

                    </div>

                    <div id="Review_Container" class="row">
                        <div class="col">
                            <h1>Jim M.</h1>
                            <h2>Reviewed on May 5, 2021</h2>
                        </div>
                        <div class="col-8">
                            <h2>About Eau de Parfum | No. 04 Rendezvous</h2>
                            <p>"Tried it na! Napakapango. I super love it. Grabe! Nakuha mo trip ko."</p>
                        </div>

                    </div>
                </div>
            </div>



            <div id="Footer" class="container-fluid m-0 row">
                <ul id="About_Us" class="col">
                    <h1>About Us</h1>
                    <li>
                        <a class="" href="#"><br>Our history</a>
                    </li>
                    <li>
                        <a class="" href="#">Sourcing & Ingredients</a>
                    </li>
                    <li>
                        <a class="" href="#">Packaging philosophy</a>
                    </li>
                    <li>
                        <a class="" href="#">Customer reviews</a>
                    </li>
                    <li>
                        <a class="" href="#">Jobs</a>
                    </li>
                </ul>

                <ul id="Help" class="col">
                    <h1>Need help?</h1>
                    <li>
                        <a class="" href="#"><br>Get in touch</a>
                    </li>
                    <li>
                        <a class="" href="#">Frequently asked questions</a>
                    </li>
                    <li>
                        <a class="" href="#">Shipping and returns</a>
                    </li>
                    <li>
                        <a class="" href="#">Terms of sales</a>
                    </li>
                    <li>
                        <a class="" href="#">Privacy policy</a>
                    </li>
                </ul>

                <div class="col">
                    <h1 >Follow Luvamine on</h1>
                    <img src="jsp/imageAssets/Instagram-Logo.png">
                </div>
                <div class="col">
                    <h1 class="row">Subscribe to our Newsletter</h1>
                    <p class="row"><br>Enter your email to be notified about new arrivals, exclusive offers, and more.</p>
                    <input type="email" class="form-control row" id="Email_Input_Newsletter" placeholder="Email">
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


        </div>
    </body>

</html>