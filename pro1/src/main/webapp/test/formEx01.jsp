<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
</head>
<body>
	<h1>Form</h1>
	<h3>formEx01.jsp</h3>  <!--  파일명은 외부에 공유하지마라. -->  <!-- 어디로 어떻게 무엇을 -->
	<!-- <form id = "id명" action="서버측페이지"> -->
	<!-- http://localhost:8081/pro1/test/ok.jsp?m_name=hong&m_nickname=별명
									서버측페이지?파라미터명=값&parameter명=값
		m_name=hong
		m_name이라는 파라미터 안에 hong이라는 값이 저장됐다.							
	-->
	<!-- name의 값을 DBMS의 컬럼명과 맞춰주면 좋다.  
	method를 기재하지않으면 default값은 get 이다.-->
	<!--xml에서는 반드시 속성은 값을 가져야한다.  checked도 가능하나, checked="checked"-->
	<!-- autofocus 속성은 커서 깜빡임 autofocus="autofocus" -->
	<!-- label 속성을 이용해서 글자를 눌러도 반응형 웹 주의  -->
	<!-- required="required" 속성은 필수 입력값지정  -->
	<form id="frm01" action="ok.jsp" method="get">
	*이름:<input type="text" name="m_name" placeholder="이름을 입력하세요." /><br/>
	*별명:<input type="text" name="m_nickname" size="10" placeholder="별명입력하세요."/><br/>
	*비번:<input type="password" name="m_pwd" maxlength="10"/><br/>
	*SNS수신여부: 
	<!-- 단일선택 -->
	<input type="radio" id="snsY"  name="sns_yn" value="Y" checked="checked"/><label for="snsY">YES</label>
	<input type="radio" id="snsN" name="sns_yn" value="N"/><label for="snsN">NO</label><br/>
	<!-- checkbox는 배열로 저장. -->
	*취미: 
	<!-- 다중선택 -->
	<input type="checkbox" id="h0" name="hobby" value="sleeping"/><label for="h0">잠자기</label>
	<input type="checkbox" id="h1" name="hobby" value="watching_movie"/><label for="h1">영화보기</label>
	<input type="checkbox" id="h2" name="hobby" value="youtube" checked="checked"/><label for="h2">유튜브</label>
	<input type="checkbox" id="h3" name="hobby" value="reading_book"/><label for="h3">독서</label>
	<input type="checkbox" id="h4" name="hobby" value="shopping"/><label for="h4">쇼핑</label><br/>
	*도시(거주지):
	<!-- 다중선택 -->
	<select id="location" name="location" multiple="multiple" size="10">
		<option value="l0">선택</option>
		<option value="l1" selected="selected">서울시</option>
		<option value="l2">경기도</option>
		<option value="l3">강원도</option>
		<option value="l4">제주특별시</option>
	</select>
	<br/>
	
	*내용:<textarea rows="5" cols="100" name="content">default</textarea>
	<input type="submit" value="확인"/>
	<input type="reset" value="취소"/>
	</form>
</body>
</html>

<!-- HTTP 상태 : 404 요청 페이지를 찾을 수 없다. 

아래는 HTTP(하이퍼텍스트 전송 프로토콜) 응답 상태 코드의 목록이다.

IANA가 현재 공식 HTTP 상태 코드 레지스트리를 관리하고 있다.

모든 HTTP 응답 코드는 5개의 클래스(분류)로 구분된다. 
상태 코드의 첫 번째 숫자는 응답의 클래스를 정의한다. 
마지막 두 자리는 클래스나 분류 역할을 하지 않는다. 
첫자리에 대한 5가지 값들은 다음과 같다:

1xx (정보): 요청을 받았으며 프로세스를 계속한다
2xx (성공): 요청을 성공적으로 받았으며 인식했고 수용하였다
3xx (리다이렉션): 요청 완료를 위해 추가 작업 조치가 필요하다
4xx (클라이언트 오류): 요청의 문법이 잘못되었거나 요청을 처리할 수 없다
5xx (서버 오류): 서버가 명백히 유효한 요청에 대해 충족을 실패했다
-->