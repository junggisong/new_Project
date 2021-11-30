<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link href="/resource/css/styles.css" rel="stylesheet">
<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/codingBooster.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">Used market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="/member/welcome">Product Registration</a></li>
                        <li class="nav-item"><a class="nav-link" href="/member/welcome">My Production</a></li>
                        <li class="nav-item"><a class="nav-link" href="/memberjoin">Join</a></li>
                        <li class="nav-item"><a class="nav-link" href="/member/welcome">Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                    </ul>
                </div>
                
    
            </div>
        </nav>

  
  <br>
  <h1><center><strong>Clothes</strong></center></h1><br>  
  
  <div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">번호</th>
						<th style="background-color: #eeeeee; text-align:center;">제목</th>
						<th style="background-color: #eeeeee; text-align:center;">판매자</th>						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="dto" items="${list}">
						<tr>
							<!--@@@@@@@ id는 물품번호 , title은 제목, name은 판매자. 변수 변경해줄것. @@@@@@@@@-->
							<td>${dto.id}</td> 
							<td><a href ="/getBoardDetail?id=${dto.id}">${dto.title}</a></td>
							<%-- <td><sec:authentication property="name" /></td> --%>
							<td><a href ="/getBoardDetail?id=${dto.id}">${dto.name}</a></td> 
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<center><h6>제목을 누르시면 상세내역으로 이동합니다.</h6></center></br>
			<a href="welcome2" class="btn btn-info pull-right">글쓰기</a><br><hr> 
		</div>
	</div>
</body>
</html>



