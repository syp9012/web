<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="dao.*" %>
<%
 request.setCharacterEncoding("UTF-8");
 
 String id=request.getParameter("memid"); 
 System.out.println("id="+id);		// id="test";
 
 MemberDAOImpl md=new MemberDAOImpl();

 int re=md.checkMemberId(id);
 // re=1  이면 중복ID
 // re=-1 이면 사용가능ID

 // 웹브라우저에 출력되는 값이 callback함수로 리턴된다.
 // out.println(re);
%>
 
<%=re %>

<!-- 
웹브라우저 출력방법 
1. out 객체 사용
2. 표현식 사용 
-->