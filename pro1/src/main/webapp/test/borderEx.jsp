<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>border</title>
<style>
p{border-style:solid;}
</style>
</head>
<body>
<h1>★Box model</h1>
<img src="<%=request.getContextPath() %>/image/boxModel.png" 
	style="width:250px;"/>

<pre>
border-방향:1개 ⇒ 특정 방향에 값이 적용
border-top:1개  ⇒ top에 값이 적용
border-left:1개  ⇒ left에 값이 적용

속성명:1개 ⇒ 사방(top,right,bottom,left)에 균일한 값을 적용
속성명:4개 ⇒ 시계방향(top,right,bottom,left)으로 값을 적용
</pre>

<p style="border-width:1px;">border-width:1px</div>
<p style="border-width:1px 10px;">border-width:1px 10px</div>
<p style="border-width:1px 10px 20px;">border-width:1px 10px 20px</div>
<p style="border-width:1px 10px 20px 30px;">border-width:1px 10px 20px 30px</div>


<p style="border-color:red;">border-color:red</div>
<p style="border-color:red orange;">border-color:red orange</div>
<p style="border-color:red orange yellow;">border-color:red orange yellow</div>
<p style="border-color:red orange yellow green;">border-color:red orange yellow green</div>

  <p style="border-top-style: dotted;
           border-right-style: solid;
           border-bottom-style: double;
           border-left-style: none;">
    border-top-style: dotted;<br/>
     border-right-style: solid;<br/>
     border-bottom-style: dotted;<br/>
     border-left-style: solid;<br/>
  </p>  

</body>
</html>