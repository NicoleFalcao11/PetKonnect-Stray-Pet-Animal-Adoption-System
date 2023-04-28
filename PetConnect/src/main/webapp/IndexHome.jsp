<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home-PetKonnect</title>

<head>
<title>Welcome To PetKonnect</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
<link rel="stylesheet" type="text/css" href="css/HomeDemo.css">



    <!-- Fontawesome CDN Link -->
    
	
	
	
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="Includes/Header.jsp" %>
</head>
<body>
<div class="bgimg">

   <nav class="navbar navbar-expand-lg navbar-light bg-light ">
  <a class="navbar-brand text-dark fontsize-500" href="#"><h1>PetKonnect</h1><p style="color:green">Don't Shop|Just Adopt</p></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto ">
      <li class="nav-item active">
        <a class="nav-link text-dark" href="PetShop.jsp">Explore<span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link text-dark" href="Bag.jsp">Bag</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-dark" href="Contact.jsp">Contact</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-dark" href="About.jsp">About</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Profile
        </a>
        <div class="dropdown-menu " aria-labelledby="navbarDropdown">
          <a class="dropdown-item " href="NewFile1.jsp">Log In</a>
          <!--  <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="">My Account</a>-->
        </div>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0 text-dark" type="submit">Search</button>
    </form>
  </div>
  </nav>
  <div class="container text-center text-white hearderset">
  <h1>Welcome To PetKonnect</h1>
  <h2>JOIN THE CAUSE BY ADOPTING  A STRAY ANIMAL INSTEAD OF BUYING ONE, SUPPORT STRAY PET ADOPTION</h2>
  <button class="btn btn-dark text-white btn-lg" onclick="window.location.href='login1.jsp';" >START EXPLORING ANIMALS</button>
  </div >
  </div>
  
  
  <section class="container ourservices text-center">
  <h1 font-bold>OUR FEATURES</h1>
  <p>Finding Strays a warm home and people a lifelong friend</p>
  
  <div class="row rowsetting">
          <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
           <div class="imgsetting d-block m-auto bg-success"> <i class="fa fa-search fa-3x" aria-hidden="true"></i>
           </div>
           <h2>Easy Search</h2>
           <p>Press 'Explore' to Search for available Stray animals especially dogs around your vicinity .Choose Between various available Stray Animals and Book an Appointment with the Stray Animal Gaurdians </p>
           
          
          </div>
          
          <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
           <div class="imgsetting d-block m-auto bg-success"> <i class="fa fa-paw fa-3x" aria-hidden="true"></i>
           </div>
           <h2>Free Adoption</h2>
           <p>The Website is souly dedicated for connecting interested animal pet adopters to available Stray Animals wanting a home and this is done entirely for free<p>
          
          </div>
        
         
          <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
           <div class="imgsetting d-block m-auto bg-success"> <i class="fa fa-handshake-o fa-3x" aria-hidden="true"></i>
           </div>
           <h2>Register Stray</h2>
           <p>Gaurdians who wish to help Stray animals can upload known information of the Stray animal on the Website and register the Stray animal for Adoption <p>
           
          </div>
  </div>
  </section>
<!-- //////////////////////////////////////////// -->
  <section class="portfolio bg-light">
  <div class="container text-center">
  <h1>Stray Pet Archive</h1>
  <p>Read Real Stories from people who tried PetKonnect to Adopt Pets instead of Buying</p>
  
  <div class="row">
  <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
  <div class="card">
       <img src="Animal_Images/p3.jpeg" class="card-img img-fluid">
       <div class="card-body">
       <h2 class="card-title">Lucy</h2>
       <p class="card-text">This Is Animal One</p>
       </div>
  </div>
  
  </div>
  
   <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
  <div class="card">
       <img src="Animal_Images/p4.jpeg" class="card-img img-fluid">
       <div class="card-body">
       <h2 class="card-title">Leo</h2>
       <p class="card-text">This Is Animal One</p>
       </div>
  </div>
  
  </div>
  
   <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
  <div class="card">
       <img src="Animal_Images/d2.jpg" class="card-img img-fluid">
       <div class="card-body">
       <h2 class="card-title">Shiro</h2>
       <p class="card-text">This Is Animal One</p>
       </div>
  </div>
  
  </div>
  </div>
 
  
    <!-- <div class="row">
  <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
  <div class="card">
       <img src="Animal_Images/p4.jpeg" class="card-img img-fluid">
       <div class="card-body">
       <h2 class="card-title">Oscar</h2>
       <p class="card-text">This Is Animal One</p>
       </div>
  </div>
  
  </div>
  
   <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
  <div class="card">
       <img src="Animal_Images/p4.jpeg" class="card-img img-fluid">
       <div class="card-body">
       <h2 class="card-title">Mia</h2>
       <p class="card-text">This Is Animal One</p>
       </div>
  </div>
  
  </div>
  
   <div class="col-lg-4 col-md-4 col-sm-12 col-10 d-block m-auto">
  <div class="card">
       <img src="Animal_Images/d2.jpg" class="card-img img-fluid">
       <div class="card-body">
       <h2 class="card-title">Lacy</h2>
       <p class="card-text">This Is Animal One</p>
       </div>
  </div>
  
  </div>
  </div-->
  </div>
  
  </section>
  
  
  
  <section class="container ourservices text-center">
  <h1 font-bold>Steps to Adopt a Stray Pet from PetKonnect</h1>
  <p>Note: This is a small scale Pet Adoption , The Website intends to only connect pet parents to animals and the gaurdians of the animal who have registered the animal , no paperworks or dealings if required beyond the same are expected to be completed within the two parties  </p>
  
  <div class="row rowsetting">
          <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
           <div class="imgsetting d-block m-auto bg-success"> <i class="fa fa-search fa-3x" aria-hidden="true"></i>
           </div>
           <h2>1.Create an Account as Adopter</h2>
           <p>Create an Account as Adopter on the website and visit 'Explore' option to view available Stray pets around your vicinity by applying the location filter , breed and age filter can also be applied if required.</p>
           
          
          </div>
          
          <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
           <div class="imgsetting d-block m-auto bg-success"> <i class="fa fa-paw fa-3x" aria-hidden="true"></i>
           </div>
           <h2>2.Book an Appointment</h2>
           <p>If interested in any Stray pet , you can book an appointment with the Animal's gaurdians (if there are any) to have a personal look at the animal A small mcq based test will be arranged if you are interested in adopting the animal<p>
          
          </div>
        
         
          <div class="col-lg-4 col-md-4 col-sm-4 col-10 d-block m-auto">
           <div class="imgsetting d-block m-auto bg-success"> <i class="fa fa-handshake-o fa-3x" aria-hidden="true"></i>
           </div>
           <h2>3.Give a Test and Adopt for Free</h2>
           <p> The test will generate a score based on how well you can care for the pet and this score will be sent to the animal's gaurdians.You are required to give the test only if requested by gaurdian <p>
           
          </div>
  </div>
  </section>
  
  
  
  
  <section class="ourteam">
   <div class="container text-center">
    <h1>Tips for Good PetCare</h1>
    <p>Following are some good Pet Care Notes every new Pet Owner Needs to know</p>
    <div class="row teamsetting">  
         <div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto "> 
          <figure class="figure">
           <img src="Animal_Images/Cc.jpeg" class="figure-img  rounded-circle" height="250px" width="250px">
              <figcaption>
                 <h4>1. Veterinarian Visits</h4>
                      <p class="figure-caption">Responsible pet ownership starts with regular visits to the veterinarian. Given their shorter-than-human lifespan, your dog or cat should be getting a checkup at least once or twice a year.</p>
              </figcaption>
         </figure>
         </div>
         
         
         <div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto "> 
          <figure class="figure">
           <img src="Animal_Images/V1.jpg" class="figure-img  rounded-circle" height="250px" width="250px">
              <figcaption>
                 <h4>2. Vaccinations</h4>
                      <p class="figure-caption">Vaccinating your pets is a vital component of responsible pet care. Soon after welcoming your new pet into your home, schedule an immunization appointment. </p>
              </figcaption>
         </figure>
         </div>
         
         
         
         <div class="col-lg-4 col-md-4 col-sm-10 col-12 d-block m-auto "> 
          <figure class="figure">
           <img src="Animal_Images/F1.jpg" class="figure-img  rounded-circle" height="250px" width="250px">
              <figcaption>
                 <h4>3. Healthy Food</h4>
                      <p class="figure-caption">Two connected elements of responsible pet ownership include providing animals with fresh, cool water and healthy food at all times. </p>
              </figcaption>
         </figure>
         </div>
    </div>
  
   
  
  
  </div>
  
  </section>
  
   
<footer class="footer">
  <h6 class="text-center">All Rights Reserved @PetKonnect</h6>
 </footer>
  
</body>
</html>