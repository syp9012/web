<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	pageContext.setAttribute("pageScope", "pageValue");
	request.setAttribute("requestScope", "requestValue");
%>
<!--  포워드 액션 코드 : 이동한다 --> 
<jsp:forward page="requestTest5Result.jsp"></jsp:forward>
</body>
</html>