<%@ page contentType = "text/html; charset=utf-8" %>

<html>
<head><title>클라이언트 및 서버 정보</title>
<meta charset="utf-8">
</head>
<body>
<%-- 아래 3가지 메소드는 주의해서 볼것. --%>
클라이언트IP = <%= request.getRemoteAddr() %> <br>
요청 URI = <%= request.getRequestURI() %> <br>
컨텍스트 경로 = <%= request.getContextPath() %> <br>


요청정보길이 = <%= request.getContentLength() %> <br>
요청정보 인코딩 = <%= request.getCharacterEncoding() %> <br>
요청정보 컨텐트타입 = <%= request.getContentType() %> <br>
요청정보 프로토콜 = <%= request.getProtocol() %> <br>
요청정보 전송방식 = <%= request.getMethod() %> <br>
서버이름 = <%= request.getServerName() %> <br>
서버포트 = <%= request.getServerPort() %> <br>

</body>
</html>