<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
                            <a class="dropdown-item" href="Logout">Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <%!
            int userid;
            String id;
        %>
        <%id = request.getParameter("id");
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            String user = "root";
            String password = "Anuradha123";
            String url = "jdbc:mysql://localhost:3306/user?autoReconnect=true&useSSL=false&allowPublicKeyRetrieval=true";
            Connection connect = DriverManager.getConnection(url,user,password);
                Statement s1 = connect.createStatement();
                String query = "select * from accused_details where accused_id=" + id;
                ResultSet rs = s1.executeQuery(query);
                while (rs.next()) {
        %>
        <p class="h1" style="text-indent:100px; margin-top:50px; margin-bottom:50px;">Accused Details</p>
        <table class="table">
            <tr>
                <th>Name</th>
                <td><%=rs.getString("accused_name")%></td>
            </tr>
            <tr>
                <th>Phone No</th>
                <td><%=rs.getString("accused_phoneno")%></td>
            </tr>
            <tr>
                <th>Type of Crime</th>
                <td><%=rs.getString("type_of_crime")%></td>
            </tr> 
            <tr>
                <th>Location of Crime</th>
                <td><%=rs.getString("loc_of_crime")%></td>
            </tr> 
            <tr>
                <th>Date of Crime</th>
                <td><%=rs.getDate("date_of_crime")%></td>
            </tr> 
            <tr>
                <th>Incident Description</th>
                <td><%=rs.getString("crime_incident_desc")%></td>
            </tr> 
        </table>

        <%
                userid = (int) rs.getInt("user_id");
            } %> 
        <%
            query = "select * from user_details where user_id=" + userid;
            rs = s1.executeQuery(query);
            while (rs.next()) {
        %>
        <p class="h1" style="text-indent:100px; margin-top:50px; margin-bottom:50px;">User Details</p>
        <table class="table">
            <tr>
                <th>Name</th>
                <td><%=rs.getString("uname")%></td>
            </tr>
            <tr>
                <th>Phone No.</th>
                <td><%=rs.getString("phno")%></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><%=rs.getString("email")%></td>
            </tr>
            <tr>
                <th>Address</th>
                <td><%=rs.getString("address")%></td>
            </tr>
        </table>
        <%}%>
        <div class="container-fluid">
            <div class="row justify-content-center">
                <form class="form-container" action="CompAction?id=<%=id%>" method="post">
                    <div class="mb-3">
                        <label for="comp">Action:</label>
                        <select class="form-select form-select-lg mb-3" id="comp" name="action">
                            <option>None</option>
                            <option>Verified</option>
                            <option>Investigating</option>
                            <option>Resolved</option>
                        </select>
                    </div>
                    <button class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
        <%
                rs.close();
                s1.close();
                connect.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        %>
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
