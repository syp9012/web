<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>margin</title>
<style>
p{border:solid 3px blue;}
</style>
</head>
<body>
<h1>★Box model</h1>
<img src="<%=request.getContextPath() %>/image/boxModel.png" 
	style="width:250px;"/>

<pre>
-방향:1개 ⇒ 특정 방향에 값이 적용
margin-top:1개  ⇒ top에 값이 적용
margin-left:1개  ⇒ left에 값이 적용

속성명:1개 ⇒ 사방(top,right,bottom,left)에 균일한 값을 적용
속성명:4개 ⇒ 시계방향(top,right,bottom,left)으로 값을 적용
</pre>

<p style="margin-width:1px;">margin-width:1px</div>
<p style="margin-width:1px 10px;">margin-width:1px 10px</div>
<p style="margin-width:1px 10px 20px;">margin-width:1px 10px 20px</div>
<p style="margin-width:1px 10px 20px 30px;">margin-width:1px 10px 20px 30px</div>

  <p style="margin-top: 10px;
           margin-right: 30px;
           margin-bottom: 50px;
           margin-left: 70px;">
			margin-top: 10px;<br/>
           margin-right: 30px;<br/>
           margin-bottom: 50px;<br/>
           margin-left: 70px;"<br/>
  </p>  

</body>
</html>