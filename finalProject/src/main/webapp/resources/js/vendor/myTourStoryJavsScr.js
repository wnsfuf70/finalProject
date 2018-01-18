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
		var location_num = JSON.stringify($('#location_num').val());
		var content = JSON.stringify($('#epilContent').val());
		
		var formData = new FormData();
		
		formData.append('epilogueNo', epilogueNo);
		formData.append('dday', dday);
		formData.append('location_num', location_num);
		formData.append('content', content);
		formData.append('uploadFile', document.getElementById('atch_file').files[0]);
		
		$.ajax({
			url : 'writeEpilCourse',
			type : 'POST',
			data : formData,
			
			processData : false,
			contentType : false,
			
			success : function(msg){
				$('.sidebar-nav').html(msg);
				return false;
			},
			
			error : function(){
				alert('error');
				return false;
			}
			
		});
		
	});
});
