<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");	
	//Object getAttribute()
	String id = (String) session.getAttribute("id");
	
	if(id!=null){// 세션이 있는 경우(정상적으로 로그인을 한 경우)%>	
		<%=id %>님 환영 합니다.<br><br><br>
		
		<a href="updateform.jsp">정보수정</a> <br>
		<a href="logout.jsp">로그아웃</a><br>
		<a href="deleteform.jsp">회원탈퇴</a><br>

<% }else{ // 세션이 없는 경우(비정상적인 접근) %>			
		<a href="memberform.html">회원가입</a><br>
		<a href="loginform.html">로그인</a><br>
<% } %>