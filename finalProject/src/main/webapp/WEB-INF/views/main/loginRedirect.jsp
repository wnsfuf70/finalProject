<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>
 
 <c:if test="${cnt==0}">
 	<script type="text/javascript">
 		alert("회원정보가 일치하지 않습니다.");
 		window.history.back();
 	</script>
 </c:if>
 
 <c:if test="${cnt==1}">
 	
 	<c:if test="${token=='user'}">
 		<script type="text/javascript">
 			window.location="main";
 		</script>
 	</c:if>
 	
 	<c:if test="${token=='admin'}">
 		<script type="text/javascript">
 			window.location="adminMain";
 		</script>
 	</c:if>
 	
 </c:if>
 
 
