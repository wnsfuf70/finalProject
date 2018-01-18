<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<%@ page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${js}vendor/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#oneSearchResult').click(function(){
			
			var targetValue = $("input[type=hidden][name=targetValue]").val();
			
			$("input[type=text][name=searchBar]").val(targetValue);
			
			$('#exampleModalCenter').css("display", "none");
		});
	});
</script>

<div class="searchResultContainer">
	<c:forEach var="where_info" items="${where}">
		<div class="oneSearchResult" id="oneSearchResult" style="border:1px solid gray;">	
			<input id="location_num" name="location_num" type="hidden" value="${where_info.location_num}">
			<p>${where_info.thema_category}</p>
			<p>${where_info.area}</p>
			<p id="targetSearch">${where_info.location_name}<input type="hidden" id="targetValue" name="targetValue" value="${where_info.location_name}"></p>
		</div>
</c:forEach>
</div>