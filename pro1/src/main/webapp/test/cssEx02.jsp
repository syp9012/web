<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습</title>
<link rel="stylesheet" href="http://localhost:8081/pro1/css/cssEx02.css">
<style>
/* border-width : 테두리두께;
   border-width : 테두리두께;
   border-style : 테두리모양;
   border 테두리 두께 모양 색상;	
   */
img.img1 {width : 350px;border:0px dotted rgb(100,150,200)}

/*부모요소 > 자식요소*/
/* a요소 자식요소 img가 id="logoImg" 인 요소에 가로크기*/
/*정확한 구조를 알경우 사용*/
/* a>img#logoImg{width:180px;}
body>a>img#logoImg{width:180px;} */

/*부모요소 후손요소 공백이 들어가면 */
/*body 요소의 후손중에 img가 id="logoImg" 인 요소에 가로크기*/
/*구조를 정확하게 모를때도 사용가능하지만 다른 루트의 것들이 사용될수도 있다*/
/* body img#logoImg{width:100px;} */

</style>

</head>
<body>
<h2>cssEx02.jsp</h2>



<xmp>
link : <a href="경로" title="링크설명"> 글자,이미지 등 </a>
이미지 : <img src="경로" alt="이미지설명" title="이미지설명"/>
</xmp>

<h3>http://localhost:8081/pro1/test/cssEx02</h3>
<h3>http://localhost:8081/pro1/image/winter1.jpg</h3>
<hr/>
<a href= "http://localhost:8081/pro1/test/cssEx01.jsp" title="cssEx01로 이동">(절대경로)cssEx01.jsp이동</a>
<a href= "./cssEx01.jsp" title="cssEx01로 이동">(상대경로)cssEx01.jsp이동</a>

<hr/>

<img class = img1 src="http://localhost:8081/pro1/image/winter1.jpg" alt="fox" title="fox at winter" />
<img class = img1 src="http://localhost:8081/pro1/image/winter2.jpg" alt="wolf" title="wolf at winter" />
<img class = img1 src="http://localhost:8081/pro1/image/winter3.jpg" alt="village" title="village at winter" />


<img src="../image/winter1.jpg" alt="fox" title="fox at winter" />
<img src="../image/winter2.jpg" alt="wolf" title="wolf at winter" />
<img src="../image/winter3.jpg" alt="village" title="village at winter" />

<hr/>
숙제 : 임의 site 선정 선정한 사이트 로고를 클릭하면 해당 사이트로 연결</br>
<a href = "https://www.samsung.com/sec/" target ="_blank"><img src="<%=request.getContextPath() %>/image/samsung.jpg" id= "logoImg" alt="samsung" title="삼성전자" taget="_blank, "/> </a>

</body>
</html>