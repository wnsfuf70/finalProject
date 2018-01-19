<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../setting.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script type="text/javascript">
		
		function showModalsetSeatPrice(airPlaneNo){
			
			if(confirm("기본가격으로 설정하겠습니까?")){
				document.getElementById("setPriceTargetAirPlane").value=airPlaneNo;
				document.setSeatPriceForm.submit();
				return false;
			}
			else{
				document.getElementById("airPlaneKey_3").innerHTML = airPlaneNo;
				document.customPriceForm.airPlaneNo.value=airPlaneNo;
				$("#setPriceCustomModal").modal('show');
			}
			return false;
		}
		
		function setSeatPriceDetail(airPlaneNo){
			
			$.ajax({
				url : "getSeatPriceInfo?airPlaneNo="+airPlaneNo
				,type : 'GET'
				,success: function(vo) {
					var form = document.setSeatPriceDetailForm;
					
					form.nomal_a.value=vo.nomal_A;
					form.nomal_b.value=vo.nomal_B;
					form.nomal_c.value=vo.nomal_C;
					
					form.highClass_a.value=vo.highClass_A;
					form.highClass_b.value=vo.highClass_B;
					form.highClass_c.value=vo.highClass_C;
					form.premium_a.value=vo.premium_A;
					form.premium_b.value=vo.premium_B;
					form.premium_c.value=vo.premium_C;	
					if(vo.seatPriceCode=='SEATPRICECODE_1'){
						//기본요금
						$("form[name='setSeatPriceDetailForm'] input").prop("readonly",true);							
						$("form[name='setSeatPriceDetailForm'] button[name='okBtn']").css("display","none");
					}
					else if(vo.seatPriceCode!='SEATPRICECODE_1'){
						//설정된요금
						$("form[name='setSeatPriceDetailForm'] input").prop("readonly",false);
						$("form[name='setSeatPriceDetailForm'] button[name='okBtn']").css("display","inline-block");
					}
					
					$("#airPlaneKey_4").html(airPlaneNo);
					form.airPlaneNo.value=airPlaneNo;
					form.seatPriceCode.value=vo.seatPriceCode;
					$("#setSeatPriceDetailModal").modal('show');
				}
				,error: function() {
					alert("error");
				}
			})
			
			
			return false;
		}
		
		function setRouteCancel(planeNo) {
			
			var remainSeat = $("#"+planeNo+"_remainSeat").text();
			var size = $("#"+planeNo+"_size").text();
			
			if(size.trim()=='소형'){
				if(remainSeat != 28){
					alert("운항이 확정되었습니다.");
					return false;	
				}
			}
			else if(size.trim()=='대형'){
				if(remainSeat != 50){
					alert("운항이 확정되었습니다.");
					return false;	
				}
			}
			
			if(confirm("배정을 취소하려면 확인을 누르세요")){
				window.location="setRouteCancel?airPlaneNo="+planeNo;
				return false;
			}
			return false;
		}
		
		function showModalAirplane(planeNo) {
			document.routeSelectForm.airPlaneNo.value = planeNo;
			document.getElementById("airPlaneKey").innerHTML = planeNo;
			document.routeSelectForm.airPlaneNo.value = planeNo;
			$("#startSelect option:eq(0)").prop("selected", true);
			$("#midSelect").find("option").remove();
			$("#endSelect").find("option").remove();
			
			document.getElementById("step1").innerHTML="";
			document.getElementById("step2").innerHTML="";
			document.routeSelectForm.stepOne.value="";
			document.routeSelectForm.stepTwo.value="";
			document.getElementById("totalDistance").innerHTML ="";
			
			$("#routeModifyModal").modal('show');
			return false;
		}
		
		$(function() {
			
			//출발지를 선택한 경우
			$("select[name='startLocation']").change(function() {
				$("#midSelect").find("option").remove();
				$("#endSelect").find("option").remove();
				document.getElementById("step1").innerHTML="";
				document.routeSelectForm.stepOne.value="";
				document.getElementById("step2").innerHTML="";
				document.routeSelectForm.stepTwo.value="";
				document.getElementById("totalDistance").innerHTML ="";
				
				var selected = $("#startSelect option:selected").val();
				
				if(selected=='none'){
					return false;
				}
				
				$('#startSelect option').each( function() {
					if(selected!=$(this).val()){
                    	var value =  $(this).val();
						var text = $(this).text();
						$("#midSelect").append("<option value="+value+">"+text+"</option>");
					}
                
				});
				
				$("#midSelect").append("<option value='direct'>경유지없음</option>");
				//1. 현재 선택된(selected) 값(value) 구하기.
				//$("#startSelect option:selected").val();
				//2. 현재 선택된(selected) 내용 구하기.
				//$("#selBox option:selected").text();
				
				return false;
			})
			
			//경유지 선택한경우
			$("select[name='midLocation']").change(function() {
				
				//도착지 초기화
				$("#endSelect").find("option").remove();
				document.getElementById("totalDistance").innerHTML = "";
				
				//선택된값을 얻는다
				var selected = $("#midSelect option:selected").val();
				
				//선택을 선택한경우 아무작업도 안하고 나간다.
				if(selected=='none'){
					//출발지와 경유지 사이의 거리 출력을 없앤다
					document.getElementById("step1").innerHTML="";
					document.routeSelectForm.stepOne.value="";
					document.getElementById("step2").innerHTML="";
					document.routeSelectForm.stepTwo.value="";
					return false;
				}
				
				//경유지없음을 선택한경우
				else if(selected=='direct'){
					document.getElementById("step1").innerHTML="0km";
					document.routeSelectForm.stepOne.value="0";
					document.getElementById("step2").innerHTML="";
					document.routeSelectForm.stepTwo.value="";
				}
				else{
					
					document.getElementById("step2").innerHTML="";
					document.routeSelectForm.stepTwo.value="";
					//출발지와 경유지 사이의 거리를 구해서 써준다.
					var fromLoc =  $("#startSelect option:selected").text();
					var toLoc = $("#midSelect option:selected").text();
					$.ajax({
						url:"getMoveDistance?from="+fromLoc+"&to="+toLoc,
						type:'GET',
						success:function(distance){
							document.getElementById("step1").innerHTML=distance+"km";
							document.routeSelectForm.stepOne.value=distance;
						}
						,
						error:function(){
							alert("error");
						}
					})
				}
				
				$('#midSelect option').each( function() {
					if(selected!=$(this).val() && $(this).val()!='direct'){
                    	var value =  $(this).val();
						var text = $(this).text();
						$("#endSelect").append("<option value="+value+">"+text+"</option>");
					}
				});
				
				return false;
			})
			
			//도착지를 선택한경우
			$("select[name='endLocation']").change(function() {
				document.getElementById("totalDistance").innerHTML = "";
				//선택된값을 얻는다
				var selected = $("#endSelect option:selected").val();
				//선택을 선택한경우 setp2를 없엔다...
				if(selected=='none'){
					document.getElementById("step2").innerHTML="";
					document.routeSelectForm.stepTwo.value="";
					return false;
				}
				else{
					//선택된 경유지를 가져옴
					var midSelected = $("#midSelect option:selected").val();
					//경유지가 없는경우 출발지부터 도착지까지 거리를 구해서 step2에 뿌린다.
					if(midSelected=='direct'){
						
						var fromLoc =  $("#startSelect option:selected").text();
						var toLoc = $("#endSelect option:selected").text();
						
						$.ajax({
							url:"getMoveDistance?from="+fromLoc+"&to="+toLoc,
							type:'GET',
							success:function(distance){
								document.getElementById("step2").innerHTML=distance+"km";
								document.routeSelectForm.stepTwo.value=distance;
								//총거리를 구해서 하단에 뿌린다.
								var v1 = document.getElementById("step1").innerText;
								var v2 = document.getElementById("step2").innerText;
								v1 = parseFloat(v1.split("km"));
								v2 = parseFloat(v2.split("km"));
								var total = v1+v2;
								document.getElementById("totalDistance").innerHTML = total + "km";						
							}
							,
							error:function(){
								alert("error");
							}
						})
					}
					//경유지가 있는경우 경유지부터 도착지까지 거기를 구해서 step2에 뿌린다.
					else{
						var fromLoc =  $("#midSelect option:selected").text();
						var toLoc = $("#endSelect option:selected").text();
						
						$.ajax({
							url:"getMoveDistance?from="+fromLoc+"&to="+toLoc,
							type:'GET',
							success:function(distance){
								document.getElementById("step2").innerHTML=distance+"km";
								document.routeSelectForm.stepTwo.value=distance;
								
								//총거리를 구해서 하단에 뿌린다.
								var v1 = document.getElementById("step1").innerText;
								var v2 = document.getElementById("step2").innerText;
								v1 = parseFloat(v1.split("km"));
								v2 = parseFloat(v2.split("km"));
								var total = v1+v2;
								document.getElementById("totalDistance").innerHTML = total + "km";
							}
							,
							error:function(){
								alert("error");
							}
						})
					}
					
				}
				return false;
			})
			//도착지를 선택한 경우
			
		})
		
	
</script>

</head>
<body>
	<h3>항공 운행 정보 수정</h3><br>
	<!-- 출발지 , 경유지 , 도착지를 정한다.
	좌석별 가격을 책정한다.
	운행될 비행기를 정한다.
	총 운행 거리를 출력한다. -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<table class="table"> 
					<thead>
						<tr>
							<td>항공기번호</td>
							<td>항공기명</td>
							<td>남은 좌석수</td>
							<td>사이즈</td>
							<td>노선배정여부</td>
							<td>가격</td>
							<td>운행가능여부</td>
						</tr>
					</thead>
					
					<tbody>
						<c:forEach var="i" items="${voList}">
						<tr>
							<td>${i.airPlaneNo}</td>
							<td>${i.airPlaneName }</td>
							<td id="${i.airPlaneNo}_remainSeat">
								<c:if test="${(i.premium + i.highClass + i.nomal) != 0 }">
									${i.premium + i.highClass + i.nomal}
								</c:if>
								<c:if test="${(i.premium + i.highClass + i.nomal) == 0 }">
									매진
								</c:if>
							</td>
							<td id="${i.airPlaneNo }_size">
								<c:if test="${i.airPlaneSize=='small'}">소형</c:if>
								<c:if test="${i.airPlaneSize=='large'}">대형</c:if>
							</td>
							<td>
								<c:if test="${i.routeNo==null}">
									<button onclick="showModalAirplane('${i.airPlaneNo}')" class="btn btn-outline-info" style="border-color: #7acce4; background-color: white;">노선설정</button>
								</c:if>
								<c:if test="${i.routeNo!=null}">
									<button onclick="setRouteCancel('${i.airPlaneNo}')" class="btn btn-outline-info" style="border-color: #c51a1a; background-color: white;">배정취소</button>
								</c:if>
							</td>
							<td>
								<c:if test="${i.seatPriceCode==null}">
									<button onclick="showModalsetSeatPrice('${i.airPlaneNo}')" class="btn btn-outline-info" style="border-color: #7acce4; background-color: white;">가격책정</button>
								</c:if>
								<c:if test="${i.seatPriceCode!=null}">
									<c:if test="${i.seatPriceCode=='SEATPRICECODE_1'}">
										<button onclick="setSeatPriceDetail('${i.airPlaneNo}')" class="btn btn-outline-info" style="border-color: #c51a1a; background-color: white;">기본요금</button>
									</c:if>
									<c:if test="${i.seatPriceCode!='SEATPRICECODE_1'}">
										<button onclick="setSeatPriceDetail('${i.airPlaneNo}')" class="btn btn-outline-info" style="border-color: #c51a1a; background-color: white;">상세보기</button>
									</c:if>
								</c:if>
							</td>
							<td>
								<c:if test="${!(i.routeNo!=null && i.seatPriceCode!=null)}">
									운영설정바람
								</c:if>
								<c:if test="${i.routeNo!=null && i.seatPriceCode!=null}">
									운행가능
								</c:if>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		
		<div class="row">
			<form action="setSeatPrice" method="POST" name="setSeatPriceForm">
			<div class="col-md-8">
				<input type="hidden" id="setPriceTargetAirPlane" name="airPlaneNo">
				<div class="container-fluid" style="width:100%">
					<h3>기본 요금 설정<small>1km당 요금으로 거리비례하여 요금 산출</small></h3><br>
						<div class="row">
							<div class="col-xs-3">
								
							</div>
							<div class="col-xs-3">
									일반석
							</div>
							<div class="col-xs-3">
									고급석
							</div>
							<div class="col-xs-3">
									프리미엄
							</div>
						</div>
						<div class="well well-lg">
						<div class="row">
							<div class="col-xs-3">
								성인
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="nomal_a" value="${seatPrice.nomal_A }">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="highClass_a" value="${seatPrice.highClass_A }">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="premium_a" value="${seatPrice.premium_A }">
							</div>
						</div>
						</div>
						<div class="well well-lg">
						<div class="row">
							<div class="col-xs-3">
								학생
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="nomal_b" value="${seatPrice.nomal_B }">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="highClass_b" value="${seatPrice.highClass_B }">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="premium_b" value="${seatPrice.premium_B }">
							</div>
						</div>
						</div>
						<div class="well well-lg">
						<div class="row">
							<div class="col-xs-3">
								어린이
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="nomal_c" value="${seatPrice.nomal_C }">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="highClass_c" value="${seatPrice.highClass_C }">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="premium_c" value="${seatPrice.premium_C }">
							</div>
						</div>
						</div>
				</div>
			</div>
			</form>
		</div>
	</div>
	<!-- 모달 -->
	<!-- Modal -->
	<div id="routeModifyModal" class="modal fade" role="dialog">
	  <div class="modal-dialog modal-lg">
	
	    <!-- Modal content-->
	    <div class="modal-content">
	    <form action="setRoute" method="POST" name="routeSelectForm">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">
	        	노선 배정(<span id="airPlaneKey"></span>)
	        </h4>
	      </div>
	      <div class="modal-body">
			
				<input type="hidden" name="airPlaneNo"> 
				<div class="container" style="width:100%">
					<h3><span class="glyphicon glyphicon-flag"></span>경로설정</h3><br>
					<div class="well well-lg" style="background-color: white; border-color: cornflowerblue;">
						<div class="row">
							<div class="col-xs-3">
								<div class="well well-lg">
								<h4>출발지</h4><br>
									<select class="form-control" name="startLocation" id="startSelect">
										<option value="none">선택</option>
										<c:forEach var="i" items="${airPortList }">
										<option value="${i.airportNo}">${i.airportName}</option> 
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="col-xs-1">
								<div style="position: relative;">
									<div style="position: absolute; top: 50px; left:-5px;">
										<span class="glyphicon glyphicon-forward"></span>
										<span class="glyphicon glyphicon-forward"></span>
										<div id="step1"></div>
										<input type="hidden" name="stepOne">
									</div>
								</div>
							</div>
							<div class="col-xs-3">
								<div class="well well-lg">
								<h4>경유지</h4><br>
									<select class="form-control" name="midLocation" id="midSelect">
									</select>
								</div>
							</div>
							<div class="col-xs-1">
								<div style="position: relative;">
									<div style="position: absolute; top: 50px; left:-5px;">
										<span class="glyphicon glyphicon-forward"></span>
										<span class="glyphicon glyphicon-forward"></span>
										<div id="step2"></div>
										<input type="hidden" name="stepTwo">
									</div>
								</div>
							</div>
							<div class="col-xs-3">
								<div class="well well-lg">
								<h4>도착지</h4><br>
									<select class="form-control" name="endLocation" id="endSelect">
									</select>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				
			<hr>
			<div>
				<span class="glyphicon glyphicon-road"></span>&nbsp;총비행거리  : <span id="totalDistance"></span>
			</div>
			<hr>
			<!--  -->
				<div class="container">
				    <div class="col-sm-6" style="height:130px;">
				        <div class="form-group">
				        	<h6><span class="glyphicon glyphicon-time"></span>
				        		출발일시
				        	</h6>
				            <div class='input-group date' id='datetimepicker10'>
				                <input type='datetime-local' class="form-control" name="startTime" />
				                <span class="input-group-addon">
				                    <span class="glyphicon glyphicon-calendar">
				                    </span>
				                </span>
				            </div>
				        </div>
				    </div>
				</div>
			<!--  -->
	      </div>
	      <div class="modal-footer">
	      	<button type="submit" class="btn btn-default">OK</button>
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	      </form>
	    </div>
	
	  </div>
	</div>
	<!-- 모달 -->
	
	<!-- 가격 책정 모달 -->
	<!-- Modal -->
	<div id="setPriceCustomModal" class="modal fade" role="dialog">
	  <div class="modal-dialog modal-lg">
	
	    <!-- Modal content-->
	    <div class="modal-content">
	    <form action="setCustomSeatPrice" method="POST" name="customPriceForm">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">
	        	가격 책정(<span id="airPlaneKey_3"></span>)
	        </h4>
	      </div>
	      <div class="modal-body">
			
				<input type="hidden" name="airPlaneNo"> 
				<div class="container" style="width:100%">
					<h3>요금 설정<small>1km당 요금으로 거리비례하여 요금이 산출된다.</small></h3><br>
						<div class="row">
							<div class="col-xs-3">
								
							</div>
							<div class="col-xs-3">
									일반석
							</div>
							<div class="col-xs-3">
									고급석
							</div>
							<div class="col-xs-3">
									프리미엄
							</div>
						</div>
						<div class="well well-lg">
						<div class="row">
							<div class="col-xs-3">
								성인
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="nomal_a" >
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="highClass_a">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="premium_a" >
							</div>
						</div>
						</div>
						<div class="well well-lg">
						<div class="row">
							<div class="col-xs-3">
								학생
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="nomal_b" >
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="highClass_b">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="premium_b">
							</div>
						</div>
						</div>
						<div class="well well-lg">
						<div class="row">
							<div class="col-xs-3">
								어린이
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="nomal_c" >
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="highClass_c" >
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="premium_c" >
							</div>
						</div>
					</div>
				</div>
			<hr>
	      </div>
	      <div class="modal-footer">
	      	<button type="submit" class="btn btn-default">OK</button>
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	      </form>
	    </div>
	
	  </div>
	</div>
	<!-- 가격책정모달 -->
	
	<!-- 가격책정상세모달 -->
	<div id="setSeatPriceDetailModal" class="modal fade" role="dialog">
	  <div class="modal-dialog modal-lg">
	
	    <!-- Modal content-->
	    <div class="modal-content">
	    <form action="modifySeatPrice" method="POST" name="setSeatPriceDetailForm">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal">&times;</button>
	        <h4 class="modal-title">
	        	책정된 가격(<span id="airPlaneKey_4"></span>)
	        </h4>
	      </div>
	      <div class="modal-body">
			
				<input type="hidden" name="airPlaneNo">
				<input type="hidden" name="seatPriceCode">
				<div class="container" style="width:100%">
					<h3>요금 설정<small>1km당 요금으로 거리비례하여 요금 산출</small></h3><br>
						<div class="row">
							<div class="col-xs-3">
								
							</div>
							<div class="col-xs-3">
									일반석
							</div>
							<div class="col-xs-3">
									고급석
							</div>
							<div class="col-xs-3">
									프리미엄
							</div>
						</div>
						<div class="well well-lg">
						<div class="row">
							<div class="col-xs-3">
								성인
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="nomal_a" >
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="highClass_a">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="premium_a" >
							</div>
						</div>
						</div>
						<div class="well well-lg">
						<div class="row">
							<div class="col-xs-3">
								학생
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="nomal_b" >
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="highClass_b">
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="premium_b">
							</div>
						</div>
						</div>
						<div class="well well-lg">
						<div class="row">
							<div class="col-xs-3">
								어린이
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="nomal_c" >
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="highClass_c" >
							</div>
							<div class="col-xs-3">
								<input type="text" class="form-control" name="premium_c" >
							</div>
						</div>
					</div>
				</div>
			<hr>
	      </div>
	      <div class="modal-footer">
	      	<button type="submit" class="btn btn-default" name="okBtn">OK</button>
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	      </form>
	    </div>
	  </div>
	</div>
	<!-- 가격책정상세모달 -->
</body>
</html>