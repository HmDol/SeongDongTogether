<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>JSP 게시판 웹사이트</title>
<link rel="stylesheet" href ="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css"/>
</head>
 
    <script type="text/javascript">
    let req = new XMLHttpRequest();
    req.onload = () => {
    	let obj = JSON.parse(req.responseText); //responseText: {"flag":true}
    	let txt = "중복된 아이디";
    	if(obj.flag){
    		txt = "사용가능한 아이디";
    	}
    	document.getElementById("res").innerHTML = txt;
    }
    const a = () => {
    	let id = document.getElementById("id_texst").value;
    	req.open("get", "${pageContext.request.contextPath}/user/idcheck.do?id="+id);
    	req.send();
    </script>
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
				<li>
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
						<li class="active">
							<a href="join.jsp">회원가입</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form action="${pageContext.request.contextPath}/user/join.do" method="post">
					<h3 style="text-align: center;">회원가입 화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" id="id_text"maxlength="20" />
						<input type="button" id="id_bt" value="중복체크" onclick="a()"><span id="res"></span><br/>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20" />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20" />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="전화번호" name="phoneNum" maxlength="20" />
					</div>
					<div class="form-group" style="text-align: center;">
						<div class="btn-group" data-toggle="buttons">
							<label class="btn btn-primary active">
								<input type="radio" name="userGender" autocomplete="off" value="남자" checked="checked" />
								남자
							</label>
							<label class="btn btn-primary">
								<input type="radio" name="userGender" autocomplete="off" value="여자" />
								여자
							</label>
						</div>
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="50" />
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입" />
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	
	<script src="js/jquery-3.4.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
