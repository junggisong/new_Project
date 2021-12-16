<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>   
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Buy</title>

<!-- Bootstrap core CSS -->
<link href="/resource/css/styles.css" rel="stylesheet">


</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">Used Market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <!-- href 수정 @@@@@@@@@@-->
                        <li class="nav-item"><a class="nav-link" href="/member/write">Product Registration</a></li>
                        <li class="nav-item"><a class="nav-link" href="/member/welcome">My Production</a></li>
                        <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                    </ul>
                </div>
                
    
            </div>
        </nav>

<div class="container" style="margin-top:56px;">

   	<div class="row">

     	
     	<div class="col-md-8">

	        <h1 class="my-4">Buy</h1><hr/>
		
	        <!-- Blog Post -->
			
          		<form id="newBoard" action="/insertBoard" method="POST">
			      
			      <p></p>
			      <div class="form-group">  
			        <label for="subject"><Strong>Buyer</Strong></label><br/>
			          <sec:authentication property="name" />
			      </div>
			      <p></p>
			      <div class="form-group" >
			        <label for="p_name"><Strong>Product Name</Strong></label><br/>
			         <td colspan="2">${dto.p_name}</td>
			      </div>
			      <p></p>
			      <div class="form-group">
			        <label for="p_price"><Strong>Address</Strong></label>
			        <input type="text" class="form-control" id="b_address" name="b_address" placeholder="주소">
			      </div>
			      <p></p>
			      <p></p>
			       
				   <p></p>
				    
				  <hr/>
			      <input type="button" class="btn btn-primary" value="BUY"onclick="location.href='/member/loginOkIndex'">
			      <input type="button" class="btn btn-primary" value="CANCEL" onClick="history.back()">
			    </form>
        		        

       	</div>
       	
    	
    </div>
    <!-- /.row -->

</div>

<sec:authorize access="isAuthenticated()"> 
</sec:authorize>

</body>
</html>