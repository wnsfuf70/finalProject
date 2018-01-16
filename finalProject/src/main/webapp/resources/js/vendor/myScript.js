/**
 * 
 */

function fileUpload(){
	
	var formData = new FormData($('#fileUploadTest')[0]);
	
	formData.append("atch_file", $("#atch_file")[0].files[0]);
	
	$.ajax({
		type:'POST',
		url:'writeEpilCourse',
		data : formData,
		processData : false,
		contentType : false,
		success : function(html){
			alert("file uploaded!");
		},
		
		error : function(error){
			alert("file upload is failed!");
			console.log(error);
			console.log(error.status);
		}
	})
}