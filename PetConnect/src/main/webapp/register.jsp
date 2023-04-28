
<%@ page import = "Pet.dao.PetDao" %>
<%@ page import = "java.util.*" %>
<%@ page import = "Pet.Connection.DbCon" %>
<%@ page import = "Pet.model.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign In</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="alert/dist/sweetalert.css">
<%@include file="Includes/Header.jsp" %>
</head>
<body>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
<!--  <h1>PetKonnect</h1> -->
<!--  <nav class="navbar navbar-expand-lg navbar-light bg-light ">
  <a class="navbar-brand text-dark fontsize-500" href="#"><h1>PetKonnect</h1><p style="color:green">Don't Shop|Just Adopt</p></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   </nav> -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light ">
  <a class="navbar-brand text-dark fontsize-500" href="#"><h1>PetKonnect</h1><p style="color:green">Don't Shop|Just Adopt</p></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto ">
      <li class="nav-item active">
        <a class="nav-link text-dark" href="AdminHome.jsp">Home<span class="sr-only">(current)</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link text-dark" href=".jsp">Uploads</a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-dark" href="Contact.jsp">Contact</a>
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
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0 text-dark" type="submit">Search</button>
    </form>
  </div>
  </nav>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Register Your Animal here</h2>
					
						<form method="post" enctype="multipart/form-data" action="RegisterServlet" class="register-form"
							id="register-form">
							<input type="hidden" name="operation" value="addproduct" />
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Name of Animal(if any)" />
							</div>
							<div class="form-group">
								<label for="Breed"><i class="zmdi zmdi-account material-icons-Breed"></i></label> <input
									type="Breed" name="Breed" id="Breed" placeholder="Breed" />
							</div>
							<div class="form-group">
								<label for="Location"><i class="zmdi zmdi-account material-icons-Location"></i></label> <input
									type="Location" name="Location" id="Location" placeholder="Current Location" />
							</div>
							<div class="form-group">
								<label for="Age"><i class="zmdi zmdi-account material-icons-Age"></i></label>
								<input type="Age" name="Age" id="Age"
									placeholder="Age" />
							</div>
							<div class="form-group">
                            <label for="image"><i class="zmdi zmdi-image"></i></label>
                            <input type="file" name="image" id="image" class="form-control-file" placeholder="Upload Image" />
                            </div>
							<div class="form-group">
								<label for="highlight"><i class="zmdi zmdi-account material-icons-highlight"></i></label>
								<input type="highlight" name="highlight" id="highlight"
									placeholder="Any known characteristics in few words" />
							</div>
							<div class="form-group">
								<label for="description"><i class="zmdi zmdi-account material-icons-description"></i></label>
								<input type="description" name="description" id="description"
									placeholder="Describe" />
							</div>
							<div class="form-group">
								<label for="vaccinated"><i class="zmdi zmdi-account material-icons-vaccinated"></i></label>
								<input type="vaccinated" name="vaccinated" id="vaccinated"
									placeholder="vaccinated" />
							</div>
							<div class="form-group">
								<label for="Health"><i class="zmdi zmdi-account material-icons-Health"></i></label>
								<input type="Health" name="Health" id="Health"
									placeholder="Health" />
							</div>
							<div class="form-group">
								<label for="gender"><i class="zmdi zmdi-account material-icons-gender"></i></label>
								<input type="gender" name="gender" id="gender"
									placeholder="gender"/>
							</div>
							<div class="form-group">
								<label for="cid"><i class="zmdi zmdi-account material-icons-cid"></i></label>
								<input type="cid" name="cid" id="cid"
									 placeholder="Category Id<br>1.Indian Breed Dog<br>2.Western Breed Dog<br>3.Indian Breed Cat<br>4.Western Breed Cat" />
							</div>
							<div class="form-group">
								<label for="gid"><i class="zmdi zmdi-account material-icons-gid"></i></label>
							
							  <input type="hidden" name="gid" value="<%=session.getAttribute("gid") %>">
							  
								</div>
                            
							<div class="form-group">
								<input type="checkbox" name="agree-term" id="agree-term"
									class="agree-term" /> <label for="agree-term"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="register" id="register"
									class="form-submit" value="Register"/>
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="Animal_Images/sign.jpg" alt="sign up image">
						</figure>
					<!-- 	<a href="login1.jsp" class="signup-image-link">I am already
							member</a>  -->
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src = "https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
	
	<script type="text/javascript">
	
	    var status = document.getElementById("status").value;
	    if(status == "success"){
		swal("Congrats","Animal Registered Successfully","success")//.then(function(){
			//window.location="login1.jsp";
		}
	}
	</script>
	



</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>