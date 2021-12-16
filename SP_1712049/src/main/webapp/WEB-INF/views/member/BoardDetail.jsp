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

<title>Detail</title>

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

	        <h1 class="my-4">Detail</h1><hr/>
		
	        <!-- Blog Post -->
			
          		<form id="newBoard" action="/insertBoard" method="POST">
			      <div class="form-group">
			      <p></p>
			      <label for="fileName"><Strong>Product photo</Strong></label><br/><br/><td colspan="2">
 					<img src="upload/${dto.img}" width="200" height="300" /></div>
			      <p></p>
			      <div class="form-group">  
			        <label for="subject"><Strong>Seller</Strong></label><br/>
			          ${dto.p_seller}
			      </div>
			      <p></p>
			       <div class="form-group">  
			        <label for="subject"><Strong>Price</Strong></label><br/>
			          ${dto.p_price}
			      </div>
			      <p></p>
			      <div class="form-group">  
			        <label for="subject"><Strong>Content</Strong></label><br/>
			          ${dto.p_content}
			      </div>
			      <p></p>
			      <table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #eeeeee; text-align:center;">평가자</th>
							<th style="background-color: #eeeeee; text-align:center;">평가점수</th>
							<th style="background-color: #eeeeee; text-align:center;">사유</th>						
						</tr>
					</thead>
					<tbody>
						<c:forEach var="score" items="${score}">
							<tr>
								
								<td>${score.e_name}</td> 
								<td>${score.e_score}</td>
								<td>${score.e_content}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				   <p></p>
				    
				  <hr/>
				  
				 
			    </form>
			     <center>
 					<button type="button" onClick="location.href='/member/buyPage?id=${dto.p_no}'" class="btn btn-success">구매하기</button>
 					<button type="button" onClick="location.href='/boardUpdate?id=${dto.p_no}'" class="btn btn-success">수정하기</button>
 					<button type="button" onClick="location.href='/evaluate?id=${dto.p_no}'" class="btn btn-success">평가하기</button>
					
					<br>
					<hr>
				</center>
        		        

       	</div>
       	
    	
    </div>
    <!-- /.row -->

</div>

<sec:authorize access="isAuthenticated()"> 
</sec:authorize>

</body>
</html>