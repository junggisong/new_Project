<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
 <head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<link href="/resource/css/styles.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="/resource/css/codingBooster.css">
 </head>
 <body>
 	
 	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">Used Market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    
                        <li class="nav-item"><a class="nav-link" href="/newContent">Product Registration</a></li>
                        <li class="nav-item"><a class="nav-link" href="/mypage">My Production</a></li>
                        <li class="nav-item"><a class="nav-link" href="/loginForm">Logout</a></li>
                    </ul>
                </div>
                
    
            </div>
        </nav>
 	<!-- 시작 -->
 	<div class="container">
		<div class="row">
		<form action ="/boardUpdate2">
			<table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th colsapn="2" style="background-color: #eeeeee; text-align:center;">상품내용 수정</th>					
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="p_no" class="form-control" value="${dto.p_no}"></td>
					</tr>
					<tr>
						<td><input type="text" name="p_name" class="form-control" value="${dto.p_name}"></td>
					</tr>
					<tr>
						<td><textarea name="p_content" class="form-control" placeholder ="${dto.p_content}"></textarea></td>
					</tr>
				</tbody>
			</table>
			<input type="submit" value ="상품수정" class="btn btn-info " onClick="location.href='/member/welcome'"></a></br>
			</form>
		</div>
	</div>
 	<hr>
	
 	  
 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 	<script src="js/bootstrap.js"></script>
 </body>
</html>