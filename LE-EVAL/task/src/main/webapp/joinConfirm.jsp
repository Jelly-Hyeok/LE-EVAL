<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="user.UserDAO"%>

<!DOCTYPE html>
<html>
<head>
<title>강의평가</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- 부트스트랩 CSS 추가 -->
<link rel="stylesheet" href="./css/bootstrap.min.css">
<!-- 커스텀 CSS 추가 -->
<link rel="stylesheet" href="./css/custom.css">
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">

	<a class="navbar-brand" href="index.jsp">강의평가 사이트</a>

	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	<div class="collapse navbar-collapse" id="navbar">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a class="nav-link" href="index.jsp">메인</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" placeholder="내용을 입력하세요." aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>
		</form>
	</div>
</nav>

	<div class="container mt-3" style="max-width: 560px;">
		<div class="alert alert-success mt-4" role="alert">
			회원가입이 완료되었습니다.
		</div>
  	</div>


<footer class="bg-dark mt-4 p-5 text-center" style="color:#FFFFFF;">
		Copyright ⓒ "인덕원교육소" All Rights Reserved.
	</footer>
	
<!-- 제이쿼리 추가 -->
<script src="./js/jquery.min.js"></script>
<!-- Popper 추가 -->
<script src="./js/popper.min.js"></script>
<!-- 부트스트랩 추가 -->
<script src="./js/bootstrap.min.js"></script>

</body>
</html>