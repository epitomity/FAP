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

        <div id="Profile" class="container-fluid flex-column justify-content-center">

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

        <div id="Profile_Header" class="row align-items-center">

            <div id="Profile_Name_Role" class="col-12 col-sm-10">
                <h1>Full Name of Customer</h1>
                <h2>Role</h2>
            </div>

            <div class="col-12 col-sm-2 text-center">
                <button id="Sign_Out_Button" type="button" class="btn btn-dark">Sign Out</button>
            </div>

        </div>

        <div id="Profile_Body" class="row">

            <div id="Payment_Details" class="col-12 col-md-9">

                <h1>Payment Details</h1>
                <h2>Contact Information</h2>
                <p>Email: jamiellevelasquez@gmail.com</p>
                <h2>Shipping Information</h2>

                <div class="row">

                    <div class="col">

                        <p>First Name: Jamielle</p>
                        <p>Company: University of Santo Tomas</p>
                        <p>Address: Cedar Crest, Acacia Estates</p>
                        <p>Postal Code: 1631</p>
                        <p>Region Metro Manila</p>

                    </div>

                    <div class="col">
                        <p>Last Name: Velasquez</p>
                        <p>Appartment Number: 221 Hawthron bldg.</p>
                        <p> City Taguig</p>
                        <p> Country: Philippines</p>

                    </div>

                </div>
            </div>


            <div id="PDF_Download_Container"class="col-12 col-md-3">

                <div class="pdf-download">
                    <h1>Inventory PDF</h1>
                    <button id="Inventory_PDF" type="button" class="btn btn-dark">Download</button>
                </div>

                <div class="pdf-download">
                    <h1>User Database PDF</h1>
                    <button id="UserDB_PDF" type="button" class="btn btn-dark">Download</button>
                </div>

            </div>
        </div>


    </body>
</html>