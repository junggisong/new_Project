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

<title>changeDelivery</title>

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
                        <li class="nav-item"><a class="nav-link" href="/member/mypage">My Production</a></li>
                        <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                    </ul>
                </div>
                
    
            </div>
        </nav>

<div class="container" style="margin-top:56px;">

   	<div class="row">

     	
     	<div class="col-md-8">

	        <h1 class="my-4">배송상태 변경</h1><hr/>
		
	        <!-- @@@@안에 변수 전부 변경@@@@@-->
			
          		<form action="/changeDelivery">
          		 <div class="form-group">
			      <p></p>
			      <label for="fileName"><Strong>제품명</Strong></label><br/><br/>
			      
			      </div>
			      <div class="form-group">
			      <p></p>
			      <label for="fileName"><Strong>배송상태</Strong></label><br/><br/>
			     
			      </div>
			      <p></p>
			      <div class="form-group">
			        <label for="p_price"><Strong>변경될 배송상태</Strong></label><br/>
			        <input type="text" class="form-control" id="delivery" name="delivery" placeholder="상품준비중/배송중/배송완료">
			      </div>
			      <p></p>	
				  <hr/>
			     
			      <input type="submit" value ="상품수정" class="btn btn-primary" onClick="location.href='/admin/welcome'"></a>
			      
			      
			      <button type="submit" class="btn btn-primary">취소하기</button>
			    </form>
			     
        		        

       	</div>
       	
    	
    </div>
    <!-- /.row -->

</div>

<sec:authorize access="isAuthenticated()"> 
</sec:authorize>

</body>
</html>