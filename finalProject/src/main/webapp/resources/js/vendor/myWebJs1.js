/**
 * 
 */


var isModify = false;
$(document).ready(function(){
	
	fn_story_dv($("#p_frgn_yn").val());
	
	//임시저장 목록 갯수 가져오기
	$.ajax({
		type:"POST",
		url: "/web/get_count_writing_story.tlg",
		success:function(ajaxData){
			$("#writes .size").text($(ajaxData).find("value").text());
		},
		error:function(msg){
			alert(msg.text());
		} 
	});
	
	$("#temp_delete").click(function(){
		if(!confirm("모두 삭제 하시겠습니까??"))
			return;
		$.ajax({
			type:"POST",
			url: "/web/delete_tlog_editing.tlg",
			data:{"tm_no":"ALL"},
			success:function(ajaxData){
				$("#temp_list_con").empty();
				$("#temp_list_con").append($(ajaxData));
				$("#temp_list_pop").show();
				setDeleteEventSet();
			},
			error:function(msg){
				alert(msg.text());
			} 
		});
	});
	
	
	$("#go_step2").click(function(){
		if($("#tm_title").val()==''){
			alert("여행기 제목을 입력하세요");
			return;
		}else if($("#p_frgn_yn").val()==''){
			alert("여행기 구분을 선택해주세요");
			return;
		}
		
		if($("#isModify").val()!='')
		$("#first_step").attr("action", "/web/tlog_mst_step1_modify.tlg");
		$("#first_step").submit();
	});
	$(".dv_frgn div").click(function(){
		if($('#isModify').val() != '')
			return;
		fn_story_dv($(this).attr("data-frgn"));
	});
});

//임시저장 목록에서 삭제버튼 ( 개별삭제 )
function setDeleteEventSet(){
	$(".temp_data_delete").click(function(){
		if(!confirm("삭제하시겠습니까?"))
			return;
		fn_delete_temp($(this).attr("del_tm_no"));
	});
}

//국내 해외 버튼 클릭시 이미지 표시 및 data setting
function fn_story_dv(sty_dv){
	$(".dv_frgn").find("div").each(function(){
		$(this).removeClass("selected");
	});
	$(".dv_frgn").find("div[data-frgn="+sty_dv+"]").addClass("selected");
	if(sty_dv == 'Y'){
		$("#p_frgn_yn").val('Y');
		
	}	
	else{
		$("#p_frgn_yn").val('N');
		
	}	
}
