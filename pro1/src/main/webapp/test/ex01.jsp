<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ :지시자 directive 
			1)page 지시자 : 현재 jsp 페이지의 속성들을 정의
			2)include 지시자 : jsp 페이지내에 또다른 파일 포함
			3)taglib 지시자 : jsp페이지 내에서 사용된 사용자 태그라이브러리.
 --%>
 
 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제목</title>
</head>
<body>
<% // 스크립트릿(scriptlet) : 자바코드
	String name = "홍길동";
	System.out.println("name = "+name); //console출력
	out.print("<b> b태그 적용한"+name+"</b>"); 
	// browser에 출력. JspWriter 타입 out참조변수 => out객체	
	//jsp라서 태그도 문자열로 지원됨.
%>

	<h1>my First JSP</h1>
	<!-- browser출력 : html 주석문 -->
	<%-- browser출력 : jsp 주석문 --%>
	<%--표현식(expression): 변수값을 브라우저에 출력 <%=변수명> --%>
	<strong>중요함을 표현하고 싶다면 strong 태그 적용한 <%=name %></strong> 님 축하축하~~
	<b><%=name %></b> 님 축하축하~~
</body>
</html>