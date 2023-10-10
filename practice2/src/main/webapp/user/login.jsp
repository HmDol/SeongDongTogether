<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>JSP 게시판 웹사이트</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css?after" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css?after" />
</head>
<script>
const login = (msg) => {
	alret(msg);
}
</script>
<body>
<%@ include file="/header.jsp" %>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="${pageContext.request.contextPath }/user/login.do" method="post">
					<h3 style="text-align: center;">로그인 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20" autofocus />
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" />
					</div>
					<input type="submit" class="btn btn-primary form-control" value="로그인" onclick="longin(${msg})"/>
					
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
<%@ include file="/footer.jsp" %>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
