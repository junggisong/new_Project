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
                <a class="navbar-brand" href="/member/loginOkIndex">used market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <!-- href 수정 @@@@@@@@@@-->
                        <li class="nav-item"><a class="nav-link" href="/member/write">Product Registration</a></li>
                        <li class="nav-item"><a class="nav-link" href="/member/myPage">My Production</a></li>
                        <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
                    </ul>
                </div>
                
    
            </div>
        </nav>

<div class="container" style="margin-top:56px;">

   	<div class="row">

	        <h1 class="my-4">My Page</h1>
		
          		<form>		
				      <div class="form-group">
				        <br/><br/>
				      
				      	<h3>내 정보</h3><hr>
				        <label for="subject">ID</label>
				        <label>${my.u_id}</label>

				      </div>
				      <p></p>
				      <div class="form-group">
				        <label for="subject">Password</label>
				        <label>*********</label>
				      </div>
				      <p></p>
				       <div class="form-group">
				        <label for="subject">Phone</label>
				       <label>${my.u_phone}</label> 
				      </div>
				      <p></p>
				       <div class="form-group">
				        <label for="subject">Name</label>
				        <label>${my.name}</label> 
				      </div>
				      <p></p>
				       <div class="form-group">
				        <label for="subject">Address</label>
				        <label>${my.u_address}</label> 
				        <br/><br/><br/><br/>
				      </div>
				      <p></p>
				      

			      <p></p>
			      
			    </form>
			    
			    <h3>내 주문내역</h3><hr>
			    <table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">구매자</th>
						<th style="background-color: #eeeeee; text-align:center;">상품번호</th>	
						<th style="background-color: #eeeeee; text-align:center;">주문현황</th>						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="buy" items="${buy}">
						<tr>
							<!--@@@@@@@ id는 물품번호 , title은 제목, name은 판매자. 변수 변경해줄것. @@@@@@@@@-->
							<td>${buy.buyer_no}</td> 
							<td><a href ="/mypage?id=${my.u_no}">${buy.product_no}</a></td>
							<td><a href ="/mypage?id=${my.u_no}">${buy.delivery}</a></td> 
						</tr>
					</c:forEach>
				</tbody>
				</table>
				<center><h6>제목을 누르시면 상세내역으로 이동합니다.</h6></center></br></br>
				<h3>내 판매내역</h3><hr>
			    <table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align:center;">상품이름</th>
												
					</tr>
				</thead>
				<tbody>
					<c:forEach var="sell" items="${list}">
						<tr>
							
							
							<td><a href ="/getBoardDetail?id=${dto.u_id}">${sell.p_no}</a></td>
							<%-- <td><a href ="/getBoardDetail?id=${dto.id}">${dto.name}</a></td>  --%>
						</tr>
					</c:forEach>
				</tbody>
				</table>
				
        		        

       	
       	
    	
    </div>
    <!-- /.row -->

</div>

<sec:authorize access="isAuthenticated()"> 
</sec:authorize>










</body>
</html>