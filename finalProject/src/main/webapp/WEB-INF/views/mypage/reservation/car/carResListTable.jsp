<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../setting.jsp" %>

<c:forEach var="list" items="${dtos_car}">
<tr>
		<td>${list.seq}</td>
		<td>${list.rental_day} ${list.rental_time}</td>
		<td>${list.return_day} ${list.return_time}</td>
		<td>${list.car_name}</td>
		<td>${list.price}</td>
		<td>${list.payment}</td>
		<td></td>
</tr>
</c:forEach>
<tr>
	<td colspan="7" style="text-align: center;">
		<c:if test="${blockStartNumber_car!=1}">
			<input type="button" value="[◀◀]" onclick="getCarResList('${startPage_car}')">
			<input type="button" value="[◀]" onclick="getCarResList('${blockStartNumber_car-1}')">
		</c:if>
		<c:forEach var="n" begin="${blockStartNumber_car}" end="${blockEndNumber_car}">
			<c:if test="${n!=pageNum_car}">
				<a href="#" onclick="getCarResList('${n}')">${n}</a>
			</c:if>
			<c:if test="${n==pageNum_car}">
				<b>${n}</b>
			</c:if>
		</c:forEach>
		<c:if test="${blockEndNumber_car!=endPage_car}">
			<input type="button" value="[▶]" onclick="getCarResList('${blockEndNumber_car+1}')">
			<input type="button" value="[▶▶]" onclick="getCarResList('${endPage_car}')">
		</c:if>
	</td>
</tr>