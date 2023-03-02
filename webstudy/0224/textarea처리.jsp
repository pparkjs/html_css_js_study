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
	 border-collapse: collapse; /*안쪽 테두리 합치는거*/
	 margin : 50px auto;
}
td{
	width : 250px;
	height : 50px;
	text-align: center;	
}
/* 첫번쨰 td 나타냄 */
td:nth-child(1){
	background-color : pink;
}
div{
	width : 500px;
	border : 1px solid red;
	margin : 50px auto;
	padding : 10px;
	height : 500px;
}
p{
	border : 1px solid blue;
}
p:nth-child(1){
	background-color : pink;
}

p:nth-child(2){
	height : 85%
}
</style>
</head>
<body>
<%
 request.setCharacterEncoding("UTF-8");
 String userName = request.getParameter("name");
 String userId = request.getParameter("id");
 String userTel = request.getParameter("tel");
 String userArea = request.getParameter("area");
 
//   \n을 <br>태그로 바꿔라 그래야 엔터 먹음 앞에꺼 없어도 됨
//  String rep = userArea.replaceAll("\r", "").replaceAll("\n", "<br>");
 	String rep = userArea.replaceAll("\n", "<br>");
 
%>

<table border="1">
	<tr>			
		<td>이름</td>
		<td><%= userName %></td>
	</tr>
	
	<tr>
		<td>아이디</td>
		<td><%= userId %></td>
	</tr>
	
	<tr>
		<td>전화번호</td>
		<td><%= userTel %></td>
	</tr>
	
</table>

<div>
		<p><span>자기소개</span></p>
		<p><span><%= rep %></span></p>
</div>

</body>
</html>








