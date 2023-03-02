<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table{
	border : 1px solid red;
	margin : 50px auto;
}
td{
	width : 100px;
	height : 30px;
	text-align: center;
}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String userId = request.getParameter("id");
	String userName = request.getParameter("name");
	String userFood = request.getParameter("foods");
	String userFood2[] = request.getParameterValues("foods2");
	
	String fod = "";
	for(String foods : userFood2){
		fod += foods + "<br>";
	}
%>

<table border="1">
	<tr>
		<td>아이디</td>
		<td><%=userId%></td>
	</tr>
	
	<tr>
		<td>이름</td>
		<td><%=userName%></td>
	</tr>
	
	<tr>
		<td>음식한개</td>
		<td><%=userFood%></td>
	</tr>
	
	<tr>
		<td>음식여러개</td>
		<td><%=fod%></td>
	</tr>
	

</table>
</body>
</html>