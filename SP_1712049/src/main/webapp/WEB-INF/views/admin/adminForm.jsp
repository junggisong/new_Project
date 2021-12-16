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

<title>Production Registration</title>

<!-- Bootstrap core CSS -->
<link href="/resource/css/styles.css" rel="stylesheet">


</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">used market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <!-- href 수정 @@@@@@@@@@-->
                        <li class="nav-item"><a class="nav-link" href="/member/myPage">My Production</a></li>
                        <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                    </ul>
                </div>
                
    
            </div>
        </nav>

		<div class="container" style="margin-top:56px;">
   			<div class="row">
			    <h3>회원목록</h3><hr>
			    <table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">회원 아이디</th>
						<th style="background-color: #eeeeee; text-align:center;">회원 이름</th>	
						<th style="background-color: #eeeeee; text-align:center;">주소</th>
						<th style="background-color: #eeeeee; text-align:center;">핸드폰 번호</th>	
												
					</tr>
				</thead>
				<tbody>
					<c:forEach var="userinfo" items="${userinfo}">
						<tr>
							<td>${userinfo.u_id}</td> 
							<td><a>${userinfo.name}</a></td>
							<td><a>${userinfo.u_address}</a></td> 
							<td><a>${userinfo.u_phone}</a></td> 
						</tr>
					</c:forEach>
				</tbody>
				</table>
				<h3>배송상태</h3><hr>
			    <table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">회원번호</th>
						<th style="background-color: #eeeeee; text-align:center;">상품번호</th>	
						<th style="background-color: #eeeeee; text-align:center;">배송상태</th>						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="adminBuy" items="${adminBuy}">
						<tr>
							<td>${adminBuy.buyer_no}</td> 
							<td><a>${adminBuy.product_no}</a></td>
							<td><a>${adminBuy.delivery}</a>&nbsp<button type="button" onClick="location.href='/changeDelivery1?id=${adminBuy.b_no}'" class="btn btn-success">배송상태 변경</button></td> 
							
						</tr>
					</c:forEach>
				</tbody>
				</table>
		
    </div>
    

</div>

<sec:authorize access="isAuthenticated()"> 
</sec:authorize>










</body>
</html>





