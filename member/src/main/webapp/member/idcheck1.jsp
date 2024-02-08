<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("utf-8");	
	
	String id = request.getParameter("id");
	System.out.println("id:" + id);
	
	MemberDAO dao = MemberDAO.getInstance();
	int result = dao.memberAuth(id);
	//result : 1(중복 id)
	//result : -1(사용가능한 id)

	// 웹브라우저에 출력되는 값이 callback 함수로 리턴된다.
	out.println(result);
%>