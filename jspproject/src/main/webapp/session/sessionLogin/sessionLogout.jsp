<%@ page contentType = "text/html; charset=utf-8" %>

<%	// 세션 삭제
    session.invalidate();
%>

<html>
	<head><title>로그아웃</title></head>
	<body>
	
	<script>
		alert("로그아웃");
		location.href="sessionLoginForm.jsp";
	</script>

	</body>
</html>