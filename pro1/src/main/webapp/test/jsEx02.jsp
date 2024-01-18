<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>javascript</title>
	<script>
		//document.write("js에서 작성1<br/>js에서 write2");
		/*function 함수명(매개변수){ 
			[return 표현식;]
			} 
		*/
		//alert() 실행
		function fun1(){ 
			alert('함수-확인~');
		}
		//콘솔출력(웹 f12 콘솔에 나옴)
		function fun2(){ 
			console.log("click-함수call : 콘솔출력");
		}
		//window.document.id값을 이용하여 내부 특정 getElement에 access 하기. 
		function fun3(){ 
			//let 변수 = 값;
			//window객체의 getElementById(id명)을 호출
			//변수 elementObj에 저장
			//object HTMLSpanElement 객체가 변수 elementObj에 저장
			let elementObj = window.document.getElementById("i1");
		 	alert(elementObj); // object HTMLSpanElement
			console.log(elementObj); 
			elementObj.innerHTML = "함수call:문서<em>내부출력</em>";
			/* alert(elementObj.innerHTML); */
		}
	</script>
</head>
<body>
	<button onclick="fun1();">click-함수 call alert()</button><br/>
	<button onclick="fun2();">click-함수 call console.log()</button><br/>
	<button onclick="fun3();">click-함수 call 문서 내부 출력</button><br/>
	
	<span id ="i1">ASDFAWF</span>
</body>
</html>