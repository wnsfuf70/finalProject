<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<html>
<body>
	<c:if test="${cnt == 0}">
		<script type="text/javascript">
			alert("자동차 삭제에 실패하셨습니다.");
		</script>
	</c:if>
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
			alert("차량이 삭제 되었습니다.");
			window.location="rentDeletePage";
		</script>
		<%-- <c:redirect url="cartList.vo?id=${memId}"/> --%>
	</c:if>
</body>
</html>