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

	function autoWrite(x){
		if(x==1){
			document.getElementById("delete").value="AIRPLANE_";
			document.getElementById("modify").value="";
		}
		else if(x==2){
			document.getElementById("modify").value="AIRPLANE_";
			document.getElementById("delete").value="";
		}
		return false;
	}
	
	
	function detailSize(){
		
		var x = $("#airplaneSizeSelect option:selected").val();
		
		$("#detailShow").html("");
		if(x=='none'){
			
		}
		else{
			var value = {};
			if(x=='small'){
				value.pri = 2;
				value.high = 8;
				value.nomal = 18;
				value.size = "소형";
				$("#airPlaneView img").attr("src","${images}air/smallAirPlane.png");
			}
			else{
				value.pri = 8;
				value.high = 12;
				value.nomal = 30;
				value.size = "대형";
				$("#airPlaneView img").attr("src","${images}air/largeAirPlane.png");
			}
						
			$("#airPlaneView").modal('show');
			var content = "<label for='airPortSelect'>상세정보</label>"+
	       				  "<ul>"+
	       					"<li>구분 : <span>"+value.size+"</span></li>"+
	        			    "<li>프리미엄 : <span>"+value.pri+"</span></li>"+
	        			    "<li>고급석 : <span>"+value.high+"</span></li>"+
	        			    "<li>일반석 : <span>"+value.nomal+"</span></li>"+
	        			   "</ul>";
			
			$("#detailShow").html(content);
		}
		return false;
			
	}
	
	
	$(function(){
		
		$("#addAirplane").click(function(){
			
			var airplaneName = $("#planeName").val();
			var airplaneSize =  $("#airplaneSizeSelect option:selected").val();
			if(airplaneName && airplaneSize){
				$.ajax({
					url : '${project}addAirPlane?airPlaneName='+airplaneName+"&seatPriceCode="+airplaneSize ,
					type: "GET",
					//data: jsonData,
					contentType: "application/x-www-form-urlencoded; charset=UTF-8",

					success: function(msg) {
						alert("등록완료");
						$("#enableAirplane").append(msg);
					},				
					error: function() {
						alert("error");
					}
				});
				
			}
			else{
				alert("정보를 입력하세요");
			}
			
			return false;
			
		})
		
		//수정
		$("#modifyAirPlaneShow").click(function(){
			
			var airplaneNo = document.getElementById("modify").value;
			
			$.ajax({
				url : '${project}modifyAirPlaneShow?airPlaneNo='+airplaneNo,
				type: "GET",
				contentType: "application/json; charset=UTF-8",
				
				success: function(msg) {
					document.getElementById("modifyNo").value=msg.airPlaneNo;
					document.getElementById("modifyName").value=msg.airPlaneName;
					if(msg.premium==8)
						$("#modifyAirplaneSizeSelect option:eq(2)").prop("selected", true);
					else
						$("#modifyAirplaneSizeSelect option:eq(1)").prop("selected", true);
				},				
				error: function() {
					alert("error");
				}
			});
			
			$("#modifyAirPlane").modal('show');
			
			return false;
   		})

		
   	
   		
	
	});
	
	

</script>

</head>
<body>

	<center><h2><b>항공기 관리</b></h2></center><br><br>
	
	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<div class="well well-lg">
				<h4><b>항공기 등록</b></h4><br>
				 <form role="form" name="airPlaneInfoForm">
                    <div class="form-group">
                        <label for="inputName">항공기명</label>
                        <input type="text" class="form-control" id="planeName" placeholder="항공기명을 입력하세요" required="required" name="airplaneName">
                    </div>
   					<div class="form-group">
   						<label for="airplaneSizeSelect">항공기 규모 : </label>
                        <select id="airplaneSizeSelect" name="airplaneSize" onchange="detailSize()">
                        	<option value="none">선택</option>
                        	<option value="small">소형</option>
                        	<option value="large">대형</option>
                        </select>
   					</div>
   					
   					<div class="form-group">
   						<div id="detailShow">
   							
   						</div>
   					</div>
					   					
                    <div class="form-group text-center">
                        <button id="addAirplane" class="btn btn-primary">
                           	등록하기<i class="fa fa-check spaceLeft"></i>
                        </button>
                    </div>
                </form>
                </div>
              </div>
              
              <div class="col-md-4">
	              <div class="well well-lg">
					<h4><b>등록한 항공기 삭제</b></h4><br>
					 <form role="form" name="airPlaneInfoForm" action="deleteAirplane" method="POST">
	                    <div class="form-group">
	                        <label for="inputNo">항공기번호</label>
	                        <input type="text" class="form-control" id="delete" onclick="autoWrite(1)" placeholder="항공기번호를 입력하세요" required="required" name="deleteNo">
	                    </div>
	   					
	                    <div class="form-group text-center">
	                        <button id="addAirplane" class="btn btn-primary">
	                           	삭제하기<i class="fa fa-check spaceLeft"></i>
	                        </button>
	                    </div>
	                </form>
	              </div>
	          </div>
              
              <div class="col-md-4">
	              <div class="well well-lg">
					<h4><b>등록 정보 수정</b></h4><br>
					 <form role="form" name="airPlaneInfoForm">
	                    <div class="form-group">
	                        <label for="inputNo">항공기번호</label>
	                        <input type="text" class="form-control" id="modify" onclick="autoWrite(2)" placeholder="항공기번호를 입력하세요" required="required" name="modifyNo">
	                    </div>
	   					
	                    <div class="form-group text-center">
	                        <button id="modifyAirPlaneShow" class="btn btn-primary">
	                           	수정하기<i class="fa fa-check spaceLeft"></i>
	                        </button>
	                    </div>
	                </form>
	              </div>
              </div>
              
		</div>
		
		<div class="row">
			<div class="col-md-12">
				<h4><b>등록된 항공기</b></h4>
					<div class="enableAirplane">
						<table id="enableAirplane" class="table">
							<thead>
							<tr>
								<td>항공기번호</td>
								<td>항공기명</td>
								<td>프리미엄석</td>
								<td>고급석</td>
								<td>일반석</td>
								<td>총 좌석수</td>
								<td>사이즈</td>
								<td>운행가능여부</td>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="i" items="${airPlaneList}">
								<tr>
									<td>${i.airPlaneNo }</td>
									<td>${i.airPlaneName }</td>
									<td>${i.premium }</td>
									<td>${i.highClass }</td>
									<td>${i.nomal }</td>
									<td>${i.seatPriceCode}</td>
									<td>
										<c:if test="${i.seatPriceCode=='28'}">소형</c:if>
										<c:if test="${i.seatPriceCode=='50'}">대형</c:if>
									</td>
									<td>
										<c:if test="${i.routeNo==null}">운항가능</c:if>
										<c:if test="${i.routeNo!=null}">노선배정</c:if>
									</td>
								</tr>						
							</c:forEach>
							</tbody>
						</table>
					</div>
			</div>
		</div>
		
	</div>
	

  <!-- Modal 항공도면보기-->
  <div class="modal fade" id="airPlaneView" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">항공기</h4>
        </div>
        <div class="modal-body">
         	<img alt="항공기이미지" src="" width="100%" height="100%">
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Modal -->
  
  <!-- Modal 정보수정 모달 -->
  <div class="modal fade" id="modifyAirPlane" role="dialog">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">항공기 정보수정</h4>
        </div>
        <div class="modal-body">
			<form role="form" name="airPlaneModifyForm" action="modifyAirPlane" method="POST">
                <input type="hidden" id="modifyNo" name="modifyAirPlaneNo">
                <div class="form-group">
                    <label for="modifyName">항공기명</label>
                    <input type="text" class="form-control" id="modifyName" placeholder="항공기명을 입력하세요" required="required" name="modifyAirPlaneName">
                </div>
				<div class="form-group">
					<label for="modifyAirplaneSizeSelect">항공기 규모 : </label>
                    <select id="modifyAirplaneSizeSelect" name="modifyAirPlaneSize">
                    	<option value="none">선택</option>
                    	<option value="small">소형</option>
                    	<option value="large">대형</option>
                    </select>
				</div>
		
				<div class="form-group">
					<div id="modifyDetailShow">
						
					</div>
				</div>
	   					
                <div class="form-group text-center">
                    <button type="submit" class="btn btn-primary">
                       	수정하기<i class="fa fa-check spaceLeft"></i>
                    </button>
                </div>
            </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Modal -->
	
</body>
</html>