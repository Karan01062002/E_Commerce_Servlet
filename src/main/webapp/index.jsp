<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <style>
        body, html {
            height: 100%;
        }
        .bg-image {
            background-image: url('bg.jpg');
            background-size: cover;
            background-position: center;
        }
        .form-container {
            width: 500px;
            background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
            border-radius: 30px; /* Adjusted border radius */
            /*margin-right: 105px;*/
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }
        .mb-5{
            margin-bottom: 1rem!important;
        }
        h3{
            color:#43221D;
            font-weight: 700;
        }
        label[for="typeEmailX-2"] {
            color: black; /* Change the color to your desired color */
        }

        label[for="typePasswordX-2"] {
            color: black ; /* Change the color to your desired color */
        }
        .py-5{
            padding-top: 2rem!important;
            padding-bottom: 4rem!important;
            font-weight: 900;
        }
        .p-5{
            padding: 2rem!important;
        }
        .col-xl-5 {
            flex: 0 0 auto;
            width: 36.666667%;
            /*margin-right: 1000px;*/
            margin-top: 0px;

        }
        .form-control {
            color: black;
        }
        input{
            color: black;
        }

        .btn-lg {
            background-color: #DD946C;
            border-color: black;
            font-weight: 700;
        }

        /* Button hover effect */
        .btn-lg:hover {
            background-color: #b67853; /* Darker shade of button color on hover */
            border-color: black; /* Darker shade of button border color on hover */
        }
    </style>
</head>
<body>
<form class="vh-100 bg-image" action="login" method="POST">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card shadow-2-strong form-container">
                    <div class="card-body p-5 text-center">
                        <h3 class="mb-5">Login</h3>
                        <div class="form-outline mb-4">
                            <input type="email" id="typeEmailX-2" class="form-control form-control-lg " name="email" required>
                            <label class="form-label" for="typeEmailX-2">Email</label>
                        </div>
                        <div class="form-outline mb-4">
                            <input type="password" id="typePasswordX-2" class="form-control form-control-lg" name="password" required>
                            <label class="form-label" for="typePasswordX-2">Password</label>
                        </div>
                        <p style="color: black;">Not a User? <a href="register.jsp" style="color:cadetblue">Sign Up</a></p>
                        <% if(request.getAttribute("error")!=null){ %>
                        <p class="text-danger">Invalid credentials!</p>
                        <% } %>
                        <input class="btn btn-lg btn-block" type="submit" value="Login">
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</body>
</html>
