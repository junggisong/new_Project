<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name ="viewport" content="width=device-width",initial-scale="1">
	<title>Capstone design</title>
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/codingBooster.css">
 </head>
 <body>
 	
 	<nav class="navbar navbar-default">
 		<div class="container-fluid">
 			<div class="navbar-header">
 				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
 					<span class="sr-only"></span>
 					<span class="icon-bar"></span>
 					<span class="icon-bar"></span>
 					<span class="icon-bar"></span>

 				</button>
 				<a class="navbar-brand" href="/">UC CodeShare</a>
 			</div>
 			<div class="collapsed navbar-collapse" id="bs-example-navbar-collapse-1">
 				<ul class="nav navbar-nav">
 					<li class="active"><a href="/">메인으로<span class="sr-only"></span></a></li>
 					<li class="dropdown">
 						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">게시판<span class="caret"></span></a>
 						<ul class="dropdown-menu">
 							<li><a href="/member/welcome">C언어</a></li>
 							<li><a href="/member/welcome">java</a></li>
 							<li><a href="/member/welcome">android</a></li>
 							<li><a href="/member/welcome">HTML</a></li>
 						</ul>
 					</li>
 				</ul>
 				<form class="navbar-form navbar-left">
 					<div class="form-group">
 						<input type="text" class="form-control" placeholder="검색내용">
 					</div>
 					<button type="submit" class="btn btn-default">검색</button>
 				</form>
 				<ul class="nav navbar-nav navbar-right">
 					<li class="dropdown">
 						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">로그아웃<span class="caret"></span></a>
 						<ul class="dropdown-menu">
 							<li><a href="/logout">로그아웃</a></li>
 						</ul>
 					</li>
 				</ul>
 			</div>
 		</div>
 	</nav>
	
	<%-- USER ID : ${pageContext.request.userPrincipal.name }<br/> --%>
	<center><h2><strong><sec:authentication property="name" /></strong>님 환영합니다.</h2>
	<button type="button" onClick="location.href='/logout'" class="btn btn-info">로그아웃</button></br>
	</center>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">상품 번호</th>
						<th style="background-color: #eeeeee; text-align:center;">상품 이름</th>
						<!-- <th style="background-color: #eeeeee; text-align:center;">작성자</th> -->
						<th style="background-color: #eeeeee; text-align:center;">수정/삭제</th>						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.p_no}</td> 
							<td><a href ="/getBoardDetail?id=${dto.p_no}">${dto.p_name}</a></td> 
							<%-- <td><sec:authentication property="name" /></td> --%>
							<td><button type="button" onClick="location.href='/boardUpdate?id=${dto.p_no}'" class="btn btn-success">수정</button>
							<button type="button" onClick="location.href='/boardDelete?id=${dto.p_no}'" class="btn btn-danger">삭제</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<center><h6>제목을 누르시면 상세내역으로 이동합니다.</h6></center></br>
			<a href="/newContent" class="btn btn-info pull-right">상품 등록</a><br><hr> 
		</div>
	</div>
 	<footer style="background-color: #000000; color: #ffffff">
 		<div class="container">
 			<br>
 			<div class="row">
 				<div class="col-sm-2" style="text-align:center;"><h5>실무프로젝트 &copy; 2021</h5><h5>송중기(1712049),김환도(1712025)</h5></div>
 				<div class="col-sm-4"><h4>개발자의 한마디</h4><p>저희는 객관적인 가격 측정을 통한 정확한 중고가를 제시하는것을 지향합니다.</p></div>
 				<div class="col-sm-2"><h4 style="text-align: center;">빠른 이동</h4>
 					<div class="list-group">
 						<a href="/" class="list-group-item">Clothes</a>
 						<a href="lect.html" class="list-group-item">Furniture</a>
 						<a href="/member/welcome" class="list-group-item">Electronic Equipment</a>
 					</div>
 			    </div>
 			    
 			    <div class="col-sm-2"><h4 style="text-align: center;"><p><span class="glyphicon glyphicon-ok"></span>&nbsp;</p>실무 프로젝트</h4>

 			    </div>
 		    </div>
 	    </div>
 	</footer>
 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 	<script src="../js/bootstrap.js"></script>
 </body>
</html>






