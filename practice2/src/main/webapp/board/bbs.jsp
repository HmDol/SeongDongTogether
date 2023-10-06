<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>JSP 게시판 웹사이트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css" /><base>

<style>
a, a:hover {
	color: #000;
	text-decoration: none;
}
</style> 

</head>
<body>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a href="main.jsp" class="navbar-brand">JSP 게시판 웹 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li>
					<a href="main.jsp">메인</a>
				</li>
				<li class="active">
					<a href="bbs.jsp">게시판</a>
				</li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						접속하기<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="login.jsp">로그인</a>
						</li>
						<li>
							<a href="join.jsp">회원가입</a>
						</li>
					</ul>
				</li>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
						님<span class="caret"></span>
					</a>
					<ul class="dropdown-menu">
						<li>
							<a href="logoutAction.jsp">로그아웃</a>
						</li>
					</ul>
				</li>
			</ul>

		</div>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #ddd">
				<thead>
					<tr>
						<th style="background-color: #eee; text-align: center;">번호</th>
						<th style="background-color: #eee; text-align: center;">제목</th>
						<th style="background-color: #eee; text-align: center;">작성자</th>
						<th style="background-color: #eee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td></td>
						<td>
							
						</td>
						<td></td>
						<td></td>
					</tr>

				</tbody>
			</table>

			<a href="" class="btn btn-success btn-arrow-left">이전</a>

			<a href="" class="btn btn-success btn-arrow-right">다음</a>

			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
