<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1{
	color : red;
}
span{
	font-size : 1.5em;
	color : blue;
}
table{
	bolder : 2px dashed green;
}

td{
	width : 300px;
	heigh : 50px;
	text-align: center;
}
</style>
</head>
<body>
<h1>JSP : Java Server Page</h1>
<p>html형식의 문서에 java언어를 사용 할 수 있다. </p>
<p>자바문장을 기술할때는 <span>&lt;% %></span> 기호 사이에 기술한다</p>
<p>처리된 자바변수의 값을 출력시 <span>&lt;%=  %></span> 기호를 이용한다</p>
<%
  //POST방식으로 하면 데이터를 헤더에 붙어서 오기에 별도로 이 문장을써야 한글안깨짐
  request.setCharacterEncoding("utf-8");
  String userId = request.getParameter("id");
  String userPass = request.getParameter("pass");
  String userAge = request.getParameter("age");
  
  //db연결하고  userId와 userPass에 해당하는 사용자를 테이블에서 검색한다
%>

<table border="1">
  <tr>
  	<td>아이디</td>
  	<td><%= userId %></td>
  </tr>
  
  <tr>
  	<td>비밀번호</td>
  	<td><%= userPass %></td>
  </tr>
  
  <tr>
  	<td>나이</td>
  	<td><%= userAge %></td>
  </tr>
  
</table>

</body>
</html>