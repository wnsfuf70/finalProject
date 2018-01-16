<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${css}bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<form name="plan_form" method="post" action="plan" onsubmit="">

<table border="1">
	<tr>
		<th colspan="2">여행주제</th>
	</tr>
	<tr>
		<td colspan="2">${planTitle}</td>
	</tr>
	<tr>
		<td>일정</td>
		<td rowspan="3" style="width:100px">
			<input type="button" class="btn btn-default" value="상세계획만들기" 
				onclick="window.location='detailplan?startDate='+document.plan_form.startDate.value+'&endDate='+document.plan_form.endDate.value">
		</td>
	</tr>
	
	<tr>
		<td style="width:200px">출발날짜<br> 
			
			<input type="date" name="startDate" class="Sdate">
		</td>
	</tr>
	<tr>
		<td>여행 끝 날짜<br> 
			<input type="date" name="endDate" class="Sdate">
		</td>
	</tr>
	
</table>
</form>	
</body>
</html>