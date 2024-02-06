<%@page import="javaBean.SimpleBean"%>
<%@ page contentType="text/html; charset=utf-8" %>

<% request.setCharacterEncoding("utf-8");%>

<%
	SimpleBean sb1 = new SimpleBean();
//	sb1.msg="hi";		// 접근안됨(private field이기때문에)
	sb1.setMsg("안녕");

%>


<!-- 자바빈 객체를 생성하는 역할 -->
<jsp:useBean id="sb" class="javaBean.SimpleBean" />		<%-- 직접 생성한 클래스를 import 진행 --%>

<!-- 자바빈 클래스의 setter 메소드를 호출해서 값을 heap 메모리에 저장시켜주는 역할  -->
<%-- <jsp:setProperty name="sb" property="msg" /> --%>
<%-- <jsp:setProperty name="sb" property="name" /> --%>
<jsp:setProperty name="sb" property="*" />

<html>
	<body>
	<h1>간단한 자바빈 프로그래밍</h1>
	<br>
<!-- 자바빈 클래스의 getter 메소드를 호출해서 리턴된 필드(프로퍼티)를 웹브라우저에 출력해주는 역할 -->
	이름 : <jsp:getProperty property="name" name="sb"/><br>
	이름 : <%=sb.getName() %><br>
	메시지 : <jsp:getProperty name="sb" property="msg" /><br>
	메시지 : <%=sb.getMsg() %><br>

	</body>
</html>