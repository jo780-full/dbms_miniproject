<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Delete Criminal</title>
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
  <main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs">
      <div class="page-header d-flex align-items-center" style="background-image: url('assets/img/page-header.jpg');">
        <div class="container position-relative">
          <div class="row d-flex justify-content-center">
            <div class="col-lg-6 text-center">
              <h2>Update Officer Page</h2>
              
              
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
            </div>
            <% 
            Connection con;
 PreparedStatement psd;
 ResultSet rs;
  Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/criminal_db","root","");
    try{

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
          
            <form action="UpdateOfficer.jsp" method="post">
             
              <div class="col-lg-12">
                <br>
                <h4>Officer Details</h4>
              </div>
<br>


<div class="col-md-6">

              
              <div class="col-md-12 ">
                <input type="text" class="form-control" name="police" placeholder="Police ID to Update " required>
              </div>
              <br>
              <div class="col-md-12">
                <input type="text" name="name" class="form-control" placeholder="Name" required>
                <br>
              </div>
               <div class="col-md-12">
                <input type="email" name="email" class="form-control" placeholder="Email" required>
                <br>
              </div>
               
              
              <div class="col-md-12">
                <input type="text" class="form-control" name="phone" placeholder="Phone" required>
              </div>
              <br>
              <div class="col-md-12">
                <input type="text" class="form-control" name="designation"  placeholder="Designation" required>
              </div>
              <br>
               <br>
                  <div class="col-md-12">
                    <h6>date of joining :</h6>
                    <input type="date" name="dateofjoining" class="form-control"  required>
                    <br>
                  </div>
                <div class="col-md-6">
               
                
                  <div class="col-md-12">
                    <input type="text" name="academy" class="form-control" placeholder="academy" required>
                    <br>
                  </div>
                
                  <div class="col-md-12">
                    <input type="text" name="station_name" class="form-control" placeholder="station_name" required>
                    <br>
                  </div>
                   
                  <div class="col-md-12">
                    <input type="text" name="station_ID" class="form-control" placeholder="station ID" required>
                    <br>
                  </div>
                    
                    <div class="col-md-12">
                <input type="text" name="username" class="form-control" placeholder="Username" required>
                <br>
              </div>
                  <div class="col-md-12">
                    <input type="text" name="password" class="form-control" placeholder="Password" required>
                    <br>
                  </div>
                  
                  
               
                  <button type="submit">Update Officer</button>
                </div>

              </div>
            </form>
          </div><!-- End  Complaint Form -->

        </div>

      </div>
      <%
      String email=request.getParameter("email");
      String name=request.getParameter("name");
      String police=request.getParameter("police");
      String phone=request.getParameter("phone");
      String msg=request.getParameter("designation");
      String noe=request.getParameter("dateofjoining");
      String dloc=request.getParameter("academy");
      String ppl=request.getParameter("station_ID");
      String rep=request.getParameter("station_name");
      String comp=request.getParameter("username");
      String uidm=request.getParameter("password");
  

      try{
      
       
      	String q="update officer set name=?,email=?,phone=?,designation=?,date_of_joining=?,academy=?,station_name=?,station_ID=?,username=?,password=? where pid="+police;
      	if(dloc!=null && phone!=null && msg!=null && msg!=null && noe!=null && name!=null && ppl!=null && rep!=null && uidm!=null)
      {
      	psd=con.prepareStatement(q); 
    	 psd.setString(1,name);
    		psd.setString(2,email);
    		psd.setString(3,phone);
    		psd.setString(4,msg);
    		psd.setString(5,noe);
    		psd.setString(6,dloc);
    		psd.setString(7,rep);
    		psd.setString(8,ppl);
    		psd.setString(9,comp);
    		psd.setString(10,uidm);
    		
    		
    		
    		int x=psd.executeUpdate();
    		if(x>0) out.println("<p style=' margin-top: 100px;margin-bottom: 100px;margin-right: 150px;margin-left: 80px;'><script>alert('Officer Data Added Successfully')</script></p>");
    		else if(x<0)
      	out.println("Server error");
      }
     
      }
      
      
      catch(Exception e)
      {
      	  e.printStackTrace();
      }
      %>
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

