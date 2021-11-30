<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
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

  
  
  <form action="aaa" method="post">

    
    <div class="container">
   	<div class="row">
    <div class="col-md-8">
	<h1 class="my-4">Login</h1>        
	<div class="card mb-4">     	
	<div class="form-group">	        
	ID:<input type="text"name="username" placeholder="ID">
	</div>
	<p></p>
	<div class="form-group">
	Password:<input type="text"name="password" placeholder="Password">
	</div>
	<p></p>
	
	</div> 
	<button type="submit" class="btn btn-primary">Login</button>  	 	
	</div>
	</div>
	</div>
   

     
  </form>
  
  
   
</body>
</html>



