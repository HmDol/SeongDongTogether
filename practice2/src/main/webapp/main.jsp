<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>JSP 게시판 웹사이트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" />
</head>
<body>
	
	<%@ include file="header.jsp" %>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>성동구 다문화 Together</h1>
				<p>이 웹사이트는 부트스트랩으로 만든 JSP 웹 사이트입니다. 최소한의 간단한 로직만을 이용해서 개발했습니다. 디자인 템플릿으로는 부트스트랩을 이용했습니다.</p>
				<p>
					<a href="#" class="btn btn-primary btn-pull" role="button">자세히 알아보기</a>
				</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div id="myCarousel" class="carousel-slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="https://via.placeholderx.com/1140x600/">
				</div>
				<div class="item">
					<img src="https://via.placeholder.com/1140x600/">
				</div>
				<div class="item">
					<img src="https://via.placeholder.com/1140x600/">
				</div>
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>
				<a class="right carousel-control" href="#myCarousel" data-slide="right">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>
			</div>
		</div>
	</div>
	<%@ include file="/footer.jsp" %>
</body>

</html>
