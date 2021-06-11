<%-- 
    Document   : trackCrime.jsp
    Created on : May 26, 2021, 7:48:21 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="tablecss.css">
    <title>Online Crime Reporting</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Online Crime Reporting Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="/CrimeReportingPortal/HomePage.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Crime News</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="/CrimeReportingPortal/user.jsp">User Portal<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/CrimeReportingPortal/adminPortal.jsp">Admin Portal</a>
            </li>
          </ul>
            <ul class="navbar-nav ml-auto">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarScrollingDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <%=session.getAttribute("Email")%>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarScrollingDropdown">
                            <!--<a class="dropdown-item" href="#">Edit details</a>-->
                            <a class="dropdown-item" href="Logout">Logout</a>
                        </div>
                    </li>
            </ul>
        </div>
      </nav>
     <br>
     <br>
     <br>
                            <%
                                ResultSet resultset = null;
                                Connection con = null;
                                try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String user = "root";
            String password = "Anuradha123";
            String url = "jdbc:mysql://localhost:3306/user?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true";
            con = DriverManager.getConnection(url,user,password);
            String q = "select * from accused_details where user_id = ? order by accused_id desc"; 
            PreparedStatement ps = con.prepareStatement(q);
            ps.setInt(1, (int)session.getAttribute("user_id"));
            resultset = ps.executeQuery();
                                }
                                catch(Exception e){
                                    e.printStackTrace();
                                }
                            %>
        
      <TABLE BORDER="1">
      <TR class="he">
      <TH>Crime ID</TH>
      <TH>Accused Person</TH>
      <TH>Type of Crime</TH>
      <TH>Location of Crime</TH>
      <TH>Date of Crime</TH>
      <TH>Crime Incident Description</TH>
      <TH>Status</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR class="he2">
          <TD> <%= resultset.getInt("accused_id") %></td>
       <TD> <%= resultset.getString("accused_name") %></TD>
       <TD> <%= resultset.getString("type_of_crime") %></TD>
       <TD> <%= resultset.getString("loc_of_crime") %></TD>
       <TD> <%= resultset.getDate("date_of_crime") %></TD>
       <TD> <%= resultset.getString("crime_incident_desc") %></TD>
       <TD><%= resultset.getString("status") %></TD>
      </TR>
      <% } %>
     </TABLE> 
     <br>
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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>
    </html>
