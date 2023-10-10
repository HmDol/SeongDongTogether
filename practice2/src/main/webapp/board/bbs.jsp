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
<%@ include file="/header.jsp" %>
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
	
	<%@ include file="/footer.jsp" %>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>
</html>
