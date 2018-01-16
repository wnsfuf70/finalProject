/**
 * 
 */

$(document).ready(function(){
	
	$('#openWrite').click(function(){
		
		$('#write_mask').css("display", "block");
		$('#write_pop').css("display", "block");
		
	});
	
	$('#closeWrite').click(function(){
		$('#write_mask').css("display", "none");
		$('#write_pop').css("display", "none");
	});
	
});