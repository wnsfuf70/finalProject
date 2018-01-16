<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>
<html>
<body>
	<c:if test="${cnt == 0}">
		<script type="text/javascript">
			alert("투표에 실패했습니다.");
		</script>
	</c:if>
	<c:if test="${cnt != 0}">
		<script type="text/javascript">
			alert("소중한 한표 감사합니다.");
			window.location="detail_view?location_num=${location_num}";
		</script>
		<%-- <c:redirect url="cartList.vo?id=${memId}"/> --%>
	</c:if>
</body>
</html>