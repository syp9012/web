<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>링크꾸미기</title>
<style>
/* unvisited link */
a:link {
  color: red; text-decoration:none; /* 밑줄 없음*/
}

/* visited link */
a:visited {
  color: green;text-decoration:none; /* 밑줄 없음*/
}

/* mouse over link */
a:hover {
  color: hotpink; text-decoration:underline; /*밑줄*/
}

/* selected link */
a:active {
  color: blue;text-decoration:underline; /*밑줄*/
}
</style>
</head>
<body>

<p>
	<b><a href="https://www.naver.com" target="_blank">네이버link</a></b>
	<b><a href="https://www.daum.net" target="_blank">다음link</a></b>
	<b><a href="https://www.hyundai.com" target="_blank">현대차link</a></b>
</p>
<p><b>note:</b>
참고: a:hover가 효과적이려면 CSS 정의에서 a:link 및 a:visited 뒤에 와야 합니다.
참고: a:active가 효과적이려면 CSS 정의에서 a:hover 뒤에 와야 합니다.
</p>




</body>
</html>