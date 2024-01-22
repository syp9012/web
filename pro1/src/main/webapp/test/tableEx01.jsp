<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>table</title>
</head>
<body>
<!-- 
<table align="center" border="1" cellspacing="0" cellpadding="0"  width="400px"> -->
<table style="table-align:center;" border="1" cellspacing="0" cellpadding="0"  width="400px">
	<caption>테이블제목</caption>
	<thead>
		<tr> 
			<th>h1</th>
			<th>h2</th>
			<th>h3</th>
			<th>h4</th>
		</tr>
	</thead>
	
	<tbody>
		<tr style="text-align:center;">
			<td colspan="2">1-1</td>
			<td rowspan="2">1-3</td>
			<td>1-4</td>
		</tr>
		<tr style="text-align:right;">
			<td>2-1</td>
			<td>2-2</td>
			<td>2-4</td>
		</tr>
		<tr>
			<td style="text-align:right;">3-1</td>
			<td style="text-align:right;">3-2</td>
			<td colspan="2" rowspan="2">3-3</td>
		</tr>
		<tr>
			<td>4-1</td>
			<td>4-2</td>
		</tr>
	</tbody>
	<tfoot>
		<tr>
			<td>--</td>
			<td>--</td>
			<td>--</td>
			<td>--</td>
		</tr>
	</tfoot>
</table>
	
	
</body>
</html>