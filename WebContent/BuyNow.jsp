<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Cogito Art Gallery</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/C (1).png" rel="icon">
  <link href="assets/img/C (1).png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

  <!--Header-->
  <header id="header" class="d-flex align-items-center">
    <div class="container">

      <!-- The main logo is shown in mobile version only. The centered nav-logo in nav menu is displayed in desktop view  -->
      <div class="logo d-block d-lg-none">
        <a href="index.html"><img src="assets/img/Logos/CAG Logo - Black (without name).png" alt="" class="img-fluid"></a>
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul class="nav-inner">
          <li class="nav-logo"><a href="index.html"><img src="assets/img/Logos/CAG Logo - Black (without name).png" alt="" class="img-fluid" width="100px"></a></li>

          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="./#about">About Us</a></li>
          
          <li><a href="Artists.html">Artists</a></li>
          <li><a href="Events.html">Events</a></li>
          <li><a href="FAQs.html" style="text-transform: capitalize;">FAQs</a></li>
          <li><a href="contact.html">Contact Us</a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

  <main id="main" style="padding-top: 40px; padding-bottom: 40px;">
    
    <div class="container">
      <div class="row">
    
      <!--==================LEFT SIDE OF THE PAGE===================-->
      <div class="col-sm-8" style="text-align: center;">

        <div class="portfolio-details-container">

          <div class="owl-carousel portfolio-details-carousel">
            <img src="<%=request.getParameter("imageUrl") %>" class="img-fluid" alt="">
            <!-- <img src="assets/images/artistamitsaha/Art Decor.png" class="img-fluid" alt=""> -->
          </div>
        </div><br>

      </div>
      

      <!--==================RIGHT SIDE OF THE PAGE===================-->
      <div class="col-sm-4" style="padding-bottom: 30px;">
    
          <h2 style="padding-top: 10px;"><%=request.getParameter("artName") %></h2>
          <strong>Artist</strong>: <%=request.getParameter("artistName") %>
          <hr>
          <h2 style="margin-bottom: 20px;"><strong>Price</strong>: <%=request.getParameter("price") %></h2>
          
          <form method="POST" action="Acquire.jsp" style="text-align: center;">
              <input type="hidden" name="price" value="<%=request.getParameter("price") %>">
              <input type="hidden" name="artName" value="<%=request.getParameter("artName") %>">
              <input type="hidden" name="artistName" value="<%=request.getParameter("artistName") %>">
              <input type="hidden" name="imageUrl" value="<%=request.getParameter("imageUrl") %>">
              
              <input type="submit" class="btn btn-lg" style="width: 100%; color: black; background-color: #ff9703; margin-bottom: 0px" value="Acquire this artwork">
            </form><br>
          
          
          <!-- <a class="btn btn-lg" style="width: 100%; color: antiquewhite; background-color: darkslategray; margin-bottom: 0px">Acquire</a><br><br> -->
          <form method="POST" action="Acquire.jsp" style="text-align: center;">
              <input type="hidden" name="price" value="<%=request.getParameter("price") %>">
              <input type="hidden" name="artName" value="<%=request.getParameter("artName") %>">
              <input type="hidden" name="artistName" value="<%=request.getParameter("artistName") %>">
              <input type="hidden" name="imageUrl" value="<%=request.getParameter("imageUrl") %>">
              
              <input type="submit" class="btn btn-lg" style="width: 100%; color: black; background-color: #1392f7; margin-bottom: 0px" value="Make us an Offer">
            </form>
          
          
          <hr>
          
          <h6><strong>Year - </strong><%=request.getParameter("date") %></h6>
          <h6><strong>Medium - </strong><%=request.getParameter("medium") %></h6>
          <h6><strong>Dimensions - </strong><%=request.getParameter("dimensions") %></h6>
            
			<hr>
          
          <div class="row">
            <div class="col-6" style="text-align: center;">
              <img src="assets/icons/shipping.png" style="width: 50px; margin: 10px;" alt=""><br>
              <strong>Shipping usually within 7 days only in Delhi NCR</strong><br><br>
            </div>
            <div class="col-6" style="text-align: center;">
              <img src="assets/icons/contract.png" style="width: 50px; margin: 10px;" alt=""><br>
              <strong>Original work delivered with a certificate of authenticity.</strong>
            </div>
            
        </div>
      
      </div>
      
      <div class="col-sm-8" style="text-align: center;">
        
        <h1 style="text-align: left;">About the Art</h1>
        <hr>
        <p style="text-align: left;"><%=request.getParameter("aboutArt") %></p>

      </div>

      </div>

    </div>
  </main>
  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">

      <div class="container">

        <div class="row justify-content-center">
          <div class="col-lg-6">
            <a href="#header" class="scrollto footer-logo"><img src="assets/img/Logos/CAG Logo - White.png"  alt=""></a>
            <!-- <h3>Cogito Art Gallery</h3> -->
            <p>Follow us on :-</p>
          </div>
        </div>

        <!-- <div class="row footer-newsletter justify-content-center">
          <div class="col-lg-6">
            <form action="" method="post">
              <input type="email" name="email" placeholder="Enter your Email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div> -->

        <div class="social-links">
          <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
          <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
          <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
          <a href="#" class="google-plus"><i class="bx bxl-pinterest"></i></a>
          <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>

      </div>
    </div>

  </footer>
  <!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>