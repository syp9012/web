<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="member" class="member.MemberDTO"/>
<jsp:setProperty property="*" name="member"/>

<% 
	MemberDAO dao= MemberDAO.getInstance();
	
	// 한 사람의 상세정보(비번) 구하기
	MemberDTO db = dao.getMember(member.getId());
	
	// 비번 비교
	if(db.getPasswd().equals(member.getPasswd())){	//비번일치시
		int result = dao.delete(member.getId());	//delete SQL문 실행
		if(result == 1){
			session.invalidate();	// 세션 삭제
%>
			<script>
				alert("회원탈퇴 성공");
				location.href="loginform.html";
			</script>

<% 		}
	}else{	//비번 불일치시 %>
		<script> 
			alert("비번이 일치하지 않습니다.");
			history.go(-1);
		</script>
<% } %>