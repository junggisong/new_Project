<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="/resource/css/styles.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/resource/css/codingBooster.css">

</head>
<body>
<style type="text/css">
		header{
			width:100%;
  			height:100%;
  			height:calc(100% - 1px);
			background-image: url('/images/clothesWelcome.jpg');
 			background-size: cover;
		}
 		.jumbotron{
 			text-shadow: black 0.2em 0.2em 0.2em;
 			color: white;
 		}
 	</style>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">Used market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    	<!--@@@@@@@@@@ href부분 다 수정 @@@@@@@@@@@-->
                        <li class="nav-item"><a class="nav-link" href="/member/welcome">My Production</a></li>
                        <li class="nav-item"><a class="nav-link" href="/security/joinForm">Join</a></li>
                        <li class="nav-item"><a class="nav-link" href="/">Logout</a></li>
                    </ul>
                </div>
                
    
            </div>
</nav>
		<header class="py-5 bg-light border-bottom mb-4">
		<div class="jumbotron">
            <div class="container">
	                <div class="text-center my-5">
	                    <h1 class="fw-bolder">Used Clothes</h1></br><h7>중고 의류들을 판매하는 장터입니다.</h7>
	                </div>          
            </div>
         </div>
        </header>

  
  <br>
  
  <div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">번호</th>
						<th style="background-color: #eeeeee; text-align:center;">제목</th>
						<th style="background-color: #eeeeee; text-align:center;">판매자</th>	
						<th style="background-color: #eeeeee; text-align:center;">평가단 점수</th>						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.p_no}</td> 
							<td><a href ="/getBoardDetail?id=${dto.p_no}">${dto.p_name}</a></td> 
							<td><a href ="/getBoardDetail?id=${dto.p_no}">${dto.p_seller}</a></td>
							<td><a href ="/getBoardDetail?id=${dto.p_no}">${dto.score}</a></td>
							 
							
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<center><h6>제목을 누르시면 상세내역으로 이동합니다.</h6></center></br>
			
		</div>
		
		<center><a href="/newContent" class="btn btn-primary pull-right">&nbsp&nbsp&nbsp상품 등록&nbsp&nbsp&nbsp</a><br><hr></center> 
	</div>
</body>
</html>



