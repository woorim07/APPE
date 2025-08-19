<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입</title>
<style>
* {
	margin: 0;
	padding: 0;
}

section {
	width: 100%;
	height: calc(100vh - 160px);
	background-color: lightgray;
}

section h2 {
	text-align: center;
	padding: 20px;
}
div{
justify-content: center;
display: flex;
}
section table{
text-align: center;
}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<h2>회원가입</h2>
		<div>
		<form action="MemberServlet" method="post">
			<table border="1">
				<tr>
					<td>이름</td>
					<td><input type="text" name="username">
					</td>
				</tr>
				<tr>
					<td>아이디</td>
					<td><input type="text" name="userid">
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="password">
					</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="email">
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<input type="submit" value="가입하기" onclick="checkResv()">
					<input type="button" value="다시쓰기" onclick="checkCust()">
					</td>
				</tr>
			</table>
		</form>
		</div>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	<script type="text/javascript" src="script.js"></script>
</body>
</html>
