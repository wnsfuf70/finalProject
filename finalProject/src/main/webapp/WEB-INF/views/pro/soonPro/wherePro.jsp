<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<html>
<body>
	<c:if test="${cnt == 0}">
		<script type="text/javascript">
			alert("실패");
		</script>
	</c:if>
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
			alert("성공");
			window.location="javascript:parent.change_parent_url('adminMain')";
		</script>
		<%-- <c:redirect url="cartList.vo?id=${memId}"/> --%>
	</c:if>
</body>
</html>