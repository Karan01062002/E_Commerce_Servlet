<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign in</title>
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
    .card {
      background-color: rgba(255, 255, 255, 0.8);
      border-radius: 30px;
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }
    .p-5 {
      padding: 2rem !important;
    }
    .form-outline input.form-control:focus {
      border-color: #80bdff;
      box-shadow: 0 0 0 0.25rem rgba(0, 123, 255, 0.25);
    }
    .btn-success {
      background-color: #28a745;
      border-color: #28a745;
    }
    .btn-success:hover {
      background-color: #218838;
      border-color: #1e7e34;
    }
    .email-label {
      color: black;
      font-weight: 900;
    }
    .password-label {
      color: black;
      font-weight: 900;
    }
    .custom-btn {
      background-color: #DD946C;
    }

    .custom-btn:hover {
      background-color: #FF8C6A;
      border-color: #FF8C6A;
    }

    .col-xl-5 {
      margin-bottom: 50px;
      margin-left: 80px;
    }
  </style>
</head>
<body>
<form class="vh-100 bg-image" action="register" method="POST">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong">
          <div class="card-body p-5 text-center">
            <h3 class="mb-5">Sign in</h3>
            <div class="form-outline mb-4">
              <input type="email" id="typeEmailX-2" class="form-control form-control-lg" name="email"/>
              <label class="form-label email-label" for="typeEmailX-2">Email</label>
            </div>
            <div class="form-outline mb-4">
              <input type="password" id="typePasswordX-2" class="form-control form-control-lg" name="password"/>
              <label class="form-label password-label" for="typePasswordX-2">Password</label>
            </div>
            <input class="btn btn-lg btn-block custom-btn" type="submit" value="Register Now"/>
          </div>
        </div>
      </div>
    </div>
  </div>
</form>
</body>
</html>
