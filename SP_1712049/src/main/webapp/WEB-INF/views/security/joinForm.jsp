<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>boardList</title>

<!-- Bootstrap core CSS -->
<link href="/resource/css/styles.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/resource/css/codingBooster.css">

</head>
<body>
	
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="/">Used Market</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    
                        <li class="nav-item"><a class="nav-link" href="/security/joinForm">Join</a></li>
                        <li class="nav-item"><a class="nav-link" href="/loginForm">Login</a></li>
                    </ul>
                </div>
                
    
            </div>
        </nav>
 	<!-- 시작 -->
 	<div class="container">
		<div class="row">
		<form action ="/userSave" method="post">
			<table class="table table-striped" style="text-align: center; boarder: 1px solid #dddddd">
				<thead>
					<tr>
						<th colsapn="2" style="background-color: #eeeeee; text-align:center;">회원가입</th>					
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="id" class="form-control" placeholder ="아이디"></td>
					</tr>
					<tr>
						<td><input type="text" name="pwd" class="form-control" placeholder ="비밀번호"></td>
					</tr>
					<tr>
						<td><input type="text" name="name" class="form-control" placeholder ="이름"></td>
					</tr>
					<tr>
						<td><input type="text" name="phone" class="form-control" placeholder ="전화번호"></td>
					</tr>
					<tr>
						<td><input type="text" name="address" class="form-control" placeholder ="주소"></td>
					</tr>
					<tr>
						<td><input type="text" name="authority" class="form-control" placeholder ="회원,평가단,관리자"></td>
					</tr>
					
				</tbody>
			</table>
			<input type="submit" value ="가입하기" class="btn btn-info " onClick="location.href='/member/welcome'"></a></br>
			</form>
		</div>
	</div>
 	<hr>
	<!-- 끝 -->
 	<footer style="background-color: #000000; color: #ffffff">
 		<div class="container">
 			<br>
 			<div class="row">
 				<div class="col-sm-2" style="text-align:center;"><h5>Capstone Design &copy; 2021</h5><h5>송중기(1712049)</h5></div>
 				<div class="col-sm-4"><h4>개발자의 한마디</h4><p>소스코드 공유, 아이디어 참조 및 학습을 위하여 만든 페이지이니 유용하게 쓰시기 바랍니다.</p></div>
 				<div class="col-sm-2"><h4 style="text-align: center;">카테고리</h4>
 					<div class="list-group">
 						<a href="/" class="list-group-item">소개</a>
 						<a href="lect.html" class="list-group-item">강의자료</a>
 						<a href="/member/welcome" class="list-group-item">소스코드 공유</a>
 					</div>
 			    </div>
 			    <div class="col-sm-2">
 			    	<div class="list-group"><h4 style="text-align: center;">안내</h4>
 						<a href="http://www.uc.ac.kr/www/index.php?pCode=schenotice" class="list-group-item">학사공지</a>
 						<a href="http://www.uc.ac.kr/www/index.php?pCode=ucnotice" class="list-group-item">대학공지</a>
 						<a href="http://www.uc.ac.kr/www/index.php?pCode=uccm" class="list-group-item">취업공지</a>
 					</div>
 			    </div>
 			    <div class="col-sm-2"><h4 style="text-align: center;"><p><span class="glyphicon glyphicon-ok"></span>&nbsp;</p>Capstone Design</h4>

 			    </div>
 		    </div>
 	    </div>
 	</footer>
 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 	<script src="js/bootstrap.js"></script>
 </body>
</html>