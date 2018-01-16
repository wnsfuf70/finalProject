/**
 * 
 */

$(document).ready(function(){
	$('#modalSearchIcon').click(function(){
		
		
		var searchPhase = JSON.stringify($('#wantSearch').val());
		$.ajax({
			
			url : 'ajaxSearchTest',
			type : 'GET',
			data : {"search" : searchPhase}, /*이걸로 parameter를 컨트롤러로 넘길 수 있다..*/
			
			success : function(msg){
				$('#modalbody').html(msg);
			},
			
			error : function(){
				alert('error');
			}
		});
		
	});
	
	$('#saveCourseBtn').click(function(){
		
		
		var epilogueNo = JSON.stringify($('#epilogueNo').val());
		var dday = JSON.stringify($('#dday').val());
		var location_num = JSON.stringify("14");
		var content = JSON.stringify($('#epilContent').val());
		var visit_order = JSON.stringify("1");
		
		
		var param = {};
		
		param.epilogueNo = epilogueNo;
		param.location_num = location_num;
		param.content = content;
		param.visit_order = visit_order;
		param.dday = dday;
		
		$.ajax({
			url : 'writeEpilCourse',
			type : 'POST',
			data : param,
			
			success : function(msg){
				$('.sidebar-nav').html(msg);
			},
			
			error : function(){
				alert('error');
			}
		});
		
	});
	
});
