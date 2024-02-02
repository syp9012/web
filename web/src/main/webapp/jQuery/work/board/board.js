	$(document).ready(function(){
		$("form").submit(function(){
			if($("#writer").val()==""){
				alert("작성자를 입력하세요.");
				$("#writer").focus();
				return false;
			}
			if($("#passwd").val()==""){
				alert("비밀번호를 입력하세요.");
				$("#passwd").focus();
				return false;
			}
			if($("#passwd").val().length > 8 || 
				$("#passwd").val().length < 2){
				alert("비밀번호는 2~8자 이내로 입력하세요.");
				$("#passwd").val("").focus();
				return false;
			}
			if($("#subject").val()==""){
				alert("제목을 입력하세요.");
				$("#subject").focus();
				return false;
			}
			if($("#subject").val().length>50){
				alert("제목은 50자 이내로 입력하세요.");
				$("#subject").focus();
				return false;
			}
			if($("#content").val()==""){
				alert("내용을 입력하세요.");
				$("#content").focus();
				return false;
			}
			if($("#content").val().length>500){
				alert("내용은 200자 이내로 입력하세요.");
				$("#content").focus();
				return false;
			}
		});		
	});