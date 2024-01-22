<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>font</title>
<link href='https://fonts.googleapis.com/css?family=ADLaM Display' rel='stylesheet'>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<style>
h3 {
    font-family: 'ADLaM Display';font-size: 22px;
}
#i1 {font: italic bold 12px/30px Georgia, serif;}
#i2 {font-style: italic;
	font-weight:bold;
	font-size:12px;
	font-height:30px;
	font-family:Georgia, serif;}
</style>
</head>
<body>
	<h3>fonts.googleapis.com/css?family=ADLaM Display 사용</h3>
	<p>적용전 font: italic small-caps bold 12px/30px Georgia, serif;</p>
	<p id="i1">적용후 font: italic bold 12px/30px Georgia, serif;</p>
	<p id="i2">적용후 font: font-style: italic;
	font-weight:bold;
	font-size:12px;
	font-height:30px;
	font-family:Georgia, serif;</p>
	<hr/>
<h1>Font Awesome icon library</h1>

<p>Some Font Awesome icons:</p>
<i class="fas fa-cloud"></i>
<i class="fas fa-heart"></i>
<i class="fas fa-car"></i>
<i class="fas fa-file"></i>
<i class="fas fa-bars"></i>

<p>Styled Font Awesome icons (size and color):</p>
<i class="fas fa-cloud" style="font-size:24px;"></i>
<i class="fas fa-cloud" style="font-size:36px;"></i>
<i class="fas fa-cloud" style="font-size:48px;color:red;"></i>
<i class="fas fa-cloud" style="font-size:60px;color:lightblue;"></i>
	
</body>
</html>