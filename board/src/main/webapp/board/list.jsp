<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.BoardDataBean"%>
<%@page import="java.util.List"%>
<%@page import="board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
</head>
<body>
<%
	//1. 한 화면(페이지)에 출력할 데이터 갯수.
	int page_size = 10;

	String pageNum=request.getParameter("page");
	if(pageNum == null){
		pageNum = "1";		// 최근 글이 보이는 페이지
	}
	
	// 2. 현재 페이지 번호 
	int currentPage = Integer.parseInt(pageNum);

	// 3. 총 데이터 갯수
	int count = 0;
	
	BoardDBBean dao= BoardDBBean.getInstance();
	count = dao.getCount();
	System.out.println("count:"+ count);
	
	// 파생변수
	// startRow : 각 page에 추출할 데이터의 시작 번호
	// endRow : 각 page에 추출할 데이터의 끝번호
	// page = 1 : startRow=1, endRow = 10
	// page = 2 : startRow=11, endRow = 20
	// page = 3 : startRow=21, endRow = 30
	int startRow =(currentPage-1)*page_size+1;
	int endRow = currentPage *page_size;
	
	List<BoardDataBean> list = null;
	if(count > 0){
		list = dao.getList(startRow, endRow);
	}
	System.out.println("list:"+list);
	
	if(count == 0){
%>
		작성된 글이 없습니다.

<% }else{ %>
		<a href="writeForm.jsp">글작성</a>
		글개수 : <%=count %>
		<table border=1 width=700px align=center>
			<caption>게시판 목록</caption>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자명</th>
				<th>작성일</th>
				<th>조회수</th>
				<th>ip주소</th>
			</tr>
			
<%
			// number : 웹브라우저의 각 페이지에 출력할 시작번호
			int number = count - (currentPage-1)*page_size;
// page=1 		number = 246   - (1-1)*10 = 246
// page=2		number = 246   - (2-1)*10 = 236
			
			SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			
			for(int i=0; i<list.size(); i++){
				BoardDataBean board = list.get(i);
%>			

			<tr>
				<td><%=number-- %></td>		<%-- board.getNum을 사용시 데이터가 지워지게되면 지저분해진다. --%>
				<td><%=board.getSubject() %></td>
				<td><%=board.getWriter() %></td>
				<td><%=sd.format(board.getReg_date()) %></td>
				<td><%=board.getReadcount() %></td>
				<td><%=board.getIp() %></td>
			</tr>
<%			}




%>
			
		</table>


<% } %>
	
	
	
</body>
</html>