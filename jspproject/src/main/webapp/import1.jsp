<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	// 날짜, 시간 관련 클래스
	//1. Date 클래스
	Date d = new Date();
 	
	// 현재 시간을 연,월,일,시,분,초,요일로 출력하세요.
	SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss E요일");

	//2. Timestamp 클래스
	Timestamp ts = new Timestamp(System.currentTimeMillis());
	
%>    

현재시간1 : <%=d%><br>
현재시간2 : <%=sd.format(d)%><br>
현재시간3 : <%=ts %><br>
현재시간4 : <%=sd.format(ts) %><br>
