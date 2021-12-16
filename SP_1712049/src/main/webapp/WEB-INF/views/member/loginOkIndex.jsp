<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
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
	<style type="text/css">
		header{
			width:100%;
  			height:100%;
  			height:calc(100% - 1px);
			background-image: url('/images/5.jpg');
 			background-size: cover;
		}
 		.jumbotron{
 			text-shadow: black 0.2em 0.2em 0.2em;
 			color: white;
 		}
 	</style>
  <!-- Navigation -->
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

		<header class="py-5 bg-light border-bottom mb-4">
		<div class="jumbotron">
            <div class="container">
	                <div class="text-center my-5">
	                    <h1 class="fw-bolder">Welcome to our Used Market!</h1></br><h7>중고물품 가격의 객관적 책정과 거래를 도와주는 사이트입니다.</h7>
	                </div>          
            </div>
         </div>
        </header>
        <!-- Page content-->
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                    	<div class="col-lg-6">
                            
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="/images/clothes.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">used</div>
                                    <h2 class="card-title h4">Clothes</h2>
                                    <p class="card-text">중고 의류들을 구입,판매하는 장터입니다.</p>
                                    <a class="btn btn-primary" href="/member/clothesWelcome">Go to store</a>
                                </div>
                            </div>
                            
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="/images/book2.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">used</div>
                                    <h2 class="card-title h4">Book</h2>
                                    <p class="card-text">중고 서적들을 구입,판매하는 장터입니다.</p>
                                    <a class="btn btn-primary" href="member/book">Go to store</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="/images/furniture.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">used</div>
                                    <h2 class="card-title h4">Furniture</h2>
                                    <p class="card-text">중고 가구들을 구입,판매하는 게시판입니다.</p>
                                    <a class="btn btn-primary" href=" ">Go to store</a>
                                </div>
                            </div>
                            
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="/images/electro.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">used </div>
                                    <h2 class="card-title h4">Electronic equipment</h2>
                                    <p class="card-text">각종 중고 전자기기들을 구입,판매하는 게시판입니다.</p>
                                    <a class="btn btn-primary" href=" ">Go to store</a>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                
                <div class="col-lg-4">
                    
                    <div class="card mb-4">
                        <div class="card-header">Search</div>
                        <div class="card-body">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Enter search production" aria-label="Enter search term..." aria-describedby="button-search" />
                                <button class="btn btn-primary" id="button-search" type="button">Go</button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="card mb-4">
                        <div class="card-header">Notice</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href=" ">공지사항</a></li>
                                        <li><a href=" ">이용정책</a></li>
                                        <li><a href=" ">거래 후기</a></li>
                                        <li><a href=" ">중고물품 관련뉴스</a></li> 
                                    </ul>
                                </div>                            
                            </div>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
        
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white"> 실무프로젝트 김환도 송중기</p></div>
        </footer>     
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>       
        <script src="/resource/js/scripts.js"></script>
		<link rel="stylesheet" type="text/css" href="/css/codingBooster.css">

</body>
</html>