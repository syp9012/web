	$(document).ready(function(){
		$("form").submit(function(){
			if($("#id").val()==""){
				alert("아이디를 입력하세요.");
				$("#id").focus();
				return false;
			}	
			if($("#passwd").val()==""){
				alert("비밀번호를 입력하세요.");
				$("#passwd").focus();
				return false;
			}
		});
	});