<!DOCTYPE html>
<html>

<head>
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

        <ul id="Header" class="nav container-fluid align-items-center fixed-top">
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

        <div id="Products" class="container-fluid">

            <div class="row">
                <div class="col">
                    <h1 id="Product_Title">We believe that everyone can showcase<br/>who they are through a scent.<br/>
                        <br/>Unique, striking, yet accessible.<br/>
                        <br/>Dare to express yourself through a fragrance<br/>and let the scent do the talking.
                    </h1>
                </div>
                <div id="Product_col" class="col">

                    <div class="container">
                        <div class="row">
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image parfum" src="jsp/imageAssets/Parfum-Ethereal.png">
                                    <div class="overlay"></div>
                                    <p class="text-left product-description">Eau De Parfum (60ml) - ? 350<br>Ethereal</p>
                                </div>
                            </div>
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Autumn-Bloom.png">
                                    <p class="text-left product-description">Room & Linen Spray (200ml) - ? 300<br>Autumn Bloom</p>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image parfum" src="jsp/imageAssets/Parfum-Autumn-Bloom.png">
                                    <p class="text-left product-description">Eau De Parfum (60ml) - ? 350<br>Autumn Bloom</p>
                                </div>

                            </div>
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Amber-Wood.png">
                                    <p class="text-left product-description">Room & Linen Spray (200ml) - ? 300<br>Amber Wood</p>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image parfum" src="jsp/imageAssets/Parfum-Amber-Wood.png">
                                    <p class="text-left product-description">Eau De Parfum (60ml) - ? 350<br>Amber Wood</p>
                                </div>

                            </div>
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Rendezvous.png">
                                    <p class="text-left product-description">Room & Linen Spray (200ml) - ? 300<br>Rendezvous</p>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image parfum" src="jsp/imageAssets/Room-Spray-Rendezvous.png">
                                    <p class="text-left product-description">Eau De Parfum (60ml) - ? 350<br>Rendezvous</p>
                                </div>

                            </div>
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Green-Tea-Lush.png">
                                    <p class="text-left product-description">Room & Linen Spray (200ml) - ? 300<br>Green Tea Lush</p>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image parfum" src="jsp/imageAssets/Parfum-Green-Tea-Lush.png">
                                    <p class="text-left product-description">Eau De Parfum (60ml) - ? 350<br>Green Tea Lush</p>
                                </div>

                            </div>
                            <div id="Product_container" class="col" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-Peach-Blossom.png">
                                    <p class="text-left product-description">Room & Linen Spray (200ml) - ? 300<br>Peach Blossom</p>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div id="Product_container" class="col-6" align="center">
                                <div class="bg-product product-img-container">
                                    <img class="Product_Image room-spray" src="jsp/imageAssets/Room-Spray-White-Tea-_-Sage.png">
                                    <p class="text-left product-description">Room & Linen Spray (200ml) - ? 300<br>White Tea & Sage</p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="Quote_Break" class="container-fluid">

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