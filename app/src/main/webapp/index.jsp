<!DOCTYPE HTML PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd:">

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
	int current =0;
	Connection connection = null;
	String connectionUrl = "jdbc:mysql://localhost:3306/website_master";
	ResultSet rs=null;
	Statement statement =null;
	try{
		Map <String, String> websiteItems = new HashMap<String,String>();
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		connection = DriverManager.getConnection(connectionUrl,"root","12345");
		statement = connection.createStatement();
		rs = statement.executeQuery("SELECT * FROM page_master");
		while(rs.next()){
			websiteItems.put(rs.getString(2),rs.getString(3));

			}
		if(websiteItems.size()<0){
			out.println("No Data Found");
		}else{
%>

<html >
	<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width,initial-scale=1">
			<title>SPW | Title Name</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
			<style>
				.color-teal{
					color:teal;
				}
				.icon-lg{
				font-size:50px
				}
				.icon-sm{
				font-size:25px
				}
				.no-underline{
					text-decoration:none;
				}
			</style>
	</head>
	<body>
		<header>
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<a href="#" class="navbar-brand">
					<img src="<%= websiteItems.get("logo") %>" height="40px" >
					</a>
					<button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar1">
						<i class="bi bi-list"></i>
					</button>
					<div class="collapse navbar-collapse" id="navbar1">
						<div class="navbar-nav ms-auto">
							<a href="index.jsp" class="nav-item nav-link active">Home</a>
							<a href="#about-us" class="nav-item nav-link ">About Us</a>
							<a href="#contact-us" class="nav-item nav-link ">Contact Us</a>
							
						</div>
					</div>
				</div>
		</header>
		<div id="carousel" class="carousel slide" data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
			<button type="button" data-bs-target="#carousel" data-bs-slide-to="1" ></button>
			<button type="button" data-bs-target="#carousel" data-bs-slide-to="2" ></button>	
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="<%= websiteItems.get("carousel_one") %>" class="d-block w-100" alt="carousel 1" style="max-height:100vh;">
			</div>
			<div class="carousel-item ">
				<img src="<%= websiteItems.get("carousel_two") %>" class="d-block w-100" alt="carousel 2" style="max-height:100vh;">
			</div>
			<div class="carousel-item ">
				<img src="<%= websiteItems.get("carousel_three") %>" class="d-block w-100" alt="carousel 3" style="max-height:100vh;">
			</div>
		</div>
			<button class="carousel-control-prev" type="button" data-bs-target="#carousel" data-bs-slide="prev">
			<span class="carousel-control-prev-icon"></span>
			</button>
			<button class="carousel-control-next" type="button" data-bs-target="#carousel" data-bs-slide="next">
			<span class="carousel-control-next-icon"></span>
			</button>
		</div>
		
		<main class="mt-5">
			<section class="container mt-4" id="about-us">
				<h6 class="display-5 text-center">About Us</h6>
				<div class="row mt-5 mb-5">
			 		<div class="col-md-5">
			 			<div class="container">
			 				<img src="<%= websiteItems.get("about_us") %>" class="d-block w=100" alt="About Us">
			 			</div>
			 		</div>
			 		<div class="col-md-7">
			 			<p class="text-black-50">
			 				Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.
			 				The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book.
			 			</p>
			 			 <p>
			 	       The purpose of lorem ipsum is to create a natural looking block of text that doesn't distract from the layout.
			 	       A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.
					   The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers
					   bundled the text with their software.
			       </p>  
			 		
			 	</div>
			 	
				</div>
			</section>
				<section class="mt-5 mb-5">
				<div class="row">
						<h6 class="display-5 text-center mt-5 mb-5">What Makes us Unique</h6>
						<div class="col-md-4">
							<div class="container text-center">
								<i class="bi bi-person color-teal icon-lg"></i>
								<p>Custom tailored user options</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="container text-center">
								<i class="bi bi-shield-shaded color-teal icon-lg"></i>
								<p>Privacy First Approach</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="container text-center">
								<i class="bi bi-list  color-teal icon-lg"></i>
								<p>Multiple Variants</p>
							</div>
						</div>
				</div>
			</section>
			
			<section id="team" class="container mt-5 mb-5">
				<div class="row">
					<h6 class="display-5 text-center mt-5 mb-5">Our Innovative team</h6>
						<div class="col-md-4 d-flex align-items-centre justify-content-center">
							<div class="card" style="width:300px !important">
								<img class="card-img-top" src="<%= websiteItems.get("team_member_one") %>" alt="Team user 1">
								<div class="card-body text-center">
									<h4 class="card-title">Team Member 1</h4>
									<p class="card-text">The purpose of lorem is to create a natural looking block of text that doesn't distract from the layout.</p>
									<i class="bi bi-facebook icon-sm m-2"></i>
									<i class="bi bi-instagram icon-sm m-2"></i>
									<i class="bi bi-linkedin icon-sm m-2"></i>
								</div>
							</div>
					    </div>
					    <div class="col-md-4 d-flex align-items-centre justify-content-center">
							<div class="card" style="width:300px !important">
								<img class="card-img-top" src="<%= websiteItems.get("team_member_two") %>" alt="Team user 2">
								<div class="card-body text-center">
									<h4 class="card-title">Team Member 2</h4>
									<p class="card-text">The purpose of lorem is to create a natural looking block of text that doesn't distract from the layout.</p>
									<i class="bi bi-facebook icon-sm m-2"></i>
									<i class="bi bi-instagram icon-sm m-2"></i>
									<i class="bi bi-linkedin icon-sm m-2"></i>
								</div>
							</div>
					    </div>
					    <div class="col-md-4 d-flex align-items-centre justify-content-center">
							<div class="card" style="width:300px !important">
								<img class="card-img-top" src="<%= websiteItems.get("team_member_three") %>" alt="Team user 3">
								<div class="card-body text-center">
									<h4 class="card-title">Team Member 3</h4>
									<p class="card-text">The purpose of lorem is to create a natural looking block of text that doesn't distract from the layout.</p>
									<i class="bi bi-facebook icon-sm m-2"></i>
									<i class="bi bi-instagram icon-sm m-2"></i>
									<i class="bi bi-linkedin icon-sm m-2"></i>
								</div>
							</div>
					    </div>
				</div>    
			</section>	
			<section id="contact-us" class="container mt-5 mb-5">
					<h6 class="display-5 text-center mt-5 mb-5">Contact Us</h6>
					<div class="row">
						<div class="col-md-6">
						<div class="container mt-3">
							<p class="text-muted text-center fs-3">Our Contact Info</p>
							<p class="text-black-50 text-center fs-4">Our Email</p>
							<p class="text-black text-center fs-5">somebody@something.com</p>
							<p class="text-black-50 text-center fs-4">Our Phone No.</p>
							<p class="text-black text-center fs-5">1238569740</p>
					        <p class="text-black-50 text-center fs-4">Our Address</p>
					        <p class="text-black text-center fs-3">HSR Layout Bangalore</p>
					        
							
						</div>
						</div>
						
						<div class="col-md-6">
						  <div class="container">
							<p class="text-muted text-center fs-3">You can also Write to Us</p>
							<div class="container">
								<div class="card shadow">
									<div class="card-body">
										<form >
											<div class="form-group">
												<label for="name" class="form-label">Enter your Name</label>
												<input type="Text" class="form-control" name="name" id="name">
											</div>
											<div class="form-group">
												<label for="name" class="form-label">Enter your Email</label>
												<input type="Text" class="form-control" name="email" id="email">
											</div>
											<div class="form-group">
												<label for="name" class="form-label">Enter your Subject</label>
												<input type="Text" class="form-control" name="subject" id="subject">
											</div>
											<div class="form-group">
												<label for="name" class="form-label">Enter your Message</label>
												<textarea class="form-control" name="message" id="message"></textarea>
											</div>
											<div class="form-group Text-center mt-3">
												<input type="submit" class="btn btn-outline-dark mt-3" value="Send Message">
											</div>
										</form>
									</div>
							</div>
						</div>
						</div>
					</div>
			</div>
			</section>
				
		 </main>
		
		<footer class="bg-dark mt-5">
			<div class="container">
				<div class="row">
				
					<div class="col-md-6">
						<div class="container mt-5">
						
							<img src="<%= websiteItems.get("logo") %>" height="30px" class="bg-white">
							<p class="text-white">Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs.
			 				The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book.
			 				</p>
						</div>
					
					</div>
					<div class="col-md-6">
					
						<div class="container mt-5">
							<p class="text-white fs-5">Quick Links</p>
							<ul>
								<li>
								<a href="#" class="text-white no-underline">About Us</a>
								</li>
								<li>
								<a href="#" class="text-white no-underline">Contact Us</a>
								</li>
							</ul>
						</div>
					
					</div>
				
				</div>
			
			</div>
		
		</footer>
		
		
		
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
	</body>
</html>
<%

		}
	}catch(Exception e){
		out.println("Exception Occured "+e);
	}
	
%>
			 	