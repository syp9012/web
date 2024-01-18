<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javascript</title>
<!-- external 방식 : 별도의 외부 .js파일에서 사용 -->
<script src="http://localhost:8081/pro1/js/jsEx01.js" type="text/javascript"> </script>
<!-- internal 방식 : 웹문서 head 태그 내부에서 선언 -->
<script type="text/javascript">
	alert("internal방식-alert()");
</script>
</head>
<body>
	<pre>
	javascript : 동적효과. 유효성 등 
	inline 방식 : tag 에 직접
	internal 방식 : 웹문서 head 태그 내부에서 선언
	external 방식 : 별도의 외부 .js파일에서 사용
	</pre>
	<hr/>
	<button onclick="alert('잘못된 접근입니다.');">버튼</button>
	<hr/>


	<h1>jsEx01.jsp문서</h1>
	절대경로 : http://localhost:8081/pro1/test/jsEx01.jsp</br>
	절대경로 : http://localhost:8081<%=request.getContextPath() %>/test/jsEx01.jsp
<%-- request.getContextPath() : jsp의 request 내장객체의 getContextPath()호출
								요청 주소에서 Context Path를 가져오기. --%>



</body>
</html>

<!--  <script src="경로" type="text/javascript"> </script> -->