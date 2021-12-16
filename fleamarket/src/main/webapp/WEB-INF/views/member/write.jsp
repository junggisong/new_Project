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
 	<!-- 시작 -->
 	<div class="container">
		<div class="row">
		<form action ="/contentSave">
			<table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th colsapn="2" style="background-color: #eeeeee; text-align:center;"><strong><h2>상품등록</h2></strong></th>					
					</tr>
				</thead>
				<tbody>
				<tr>
						<td>
						<textarea name="p_seller" class="form-control" placeholder ="판매자 : <sec:authentication property="name"/>"></textarea></td>
					</tr>
				<tr>
						<td><textarea name="p_category" class="form-control" placeholder ="카테고리"></textarea></td>
					</tr>
					<tr>
						<td><textarea name="p_name" class="form-control" placeholder ="상품 이름"></textarea></td>
					</tr>
					<tr>
						<td><textarea name="p_price" class="form-control" placeholder ="상품 가격"></textarea></td>
					</tr>
					<tr>
						<td><textarea name="p_content" class="form-control" placeholder ="상품 내용"></textarea></td>
					</tr>

				</tbody>
				
			</table>
			<input type="submit" value ="상품등록" class="btn btn-info " onClick="location.href='/member/welcome'"></a></br>
			</br>
			</form>
			<form action="uploadOk" method="post" enctype="multipart/form-data">
			       	<input type="file" name="filename"> <br />
			        <input type="submit" value="사진 업로드">
			</form>
		</div>
	</div>
 	<hr>
	<!-- 끝 -->
 	
 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 	<script src="js/bootstrap.js"></script>
 </body>
</html>