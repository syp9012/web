	$(function(){
		$("#myform").submit(function(){
			if($("input:checkbox[name='site']:checked").length<2){
				alert("사이트 2개를 선택하세요.");
				return false;
			}
		});
	});

