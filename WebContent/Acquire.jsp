<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Contact Us</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
 <link href="assets/img/Logos/CAG Logo - Black (without name).png" rel="icon">
  <link href="assets/img/Logos/CAG Logo - Black (without name).png" rel="apple-touch-icon">

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

    <main id="main">
    <section id="contact" class="contact section-bg">
        <div class="container">
  
          <div class="section-title">
            <h2>Acquire this Artwork</h2>
            <p>Please fill the form and our executives will get in touch with you shortly</p>
          </div>
  
          <div class="row">
  
            <div class="col-lg-6">
              <div class="info d-flex flex-column justify-content-center" data-aos="fade-right">
                
                <img style="width: 100%;" src="<%=request.getParameter("imageUrl") %>" alt=""><br>
                <h5><strong>Art Name - </strong><%=request.getParameter("artName") %></h5>
                <h5><strong>Artist Name - </strong><%=request.getParameter("artistName") %></h5>
                <h5><strong>Price - </strong><%=request.getParameter("price") %> INR</h5>
  
              </div>
  
            </div>
  
            <div class="col-lg-6 mt-5 mt-lg-0">

              
  
              <form action="AcquireArtworkMail" method="post" data-aos="fade-left">
                <br><br>
                
                  <div class="form-group">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Name" required/>
                    
                  </div>
                  <div class="form-group">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Email" required/>
                    
                  </div>
                
                <div class="form-group">
                  <input type="text" class="form-control" name="number" id="number" placeholder="Contact Number" required/>
                  
                </div>
                <div class="form-group">
                   <input type="text" class="form-control" name="address" id="address" placeholder="Complete Address" required/>
                  
                </div>
                
                <input type="hidden" name="artName" value="<%=request.getParameter("artName") %>">
                <input type="hidden" name="artistName" value="<%=request.getParameter("artistName") %>">
                
                <div class="text-center"><input type="submit" value="Send Message"/></div>
              </form>
  
            </div>
  
          </div>
  
        </div>
      </section>
    </main>


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