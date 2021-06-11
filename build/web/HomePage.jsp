<%-- 
    Document   : HomePage.jsp
    Created on : Apr 22, 2021, 6:22:25 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="style.css">
    <title>Online Crime Reporting</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">Online Crime Reporting Portal</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/CrimeReportingPortal/HomePage.jsp">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/CrimeReportingPortal/News.jsp">Crime News</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">User Portal</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/CrimeReportingPortal/adminPortal.jsp">Admin Portal</a>
          </li>
        </ul>
        <div class = "mx-2">
          <button class="btn btn-warning" data-toggle="modal" data-target="#LoginModal">Login</button>
          <button class="btn btn-warning" data-toggle="modal" data-target="#SignUpModal">SignUp</button>
        </div>
      </div>
    </nav>

<!-- Login -->
        <div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="LoginModalLabel">Login to Our Portal</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="LoginVer" method="post">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" name="email" required>
                        </div>
                        <div class="mb-3">
                            <label for="inputPassword2" class="visually-hidden">Password</label>
                            <input type="password" class="form-control" placeholder="Password" name="pass1" required>
                        </div>
                        <button class="btn btn-outline-primary">Login</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- SignUp -->
        <div class="modal fade" id="SignUpModal" tabindex="-1" role="dialog" aria-labelledby="SignUpModalLabel"
             aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="SignUpModalLabel">SignUp to our Portal</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="NewRegister" method="post" oninput='pass2.setCustomValidity(pass2.value != pass1.value ? "Passwords do not match." : "")'>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Enter Your Name</label>
                                <input type="text" class="form-control" id="exampleFormControlInput1" name="uname" required>
                                <div class="invalid-feedback">
                                Please enter your name
                                </div>
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Phone Number</label>
                                <input type="text" class="form-control" id="exampleFormControlInput1" name="phno" required>
                            </div>
                            <div class="form-group">
                                <label for="exampleFormControlTextarea1">Address</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="address" required></textarea>
                            </div>
                            <div class="mb-3">
                                <label for="exampleFormControlInput1" class="form-label">Email address</label>
                                <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com" name="email" required>
                            </div>
                            <div class="mb-3">
                                <label for="inputPassword2" class="visually-hidden">Password</label>
                                <input type="password" class="form-control" name="pass1" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" required>
                            </div>
                            <div class="mb-3">
                                <label for="inputPassword3" class="visually-hidden">Confirm Password</label>
                                <input type="password" class="form-control" name="pass2" required>
                            </div>
                            <button class="btn btn-outline-primary" type="submit">Create Account</button>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <br>

<div class="container">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="d-block w-100" src="Crime Reporting/Crimee2.webp" alt="First slide" width="300" height="400">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="Crime Reporting/Crimee1.webp" alt="Second slide" width="300" height="400">
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="Crime Reporting/Crimee5.webp" alt="Third slide" width="300" height="400">
          </div>  
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>
    <br>
    <div class="container s1">
        <br>
        <h1 class="s2"><strong>Welcome to Online Crime Reporting Portal</strong></h1>
        <hr>
        <p class="s2"><i>Register complains about any mishap, online easily</i></p>
        <div class="row">
            <div class="col-sm">
              <img style= "width: 80%; height: 60%" src="Crime Reporting/eye.png" alt="">
              <br>
              <br>
              <h3 class="s3">Witness Crime</h3>
            </div>
            <div class="col-sm">
              <img style= "width: 60%; height: 60%"  src="Crime Reporting/pencil.png" alt="">
              <br>
              <br>
              <h3>Report About it</h3>
            </div>
            <div class="col-sm">
              <img style= "width: 80%; height: 60%" src="Crime Reporting/hands.png" alt=""> 
              <br>
              <br>
              <h3>And we will take action</h3>
            </div>
          </div>
    </div>
        <!-- Footer -->
        <br>  
<footer class="footer bg-dark" style="background-color:black;color:white;">

  <!-- Footer Links -->
  <div class="container text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 mr-auto my-md-4 my-0 mt-4 mb-1">

        <!-- Content -->
        <h5 class="font-weight-bold text-uppercase mb-4">About Us</h5>
        <p>Online Crime Portal is a web based program using which people are able to report 
            crime online, track it's status and can view the crime related news as well.</p>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none">

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 mx-auto my-md-4 my-0 mt-4 mb-1">

        <!-- Links -->
        <h5 class="font-weight-bold text-uppercase mb-4">About</h5>

        <ul class="list-unstyled">
            <li>
            <p>
              <a href="/CrimeReportingPortal/HomePage.jsp">Home</a>
            </p>
          </li>
          <li>
            <p>
              <a href="/CrimeReportingPortal/liveNews.jsp">News</a>
            </p>
          </li>
          <li>
            <p>
              <a href="/CrimeReportingPortal/reportCrime.jsp">Report Crime</a>
            </p>
          </li>
          <li>
            <p>
              <a href="#!">Track Crime</a>
            </p>
          </li>
        </ul>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none">

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">

        <!-- Contact details -->
        <h5 class="font-weight-bold text-uppercase mb-4">Address</h5>

        <ul class="list-unstyled">
          <li>
            <p>
              <i class="fa fa-home mr-3"></i>Ludhiana, Punjab</p>
          </li>
          <li>
            <p>
              <i class="fa fa-envelope mr-3"></i>crime.report@gmail.com</p>
          </li>
          <li>
            <p>
              <i class="fa fa-phone mr-3"></i>+91 7901880808</p>
          </li>
          <li>
            <p>
              <i class="fa fa-print mr-3"></i>+91 8360777018</p>
          </li>
        </ul>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none">
      
      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 text-center mx-auto my-4">

        <!-- Social buttons -->
        <h5 class="font-weight-bold text-uppercase mb-4">Follow Us</h5>
        <!-- Facebook -->
        <a href="https://www.facebook.com/" type="button" class="btn-floating btn-fb">
          <i class="fa fa-facebook-f"></i>
        </a>
        <!-- Twitter -->
        <br>
        <br>
        <a href="https://twitter.com/" type="button" class="btn-floating btn-tw">
          <i class="fa fa-twitter"></i>
        </a>
        <br>
        <br>
        <!-- Dribbble -->
        <a href="http://www.dribble.com/" type="button" class="btn-floating btn-dribbble">
          <i class="fa fa-dribbble"></i>
        </a>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2021 Copyright:
    <a href="#"> Online Crime Reporting Portal</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
   
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
