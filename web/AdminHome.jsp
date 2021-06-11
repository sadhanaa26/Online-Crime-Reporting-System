<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Online Crime Reporting</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Online Crime Reporting Portal</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/CrimeReportingPortal/UserWelcome.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/CrimeReportingPortal/News.jsp">Crime News</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="/CrimeReportingPortal/AdminHome.jsp">Admin Portal</a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%=session.getAttribute("Admin")%>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                            <!--<a class="dropdown-item" href="#">Edit details</a>-->
                            <a class="dropdown-item" href="Logout">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
        <div>
            <p class="h1" style="text-indent:100px; margin-top:50px; margin-bottom:50px;">Hello <%=session.getAttribute("Admin")%>!</p>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-3 text-center">
                    <a href="AddAdmin.jsp">
                        <img width="256" height="256" src="Crime Reporting/adduser.png">
                        <p class="h4 text-dark" style="margin-top:25px;">Add Admin</p>
                    </a>
                </div>
                <div class="col-3 text-center">
                    <a href="ViewComplaint.jsp?show=All">
                        <img width="256" height="256" src="Crime Reporting/complaint.png">
                        <p class="h4 text-dark" style="margin-top:25px;">View Complaints</p>
                    </a>
                </div>
                <div class="col-3 text-center">
                    <a href="AddNews.jsp">
                        <img width="256" height="256" src="Crime Reporting/addnews.png">
                        <p class="h4 text-dark" style="margin-top:25px;">Add News</p>
                    </a>
                </div>
                <div class="col-3 text-center">
                    <a href="AdminPassChange.jsp">
                        <img width="256" height="256" src="Crime Reporting/passchange.png">
                        <p class="h4 text-dark" style="margin-top:25px;">Change Password</p>
                    </a>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
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
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    </body>
</html>
