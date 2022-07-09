<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>View Officers  Here</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/logo.jpg" rel="icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">


</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="header d-flex align-items-center fixed-top">
  <div class="container-fluid container-xl d-flex align-items-center justify-content-between">

    <a href="index.html" class="logo d-flex align-items-center">
      <!-- Uncomment the line below if you also wish to use an image logo -->
      <img src="assets/img/logo.jpg" alt=""> 
      <h1>Partners In Crime </h1>
    </a>

    <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
    <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
    <nav id="navbar" class="navbar">
      <ul>
        <li><a href="landing_page.jsp" class="active">Home</a></li>
        <li><a href="view_criminal.jsp">View Criminals</a></li>
        <li><a href="viewofficer.jsp">View Police officers</a></li>
        <li><a href="view_complaints.jsp">View Crime reports</a></li>
        <li class="dropdown"><a href="#"><span>Login</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
          <ul>
            <li><a href="admin.html">Admin</a></li>
            <li><a href="offloging.jsp">Officer</a></li>
            </ul>
        <li><a href="complaint.html">Complaint</a></li>
     
    </nav><!-- .navbar -->

  </div>
</header><!-- End Header -->
<!-- End Header -->


  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="page-header d-flex align-items-center" style="background-image: url('assets/img/page-header.jpg');">
        <div class="container position-relative">
          <div class="row d-flex justify-content-center">
            <div class="col-lg-6 text-center">
              <h2>View Officers</h2>
              <p>They will help and guide you</p>
              <form id="formb">
    <input id="search" type="text" name="search" placeholder="Search Query here....">
    
    </form>
   
    <style>
    #search{
  height:50px;
         border: none;
    background-color: transparent;
    resize: none;
    outline: none;
    
    
    }
    #formb{
    background-color:white;
    border-radius:20px;
    width:400px;
    display:flex;
    justify-contents:centre;
    margin-left:auto;
    margin-right:auto;
    }
    
    #searchb{
    background-color:white;
     border: none;
    background-color: transparent;
    resize: none;
    outline: none;
    }
    
    P{
    text-align: center;
line-height: 25px;
    
    }
   
    </style>
            </div>
          </div>
        </div>
      </div>
      <nav>
        
      </nav>
    </div><!-- End Breadcrumbs -->
    <br>
  <style>
  th{
  border:1px solid black;
  padding:10dp;
  text-align:centre;
  
  }
  td{
  border:1px solid black;
  padding:10dp;
  text-align:centre;
  
  }
  
  
  </style>
  <%
 Connection con;
 PreparedStatement psd;
 ResultSet rs;
   
    try{
 	   Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/criminal_db","root","");
	String Query = request.getParameter("search");
	String q="select * from officer where name in ('"+Query+"') or email in ('"+Query+"') or phone in ('"+Query+"') or designation in ('"+Query+"') or date_of_joining in ('"+Query+"')or academy in ('"+Query+"') or station_name in ('"+Query+"') or station_id in ('"+Query+"') or pid in ('"+Query+"')";
	psd=con.prepareStatement(q); 	   
	   rs=psd.executeQuery();
	   while(rs.next())
	   {
		   %>
		  
		 <p><strong>Officers Records</strong>
       <br>
       Name:-<%out.print(rs.getString("name"));%>
              <br>
  email:-<%out.print(rs.getString("email"));%>
  <br>
phone:-<%out.print(rs.getString("phone"));%>
<br> 
designation:-<%out.print(rs.getString("designation"));%>
<br>
Date and Time:-<%out.print(rs.getString("date_of_joining"));%>
<br>
Academy:-<%out.print(rs.getString("academy"));%>
<br>
Station Name:-<%out.print(rs.getString("station_name"));%>
<br>
Station ID:-<%out.print(rs.getString("station_ID"));%>
<br>
PID:-<%out.print(rs.getString("pid"));%>

</p>

		   
		   
		   
	   <% }
    }
    catch(Exception e)
    {
    	e.printStackTrace();
    }
    
    
    
    %>
  <table style="margin-left:auto;margin-right:auto;">

 
,<thead style="margin-left:auto;margin-right:auto;">
    <tr style="border:2px solid;text-align:center;">
 
  <th>Name</th>
  <th>Email</th>
  <th>Phone</th>
  <th>Designation</th>
  <th>Date of Joining</th>
  <th>Academy</th> 
  <th>Station Name</th>
  <th>Station ID</th>
  <th>PID</th>
 
</tr>
</thead>
<tbody>
  
  </thead>
 
  <tr>
   <% 
  try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		//change name of db stored
		Connection connection = DriverManager.getConnection("jdbc:mysql://localhost/criminal_db","root","");
		
		Statement statement=connection.createStatement();

	  String sql="select  * from officer";
	  rs=statement.executeQuery(sql);
	  while(rs.next())
	  {
		  
  %>
  <td><%out.print(rs.getString("name"));%></td>
  <td><%out.print(rs.getString("email"));%></td>
<td><%out.print(rs.getString("phone"));%></td> 
<td><%out.print(rs.getString("designation"));%></td>
<td><%out.print(rs.getString("date_of_joining"));%></td> 
<td><%out.print(rs.getString("academy"));%></td>
<td><%out.print(rs.getString("station_name"));%></td>
<td><%out.print(rs.getString("station_ID"));%></td>
<td><%out.print(rs.getString("pid"));%></td>

  </tr>
  <% }
	  }
  catch(Exception e)
  {
	  e.printStackTrace();
  }
	  %>
</tbody>
  </table>

  </main><!-- End #main -->
<br>
<br>
  <!-- ======= Footer ======= -->
 <footer id="footer" class="footer">


      

  

    <div class="container mt-4">
    <div class="copyright">
      &copy; Copyright <strong><span>Partners in crime</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
     
    </div>
    </div>
    
    </footer><!-- End Footer -->
    <!-- End Footer -->
    
    <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
    
    <div id="preloader"></div>
    
    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    
    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
 
    
    </body>
    
    </html>
     