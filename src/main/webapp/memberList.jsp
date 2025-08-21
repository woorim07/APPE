<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List, model.MemberDAO, model.MemberDTO"%>
<html>
<head>
<title>회원 목록</title>
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
	<h2>회원 목록</h2>
	<div>
	<table border="1">
		<tr>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이메일</th>
		</tr>
		<%
		MemberDAO dao = new MemberDAO();
		List<MemberDTO> members = dao.getAllMembers();
		for (MemberDTO m : members) {
		%>
		<tr>
			<td><%=m.getUsername()%></td>
			<td><%=m.getUserid()%></td>
			<td><%=m.getPassword()%></td>
			<td><%=m.getEmail()%></td>
		</tr>
		<%
		}
		%>
	</table>
	</div>
	</section>
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
