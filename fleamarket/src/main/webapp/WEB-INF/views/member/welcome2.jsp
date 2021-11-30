<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>    
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Production Registration</title>

<!-- Bootstrap core CSS -->
<link href="/resource/css/styles.css" rel="stylesheet">


</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">flea market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link" href="/member/welcome">Product Registration</a></li>
						<li class="nav-item"><a class="nav-link" href="/member/welcome">My Production</a></li>
						<li class="nav-item"><a class="nav-link" href="/guest/memberjoin">Join</a></li>
						<li class="nav-item"><a class="nav-link" href="/guest/login">Login</a></li>
						<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                    </ul>
                </div>
                
    
            </div>
        </nav>

<div class="container" style="margin-top:56px;">

   	<div class="row">

     	
     	<div class="col-md-8">

	        <h1 class="my-4">Product Registration</h1>
		
	        <!-- Blog Post -->
			
          		<form id="newBoard" action="/insertBoard" method="POST">
			      <div class="form-group">
			        <label for="subject">Product Name</label>
			        <input type="text" class="form-control" id="title" name="title" placeholder="Product Name">
			      </div>
			      <p></p>
			      <div class="form-group">
			        <label for="subject">Seller</label>
			        <input type="text" class="form-control" id="userID" name="userID" placeholder="Seller">
			      </div>
			      <p></p>
			      <div class="form-group">
			        <label for=subject">Content</label>
			        <textarea class="form-control" id="contents" name="contents"></textarea>
			      </div>
			      <p></p>
			      <button type="button" class="btn btn-primary" onclick="location.href='/'">List</button>
			      <button type="submit" class="btn btn-primary">Register</button>
			    </form>
        		        

       	</div>
       	
    	
    </div>
    <!-- /.row -->

</div>

<sec:authorize access="isAuthenticated()"> 
</sec:authorize>










</body>
</html>