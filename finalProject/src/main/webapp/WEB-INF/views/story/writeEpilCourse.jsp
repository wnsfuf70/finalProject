<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="loec" items="${listOfEpilCourse}">
	<li><p onclick="javascript:window.returnValue='${loec.where.location_name}';window.close()">주소 : ${loec.where.location_name}</p></li>
</c:forEach>