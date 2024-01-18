<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼</title>
<style>
	.c1{width:80px;}
</style>
</head>
<body>
	<h2>formEx02.jsp 문서</h2>
<!-- id가 frm1 폼의 내용들을 ok.jsp 주소표시줄에 보이지 않게 전송 -->

<form id="frm1" action="ok.jsp" method="get">
	<!-- button type="button"은 js등과 연동 -->
	<button type="button">button요소-button</button>
	<button type="reset">button요소-reset</button>
	<button type="submit">button요소-submit</button>
	<input type="image" src="http://localhost:8081/pro1/image/key.png" class="c1"/>
	<input type="submit" value="확인"/>
	<input type="reset" value="취소"/>

	<fieldset>
	<legend>주문자정보</legend>
	<ul>
		
	<li type="circle">
		<label for="name">이름:</label>
		<input type="text" id="name" name="name" size="10" maxlength="10"  placeholder="예:홍길동"/>
	</li>
	<li type="disc">
		<label for="email">이메일:</label>
		<input type="email" id="email" name="email"/>
	</li>
	<li type="square">
		<label for="tel">전화:</label>
		<input type="tel" id="tel" name="tel"/>
	</li>
	<li>
		<label for="url">url:</label>
		<input type="url" id="url" name="url"/>
	</li>
	<li>
		<label for="orderSearch">search:</label>
		<input type="search" id="orderSearch" name="orderSearch"/>
	</li>	
	<li>
		<label for="file">file:</label>
		<input type="file" id="file" name="file"/>
	</li>	
	<li>
	<label for="location">datalist</label>
	  <input list="locations" name="location" id="location">
	  <datalist id="locations">
	    <option value="seoul">
	    <option value="jeju">
	    <option value="guri">
	    <option value="incheon">
	    <option value="busan">
	  </datalist>
  	</li>
	
	
	<li> <!-- 파라미터명=값 -->
		<label for="bno">★hidden:</label>
		<%
		int bno = 300; 
		%>
		<input type="hidden" id="bno" name="bno" value="<%=bno%>"/>
		<!-- input type이 hidden 요소는 화면에 노출되지 않는다.
		개발자가 필요로 하는 데이터는 숨겨서
		서버로 봬는 용도로 사용한다. 예)글번호, 회원번호 등
		
		위의 hidden에 고정되어있는 값이아닌 자바스크립트나 jQuery에 설정된 값으로 동적처리가 가능하다. -->
	</li>	
	</ul>
	</fieldset>
</form>

<p><hr/></p>


<form id="frm2" name="frm2">
	<button type="button" onclick="frmSubmit()">아직은 걍button</button>
	<fieldset>
		<legend>주문&배송정보</legend>
	<ol >
	<li type="A">
		<label for="orderDate">배송일자:</label>
		<input type="date" id="orderDate" name="orderDate"/>
	</li>
	<li type="a">
		<label for="orderDatetime-local">도착일자:</label>
		<input type="datetime-local" id="orderDatetime-local" name="orderDate1"/>
	</li>
	<li type="I">
		<label for="orderMonth">월:</label>
		<input type="month" id="orderMonth" name="orderMonth"/>
	</li>
	<li type="A">
		<label for="orderWeek">주:</label>
		<input type="week" id="orderWeek" name="orderWeek"/>
	</li>
	<li type="i">
		<label for="orderTime">time:</label>
		<input type="time" id="orderTime" name="orderTime"/>	
	</li>
	
	<li type="1">
		<label for="color">color:</label>
		<input type="color" id="color" name="color"/>
	</li>
		<li>
		<label for="orderNumber">:</label>
		<input type="number" id="orderNumber" name="orderNumber" value="10" min="0" max="50" step="2"/>
	</li>
	<li>
		<label for="orderRange">:</label>
		<input type="range" id="orderRange" name="orderRange" value="100" min="0" max="200" step="20"/>
	</li>
	</ol>
	</fieldset>
</form>

<script>
	function frmSubmit(){
		//alert("frmSubmit() 호출");
		//1.폼객체 access
			//let frmObj=window.document.forms;  //object HTMLCollection
			//let frmObj=window.document.forms[0]; //object HTMLFormElement
			//let frmObj=window.document.frm2; //object HTMLFormElement  id가 아닌 name으로 access
			//let frmObj=window.document.getElementById("frm2"); //object HTMLFormElement  document의 메소드를 사용해서 element가져옴
			
			//let frmObj=window.document.querySelectorAll("body table"); //object NodeList
			/* 자바스크립트 document 객체의 querySelectorAll("css선택자") 
			: css선택자를 사용하여 해당하는 모든 요소를 반환ㄴ
			: css선택자에 해당하는 요소가 없으면 빈(empty) NodeList를 반환
			 */
			
			/* 자바스크립트 document 객체의 querySelector("css선택자") 
			: css선택자를 사용하여 특정요소에 접근
			: css선택자에 해당하는 요소가 없으면 null반환
			: 반환된 요소는 단일 요소 */
			let frmObj=window.document.querySelector("body>form#frm2");  // "body form#frm2" 도 가능
			//console.log(frmObj);
			
			//2.접근한 폼객체의 속성,메서드 호출
			//객체.속성명 => 객체의 해당 속성의 값을 가져오기
			frmObj.method="get";
			frmObj.action="ok.jsp"
			//alert(frmObj.action);
			//객체.속성명=값 => 객체의 해당 속성의 값을 설정
			//객체.메서드명()
			
			
			//유효성 검사-필수입력,글자수체크,글자내용,형식 등
			let dateObj = document.querySelector("#orderDate").value; //object HTMLInputElement
			if(dateObj==""){ //날짜데이터가 없으면 
				alert("날짜는 필수입력입니다.");
				return; //함수 종료
			} 
			
			frmObj.submit();
			
	}//function


</script>

<p><br/></p>
<!-- a.value =>a라는 이름의 요소에 접근하여 value속성값을 가져오기
a라는 이름=> name="a"
name="a"의 요소 => input type="range" id="a" name="a" value="50"
a라는 이름의 요소에 접근하여 value속성값을 가져오기=>range의 값 가져오기.

parseInt(a.value) =>range의 값을 정수로 변환

변수 = parseInt(a.value)+값
변수 = parseInt(a.value)+parseInt(b.value)를 변수에 저장

x.value=값
값을 name="x"인 요소의 value 속성의 갑승로 저장

x.value = parseInt(a.value)+parseInt(b.value)
"x"인 요소의 value 속성의 값으로 parseInt(a.value)+parseInt(b.value)를 설정

변수 = 값+값 -->
<form oninput="x.value=parseInt(a.value)+parseInt(b.value)">
  0<input type="range" id="a" name="a" value="50">
  100 +<input type="number" id="b" name="b" value="50">
  =<output name="x" for="a b"></output>
  <!-- for 속성은 대상을 나타낸다. -->
</form>

</body>
</html>