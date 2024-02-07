<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page contentType = "text/html; charset=utf-8" %>

<%
    request.setCharacterEncoding("utf-8");
%>

	<% SimpleDateFormat sd = 
		new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E요일"); %>
	

<jsp:useBean id="memberInfo" class="member.MemberInfo" />		<%-- useBean 사용시 import가 내부적으로 일어난다. --%>
<jsp:setProperty name="memberInfo" property="*" />
<jsp:setProperty name="memberInfo" property="password"
                 value="<%= memberInfo.getId() %>" />
<jsp:setProperty name="memberInfo" property="registerDate"
                 value="<%=new Timestamp(System.currentTimeMillis())  %>" />
<html>
		<head><title>가입</title></head>
		<body>

		<table width="400" border="1" cellpadding="0" cellspacing="0">
			<tr><td>아이디</td>
				<td><jsp:getProperty name="memberInfo" property="id" /></td>
				<td>암호</td>
				<td><jsp:getProperty name="memberInfo" property="password" /></td>
			</tr>
			<tr><td>이름</td>
				<td><jsp:getProperty name="memberInfo" property="name" /></td>
				<td>이메일</td>
				<td><jsp:getProperty name="memberInfo" property="email" /></td>
			</tr>
			<tr><td>주소</td>
				<td colspan="3"><jsp:getProperty name="memberInfo" property="address" /></td>
			</tr>
			<tr><td>날짜</td>
				<td colspan="3">
<%-- 				<jsp:getProperty property="registerDate" name="memberInfo"/> --%>
				
				<%=sd.format(memberInfo.getRegisterDate())%></td>
			</tr>
		</table>

		</body>
</html>