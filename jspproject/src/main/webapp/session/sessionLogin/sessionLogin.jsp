<%@ page contentType = "text/html; charset=utf-8" %>

<%
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    
    if (id.equals(password)) {
        session.setAttribute("MEMBERID", id);	// 세션 설정
%>

		<html>
			<head><title>로그인성공</title></head>
			<body>
				<script>
					alert("로그인 성공");				
					location.href="sessionLoginCheck.jsp";
				</script>
			</body>
		</html>

<%
    } else { // 로그인 실패시
%>

		<script>
			alert("로그인에 실패하였습니다.");
			history.go(-1);		// 이전 파일로 돌아가기
//			history.back();
		</script>
<%
    }
%>
