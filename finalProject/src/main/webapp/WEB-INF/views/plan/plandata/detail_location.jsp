<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../../setting.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="overflow:scroll; width:500px; height:600px; padding:10px;">
		<div class="container">
			<div>
				<table>
				<!-- 재고가 있으면 -->
				<c:if test="${cnt > 0}">
					<c:forEach var="dto" items="${dtos}">
						<tr>
							<td>
								<img src="${images}${dto.images}">
							</td>
						</tr>
					</c:forEach>
				</c:if>
				
				<c:if test="${cnt == 0}">	<!-- 재고가 없으면 -->
					<tr>
						<td>
							지역 정보가 없습니다.
						</td>
					</tr>
				</c:if>
				</table>
			</div>
		</div>
	</div>
</body>
</html>