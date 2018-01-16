<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${isInsert!=0}">
	<c:forEach var="loec" items="${listOfEpilCourse}">
		<li><p onclick="javascript:window.returnValue='${loec.where.location_name}';window.close()">주소 : ${loec.where.location_name}</p></li>
	</c:forEach>
</c:if>
<c:if test="${isInsert == null or isInsert == 0}">
	<script>
		alert("코스저장에 실패했습니다. 다시 시도해주세요");
	</script>
</c:if>