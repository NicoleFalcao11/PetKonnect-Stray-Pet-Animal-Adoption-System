<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log In</title>
<link rel="stylesheet" type="text/css" href="css/Info.css">
<%@include file="Includes/Header.jsp" %>
</head>
<body>
<!--  <h1>PetKonnect</h1>-->
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
      <!--  <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-dark" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Profile
        </a>
        <div class="dropdown-menu " aria-labelledby="navbarDropdown">
          <a class="dropdown-item " href="login.jsp">Log In</a>
          <a class="dropdown-item " href="Signup.jsp">Sign in</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">My Account</a>
        </div>
      </li> -->
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0 text-dark" type="submit">Search</button>
    </form>
  </div>
  </nav>

<div class="container">


  
  <div class="card">
    <div class="box">
      <div class="content">
        <h2>01</h2>
        <h3>Adopter</h3>
        <p>Log in to Adopt</p>
        <a href="login1.jsp">Log In</a>
        <a href="signin1.jsp" class="signup-image-link">Don't Have An Account? Create an
							account</a>
      </div>
    </div>
  </div>

  <div class="card">
    <div class="box">
      <div class="content">
        <h2>02</h2>
        <h3>Gaurdian</h3>
        <p>Log in as an uploader or gaurdian to register your animal </p>
        <a href="login2.jsp">Log in</a>
        <a href="signin2.jsp" class="signup-image-link">Don't Have An Account? Create an
							account</a>
      </div>
    </div>
  </div>

  <!--  <div class="card">
    <div class="box">
      <div class="content">
        <h2>03</h2>
        <h3>Card Three</h3>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore, totam velit? Iure nemo labore inventore?</p>
        <a href="#">Read More</a>
      </div>
    </div>
  </div>
</div>-->
</body>
</html>