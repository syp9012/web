<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.*" %>

<html>
	<head><title>세션 사용 예제</title></head>
	<body>

<%--	//session의 name 값을 모르는 경우
	//열거형 : attr = "id", "passwd"
	Enumeration attr = session.getAttributeNames();

	while(	attr.hasMoreElements()	){
		String attrName = (String)attr.nextElement(); // id
		String attrValue = (String)session.getAttribute(attrName);
		out.println("세션의 속성명은 " + attrName + " 이고 ");
		out.println("세션의 속성값은 " + attrValue + "이다.<br><br>");
	}
--%>


<!-- session의 name값을 알고 있는 경우 -->
<% 
	//Object getAttribute(String name)
	
	String id = (String)session.getAttribute("id");
	String passwd = (String)session.getAttribute("passwd");

%>

ID : <%=id %><br>
비밀번호 : <%=passwd %>
	</body>
</html>
