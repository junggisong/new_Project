<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
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