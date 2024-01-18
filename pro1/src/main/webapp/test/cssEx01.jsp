<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css연습</title>
	<!-- external 방식 : html 문서 외부의 별도의 css 파일과 연결  -->
	<!-- 절대경로 (absolute path) : http://localhost:8081/pro1/test/cssEx01.jsp 
		 상대경로(relative path) : cssEx01.jsp-->
<!--  <link rel="stylesheet" href="http://localhost:8081/pro1/css/cssEx01.css "> -->
 <link rel="stylesheet" href="../css/cssEx01.css ">
	<!-- internal 방식 :  html 문서 내부의 head태그 안에 style 선언 -->
<style>
	/* 	selector {property:value}
		선택자 {속성명:값;속성명:값} 
		선택자 : 태그명, #id명, .class명 */
	/* body{background-color:yellow;}  */
	
</style>

</head>
<body>

     <%-- css 선 inline방식 <태그명 style = "속성명:값> --%>
	<p style="background-color:orange;color:red">block레벨 - 줄전체</p>
	<div class = "c1">div1영역</div>
	<div>div2영역</div>
	<div>div3영역</div>
	<hr/> <!-- 수평선 --> <!-- 단축키 : ctrl + shift + / -->
	<hr/> <!-- 수평선 --> 
	<hr/> <!-- 수평선 --> 
	<p id="i1"> inline레벨 - 1줄안에 다수요소</p>
	<span>span1영역</span>
	<span class = "c1">span2영역</span>
	<hr/> <!-- 수평선 --> 
	
</body>
</html>

<!-- CSS : Cascading Style Sheet. 웹문서 서식 담당. 
	1. inline 방식 : 태그에 직접 style 적용.
	2. internal 방식 : 웹문서 내부 head 태그 안의 style 태그를 이용.
	3. external 방식 : 외부의 css 파일과 연결
	
	선택자에 따라
	1.속성값뒤에 !important 붙인 속성
	2. 인라인방식
	3. #id
	4. .class명
	5. 태그명
	6. 상속된 속성 
-->
