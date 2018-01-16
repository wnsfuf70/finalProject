<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	
	
	<form action="rentDelete" method="post" name="rentDeleteForm"> 
	<h2>차량삭제</h2>
		<table>
			<tr>
				<th>차량번호</th>
				<td><input type="text" name="car_num" required="required"></td>
				<th><input type="submit" id="rentDel_button" value="확인"></th>
			</tr>
		</table>
	</form>
	
</body>
</html>