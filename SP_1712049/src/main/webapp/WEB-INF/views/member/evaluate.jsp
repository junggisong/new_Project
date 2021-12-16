<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width",initial-scale="1">


<title>evaluate</title>

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

	        <h1 class="my-4">Evaluate</h1><hr/>
		
	        
			
          		<form action="/evaluateSave">
				      <div class="form-group">
				      <p></p>
				      <label for="fileName"><Strong>Product photo</Strong></label><br/><br/>
				      <img src="upload/${dto.img} "/>
				      </div>
				      <p></p>
				      <div class="form-group">
					        <label for="e_name"><Strong>Name</Strong></label><br/>
					        <textarea name="e_name" class="form-control" placeholder ="평가자 이름을 적어주세요"></textarea>
				      </div>
				      <p></p>
				      <div class="form-group">
				        <label for="score"><Strong>Score</Strong></label><br/>
				        <textarea name="e_score" class="form-control" placeholder ="1~10"></textarea>
				      </div>
				      <p></p>
				      <div class="form-group">
				        <label for="content"><Strong>Content</Strong></label>
				        <textarea name="e_content" class="form-control" placeholder ="사유"></textarea>
				      </div>
				      <p></p>
					
					    
					  <hr/>
			      <button type="submit" class="btn btn-primary" onclick="location.href='/member/clothesWelcome'">evaluate</button>
			      <input type="button" class="btn btn-primary" value="CANCEL" onClick="history.back()">
			    </form>
        		     

       	</div>
       	
    	
    </div>
   

</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 	<script src="js/bootstrap.js"></script>
</body>
</html>