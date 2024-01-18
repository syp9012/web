<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인덱스</title>
</head>
<body>
<h1>메인페이지(index.jsp)</h1>
절대경로 : http://localhost:8081/pro1/index.jsp </br>
절대경로 : http://localhost:8081/pro1/</br>
절대경로 : http://localhost:8081/pro1</br>

<!-- unordered -->
<ul>
	<li><a href = "http://localhost:8081<%=request.getContextPath() %>/test/ex01.html" target ="_tab">ex01.html 문서 링크 </a></li>
	<li><a href = "http://localhost:8081<%=request.getContextPath() %>/test/cssEx01.jsp">css ex01.jsp</a></li>
	<li><a href = "http://localhost:8081<%=request.getContextPath() %>/test/jsEx01.jsp">js ex01.jsp</a></li>
</ul>

<!-- ordered -->
<ol>
	<li><a href = "./test/ex01.html">ex01.html 문서 링크 </a></li>
	<li><a href = "./test/cssEx01.jsp">css ex01.jsp</a></li>
	<li><a href = "<%=request.getContextPath() %>/test/jsEx01.jsp">js ex01.jsp</a></li>
</ol>

</body>
</html>