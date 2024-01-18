<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
</head>
<body>
	<form id="noticeForm" action="db.jsp" method="get">
	*아이디:<input type="text" name="n_name" /><br/>
	*비밀번호:<input type="password" name="n_pwd" maxlength="10"/><br/>
	*대상(직급): 
	<!-- 다중선택 -->
	<input type="checkbox" id="h0" name="person" value="p0"/><label for="h0">사원</label>
	<input type="checkbox" id="h1" name="person" value="p1"/><label for="h1">대리</label>
	<input type="checkbox" id="h2" name="person" value="p2"/><label for="h2">과장</label>
	<input type="checkbox" id="h3" name="person" value="p3"/><label for="h3">임원</label>
	<input type="checkbox" id="h4" name="person" value="p4" checked="checked"/><label for="h4">전체</label><br/>
	*카테고리:
	<!-- 다중선택 -->
	<select id="category" name="category" >
		<option value="l0" selected="selected">서비스</option>
		<option value="l1">작업</option>
		<option value="l2">업데이트</option>
		<option value="l3">이벤트</option>
		<option value="l4">공고</option>
	</select>
	<br/>
	*제목:<textarea rows="1" cols="100" name="content">default</textarea><br/>
	
	*내용:<textarea rows="5" cols="100" name="content">default</textarea><br/>
	<input type="submit" value="확인"/>
	<input type="reset" value="취소"/>
	</form>
</body>
</html>