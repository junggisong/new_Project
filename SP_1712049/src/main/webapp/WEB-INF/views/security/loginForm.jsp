<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link href="/resource/css/styles.css" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 	<script src="js/bootstrap.js"></script>
 </head>
 <body>
 	
 	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">Used market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="/memberjoin">Join</a></li>
                        <li class="nav-item"><a class="nav-link" href="/member/welcome">Login</a></li>
                        
                    </ul>
                </div>
                
    
            </div>
        </nav>

  <img src="images/spac.PNG">
  
  <form action="aaa" method="post">
  	<center>
     <c:if test="${param.error != null}" >
       <p>
          <strong>Login Error !!!</strong> <br />
          ${error_message}
       </p>   
     </c:if>
    </center>
    <div class="container">
   	<div class="row">
	<h1 class="my-4"><img src="images/log1.PNG"></h1>
	<div class="card mb-4">
	<center>    	
	<div class="form-group">	        
	ID:<input type="text"name="u_id" placeholder="ID">
	</div>
	<p></p>
	<div class="form-group">
	Password:<input type="password"name="pwd" placeholder="Password">
	</div>
	<p></p>
	</center>
	</div> 
	<center>
                   <input type="submit" value ="&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp LOGIN 
                   &nbsp&nbsp&nbsp&nbsp&nbsp" action="/mypage" class="btn btn-warning " onClick="location.href='/member/loginOkIndex'"></a></br>
                   <button type="button" onClick="location.href='/security/joinForm'" class="btn btn-info ">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp JOIN  
                   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button></br>
                   <button type="button" onClick="location.href='/oauth2/authorization/google'" class="btn btn-primary ">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Google계정으로 로그인  
                   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button></br>
                   <button type="button" onClick="location.href='/oauth2/authorization/naver'" class="btn btn-success ">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Naver 계정으로 로그인  
                   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</button></br>
	</center>  	 	

	</div>
	</div>
   
     <!--  ID : <input type="text" name="j_username"> <br />
     PW : <input type="text" name="j_password"> <br />
     <input type="submit" value="Login" > <br />-->
     
  </form>
  
  
   
 </body>
</html>






