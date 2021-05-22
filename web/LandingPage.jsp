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
    </head>

    <body>
        <div id="Landing_Page container-fluid flex-column justify-content-center">

            <ul id="Header" class="nav container-fluid align-items-center fixed-top m-0 p-0">
                <div id="Header_Left" class="row">
                    <li class="nav-item">
                        <a class="nav-link " href="#Products">Products</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#Reviews">Reviews</a>
                    </li>
                </div>

                <li class="nav-item mx-auto">
                    <a class="nav-link" href="#"><img id="Luvamine-Logo-White" src="imageAssets/Luvamine-Logo-White.png"></a>
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

            <div id="Title" class="container-fluid">
                <img id="Quote_Background" src="imageAssets/Quote_Background.png">
                <div id="Title_Container" class="row align-items-center m-0">
                    
                    <div class="col-12 col-lg text-center">
                        <img id="Product_Sample" src="imageAssets/Parfum-Ethereal.png">
                    </div>

                    <div id="Title_Page" class="col-12 col-lg">
                        <h1 id="Title_Header">Iconic scents remade<br/>for every bougie on a budget.</h1>

                        <a id="Shop_Now_Button" href="#Products">
                            <button id="Shop_Now_Button" type="button" class="btn btn-dark">SHOP NOW</button>
                        </a>
                    </div>
                </div>
            </div>

            <div id="Products" class="container-fluid p-0">

                <div class="row m-0">
                    <div class="col-12 col-md">
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
                                        <img class="Product_Image parfum" src="imageAssets/Parfum-Ethereal.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Ethereal</p>
                                    </button>
                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="imageAssets/Room-Spray-Autumn-Bloom.png">
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
                                        <img class="Product_Image parfum" src="imageAssets/Parfum-Autumn-Bloom.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Autumn Bloom</p>
                                    </button>

                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="imageAssets/Room-Spray-Amber-Wood.png">
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
                                        <img class="Product_Image parfum" src="imageAssets/Parfum-Amber-Wood.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Amber Wood</p>
                                    </button>

                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="imageAssets/Room-Spray-Rendezvous.png">
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
                                        <img class="Product_Image parfum" src="imageAssets/Parfum-Rendezvous.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Rendezvous</p>
                                    </button>

                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="imageAssets/Room-Spray-Green-Tea-Lush.png">
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
                                        <img class="Product_Image parfum" src="imageAssets/Parfum-Green-Tea-Lush.png">
                                        <div class="overlay"></div>
                                        <p id="Add_to_Cart">Add to Cart</p>
                                        <p class="text-left product-description">Eau De Parfum (60ml) - ₱ 350<br>Green Tea Lush</p>
                                    </button>

                                </div>
                                <div class="col product-container" align="center">
                                    <button class="bg-product product-img-container">
                                        <img class="Product_Image room-spray" src="imageAssets/Room-Spray-Peach-Blossom.png">
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
                                        <img class="Product_Image room-spray" src="imageAssets/Room-Spray-White-Tea-_-Sage.png">
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

            <div id="Reviews" class="container-fluid row m-0 p-0">
                <h1 id="Review_Title" class="col-12 col-lg">Reviews</h1>
                <div id="Review_Right_Side" class="col">
                    <div id="Review_Container" class="row border-0">
                        <div class="col">
                            <h1>Jamielle R.</h1>
                            <h2>Reviewed on May 5, 2021</h2>
                        </div>
                        <div class="col">
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
                        <div class="col">
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
                        <div class="col">
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
                        <a class="" href="#">Our history</a>
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
                        <a class="" href="#">Get in touch</a>
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
                    <a href="https://www.instagram.com/luvamine_/"><img src="imageAssets/Instagram-Logo.png"></a>
                </div>
                <div class="col">
                    <h1>Subscribe to our Newsletter</h1>
                    <p><br>Enter your email to be notified about new arrivals, exclusive offers, and more.</p>
                    <input type="email" class="form-control" id="Email_Input_Newsletter" placeholder="Email">
                </div>
            </div>

            <div id="Footer_Small" class="container-fluid m-0">

                <button data-toggle="collapse" data-target="#About_Us_Small" id="About_Us_Collapsible"><h1>About Us&nbsp<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                        <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
                        </svg></h1></button>
                <ul id="About_Us_Small" class="collapse">
                    <li>
                        <a class="" href="#">Our history</a>
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

                <button data-toggle="collapse" data-target="#Help_Small" id="Help_Collapsible"><h1>Need help?&nbsp<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                        <path d="M7.247 11.14 2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"/>
                        </svg></h1></button>
                <ul id="Help_Small" class="collapse">

                    <li>
                        <a class="" href="#">Get in touch</a>
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

                <div>
                    <h1 >Follow Luvamine on</h1>
                    <a href="https://www.instagram.com/luvamine_/"><img src="imageAssets/Instagram-Logo.png"></a>
                </div>
                <div>
                    <h1>Subscribe to our Newsletter</h1>
                    <p>Enter your email to be notified about new arrivals, exclusive offers, and more.</p>
                    <input type="email" class="form-control" id="Email_Input_Newsletter" placeholder="Email">
                </div>
            </div>

            <div>
                <!-- Login Modal -->
                <div class="modal right fade" id="LoginModal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-body">
                                <h1 class="text-center LoginSignUpHeader">Login</h1>
                                <form action="LoginServlet" method="post" id="login-form">
                                    <div class="form-group">
                                        <label for="Username_Input_Login">Email</label>
                                        <input type="text" class="form-control" name="username" id="Username_Input_Login">
                                    </div>
                                    <div class="form-group">
                                        <label for="Password_Input_Login">Password</label>
                                        <input type="password" class="form-control" name="password" id="Password_Input_Login">
                                    </div>
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
                                <form action="SignupServlet" method="post">
                                    <div class="form-group">
                                        <label for="Username_Input_Signup">Username</label>
                                        <input type="text" class="form-control" id="Username_Input_Signup" name="username">
                                    </div>
                                    <div class="form-group">
                                        <label for="Email_Input_Signup">Email</label>
                                        <input type="email" class="form-control" id="Email_Input_Signup"name="email">
                                    </div>
                                    <div class="form-group">
                                        <label for="Password_Input_Signup">Password</label>
                                        <input type="text" class="form-control" id="Password_Input_Signup"name="password">
                                    </div>
                                    <div class="form-group">
                                        <label for="ConfirmPassword_Signup">Confirm Password</label>
                                        <input type="text" class="form-control" id="ConfirmPassword_Signup"name="repeatpassword">
                                    </div>
                                     <!-- Captcha -->
                                    <div class="d-flex justify-content-center mt-2">
                                            <img src="/FAP/captchaImg" class="rounded mr-2" />
                                            <div class="form-label-group">
                                            </div>
                                        </div>
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="Captcha_Signup" style="margin-top:1rem;" name="answer" placeholder="What is being shown above?">
                                    </div>
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