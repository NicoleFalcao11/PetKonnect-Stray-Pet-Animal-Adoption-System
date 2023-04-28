<%@ page import = "Pet.dao.PetDao" %>
<%@ page import = "java.util.*" %>
<%@ page import = "Pet.Connection.DbCon" %>
<%@ page import = "Pet.model.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 int gid1 = Integer.parseInt(request.getParameter("gid"));
 PetDao pd = new PetDao(DbCon.getConnection());
 Gaurdian g1 = pd.getGaurdianByGid(gid1);
 
 %>

<!DOCTYPE html>
<html>
<head>
<title>Welcome To PetKonnect</title>
<%@include file="Includes/Header.jsp" %>
<!--   link rel="stylesheet" type="text/css" href="css/PetShop.css"> -->
<meta charset="UTF-8">
   <!-- <title> Responsive Contact Us Form  | CodingLab </title>-->
    <link rel="stylesheet" href="css/style1.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<!-- <h1>PetKonnect</h1>  -->
 <div class="container">
 <nav class="navbar navbar-expand-lg navbar-light bg-light ">
  <a class="navbar-brand text-dark fontsize-500" href="#"><h1>PetKonnect</h1><p style="color:green">Don't Shop|Just Adopt</p></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto ">
      <li class="nav-item active">
        <a class="nav-link text-dark" href="IndexHome1.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link text-dark" href="Bag.jsp">WishList</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-dark" href="PetTrial2.jsp">Explore</a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-dark" href="About.jsp">About</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-dark " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <%=session.getAttribute("name") %>
        </a>
        <div class="dropdown-menu " aria-labelledby="navbarDropdown">
          <a class="dropdown-item " href="logout1Servlet">Logout</a>
          <!--  <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="">My Account</a>-->
        </div>
      </li>
    </ul>
   
  </div>
  </nav>
  
 <!--   <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">Surkhet, NP12</div>
          <div class="text-two">Birendranagar 06</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">+0098 9893 5647</div>
          <div class="text-two">+0096 3434 5678</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one">codinglab@gmail.com</div>
          <div class="text-two">info.codinglab@gmail.com</div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Connect To The Gaurdian By Sending a message</div>
        <p>For Further Details and Inquiry connect with the Animal's Gaurdian at Following</p>
      
      </form>
    </div>
    </div> -->  
    <div class="content">
  <div class="right-side">
    <div class="topic-text">Connect To The Gaurdian By Sending a message</div>
    <p>For Further Details and Inquiry connect with the Animal's Gaurdian at Following</p>
  </div>
  <div class="left-side">
  <!--  
    <div class="address details">
      <i class="fas fa-map-marker-alt"></i>
      <div class="topic">Address</div>
      <div class="text-one">Surkhet, NP12</div>
      <div class="text-two">Birendranagar 06</div>
    </div> -->
    <div class="name">Gaurdian Name : <%=g1.getgname() %></div>
    <div class="Contact Gaurdian At">
      <i class="fas fa-phone-alt"></i>
      <div class="topic">Phone</div>
      <div class="text-one"><%=g1.getgmobile()%></div>
      
    </div>
    <div class="email details">
      <i class="fas fa-envelope"></i>
      <div class="topic">Or Email At</div>
      <div class="text-one"><%=g1.getgmail() %></div>
      
    </div>
  </div>
</div>
    
  </div>  
  
  </body>
  </html>
