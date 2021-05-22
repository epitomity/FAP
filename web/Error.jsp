<%@page import="java.sql.ResultSet"%>

<!DOCTYPE html>

<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>

        <!-- Dependencies -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <!-- CSS -->
        <link rel="stylesheet" href="style.css">

    </head>

    <body>     
        <div class="container-fluid">
            <div class="row no-gutter">
                <div class="col-md-12 col-lg-6">
                    <div class="login d-flex align-items-center py-5">

                        <div class="container">
                            <div class="row">
                                <div class="col-md-9 col-lg-8 mx-auto">
                                    
                                    <!-- Error Message -->
                                    <h1 class="login-heading mb-4">An Error Occurred!</h1>
                                    <h6 class="text-muted f-w-400 pb-4">${errorMessage}</h6>
                                    
                                    <!-- Redirect to Log In -->
                                    <form action="LandingPage.jsp">
                                    <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Back to Home</button>
                                    </form>
                                    
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                        
                <!-- Image Right -->
                <div class="d-none d-md-flex col-lg-6 bg-image-error"></div>
                
            </div>
        </div>        
    </body>
</html>
