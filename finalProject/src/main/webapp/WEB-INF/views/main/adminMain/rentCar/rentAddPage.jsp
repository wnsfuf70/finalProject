<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//숫자만 입력 받기
	function onlyNumber(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105)
				|| keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39) {
			return;
		} else {
			alert("숫자만 입력해주세요.");
			return false;
		}
	}
	
	// 숫자가 아닐 시 입력 삭제
	function removeChar(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if (keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39) {
			return;
		} else {
			event.target.value = event.target.value.replace(/[^0-9]/g, "");
		}
	}
</script> <!-- 경로 수정해야함 -->
</head>
<body>
	<form action="rentAdd" method="post" name="rentAdd" onsubmit="return addcheck();" enctype="multipart/form-data">
				<table>
					<tr>
						<th>렌트카고유번호</th>
						<td><input type="text" name="rent_no" maxlength="10" required="required"></td>
					</tr>
					<tr>
						<th>사용km</th>
						<td><input type="text" name="use_km" maxlength="10" required="required" onkeydown='return onlyNumber(event)'
						onkeyup='removeChar(event)' style='ime-mode: disabled;'></td>
					</tr>
					<tr>
						<th>자동차수량</th>
						<td><input type="text" name="car_count" maxlength="10" required="required" onkeydown='return onlyNumber(event)' 
						onkeyup='removeChar(event)' style='ime-mode: disabled;'></td>
					</tr>
					<tr>
						<th>보험가능여부</th>
						<td><input type="radio" name="insurance" value="가능" required="required">적용가능</td>
						<td><input type="radio" name="insurance" value="불가능" required="required">불가능</td>
					</tr>
					<tr>
						<th>자동차번호</th>
						<td><input type="text" name="car_num" maxlength="10" required="required"></td>
					</tr>
					<tr>
						<th>이미지</th>
						<td><input type="file" name="car_img" accept="images/car/*" required="required"></td>
					</tr>
					<tr>
						<th colspan="2">
							<input type="submit" name="add" value="추가">
							<input type="reset" name="reset" value="취소">
						</th>
					</tr>
				</table>
			</form>
</body>
</html>