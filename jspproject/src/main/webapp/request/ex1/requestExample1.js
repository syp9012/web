	$(function(){
		$("#myform").submit(function(){
			if($("#name").val()==""){
				alert("아이디를 입력하세요.");
				$("#name").focus();
				return false;
			}
			if($("#studentNum").val()==""){
				alert("학번을 입력하세요.");
				$("#studentNum").focus();
				return false;
			}
			if(isNaN($("#studentNum").val())){
				alert("숫자만 입력하세요.");
				$("#studentNum").val("").focus();
				return false;
			}
			if($("input:radio[name='gender']:checked").length < 1){
				alert("성별을 선택하세요.");
				return false;
			}
			if($("#major").val() == "#"){
				alert("전공을 선택하세요.");
				return false;
			}
		});
	});