<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../setting.jsp"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 모달 추가 시작 register -->
	<div class="row">
		<div class="modal" id="register" tabindex="-1">
			<!-- #model로 지정했으므로 id="model" -->
			<div class="modal-dialog" style="z-index: 9999">
				<div class="modal-content" style="height: 950px">
					<div class="modal-header">
						회원가입
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">

						<!-- 회원가입 -->
						<div class="col-md-12">
							<form role="form" action="register" method="post" role="form"
								style="display: block;">
								<div class="form-group">
									<label for="username">사용자 이름</label> <input type="text"
										class="form-control" id="username" placeholder="이름을 입력해 주세요"
										name="name">
								</div>

								<div class="form-group">
									<label for="InputId">아이디</label> <input type="text"
										class="form-control" id="InputId"
										placeholder="아이디(영문+숫자/6~15이내)" required="required"
										name="mem_id" onchange="checkId()">
								</div>

								<div class="form-group">
									<label for="InputPassword1">비밀번호</label> <input type="password"
										class="form-control" id="InputPassword1"
										placeholder="비밀번호(영문+숫자/6~15이내)" required="required"
										name="password">
								</div>

								<div class="form-group">
									<label for="InputPassword2">비밀번호 확인</label> <input
										type="password" class="form-control" id="InputPassword2"
										placeholder="비밀번호 확인" required="required" name="password"
										onchange="checkPwd()">
								</div>

								<div class="form-group">
									<label for="InputEmail">이메일 주소</label> <input type="email"
										class="form-control" id="InputEmail"
										placeholder="E-Mail(비밀번호 분실 시 필요합니다)" required="required"
										name="email">
								</div>

								<div class="form-group">
									<label for="InputBirthday">생년월일</label> <input type="date"
										class="form-control" id="InputBirthday"
										placeholder="생년월일을 선택해 주세요" required="required" name="birth">
								</div>

								<div class="form-group">
									<label for="InputGender">성별</label>&nbsp;&nbsp;&nbsp; <label>
										<input name="sex" type="radio" value="Male" checked>
										남자
									</label> &nbsp;&nbsp;&nbsp; <label><input name="sex"
										type="radio" value="Female"> 여자</label>
								</div>

								<div class="form-group">
									<label for="username">휴대폰 인증</label>
									<div class="input-group">
										<input type="tel" class="form-control" id="InputHp"
											placeholder="- 없이 입력해 주세요" name="phone">
										<!-- username -->
										<span class="input-group-btn">
											<button class="btn btn-success">
												인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i>
											</button>
										</span>
									</div>
								</div>

								<div class="form-group">
									<label for="username">인증번호 입력</label>
									<div class="input-group">
										<input type="text" class="form-control" id="InputReHp"
											placeholder="인증번호"> <span class="input-group-btn">
											<!-- id="username" -->
											<button class="btn btn-success">
												인증번호 입력<i class="fa fa-edit spaceLeft"></i>
											</button>
										</span>
									</div>
								</div>

								<div class="form-group">
									<label>약관 동의</label>
									<div data-toggle="buttons">
										<label class="btn btn-primary active"> <span
											class="fa fa-check"></span> <input id="agree" type="checkbox"
											autocomplete="off" checked>
										</label> <a href="#">이용약관</a>에 동의합니다.
									</div>
								</div>

								<div class="form-group text-center">
									<button type="submit" id="signupbtn" class="btn btn-info">
										회원가입<i class="fa fa-check spaceLeft"></i>
									</button>
									<button type="reset" class="btn btn-warning">
										가입취소<i class="fa fa-times spaceLeft"></i>
									</button>
								</div>

							</form>
						</div>
						<!-- 회원가입 종료 -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 추가 종료 register -->
	
	<script src="${js}bootstrap.green.min.js"></script>
	
	<script type="text/javascript">
	
	// 아이디와 비밀번호가 맞지 않을 경우 가입 버튼 비활성화를 위한 변수 설정
 	var idCheck = 0;
	var pwdCheck = 0;

	// 아이디 중복
/* 	function checkId() {
		
		var inputed =  $('#InputId').val();
		$.ajax({
			data : {
				InputId : inputed
			},
			
			url : "idCheck",
			success : function(data) {
				if(inputed=="" && data =='0') {
					$("#signupbtn").prop("disabled", true);
					$("#signupbtn").css("background-color", "#aaaaaa");
					$("#InputId").css("background-color", "#FFCECE");
					idCheck=0;
				
				} else if(data =='0'){
					$("#InputId").css("background-color", "#B0F6AC");
					idCheck = 1;
					if(idCheck==1 && pwdCheck ==1){
                        $("#signupbtn").prop("disabled", false);
                        $("#signupbtn").css("background-color", "#4CAF50");		
					}
				}else if(data=='1') {
                    $("#signupbtn").prop("disabled", true);
                    $("#signupbtn").css("background-color", "#aaaaaa");		
                    $("#InputId").css("background-color", "#FFCECE");
                    idCheck = 0;
				}
			}
		});
	} */
	
	function checkId() {
		var idPtr = document.getElementById("InputId");
		var idValue = idPtr.value;
		var send_url = "idCheck?id="+idValue; 
		$.ajax({
			
			url:send_url,
			type:'GET',

			success: function(resultCnt) {
				
				if(resultCnt=='0'){
					alert("이미 사용중인 아이디 입니다");
					idPtr.value="";
				}
				else{
					document.getElementById("InputPassword1").focus();
					alert("사용 가능한 아이디 입니다");
				}
			}
			,
			error: function() {
				alert("error");
			}
			
		})
		
	}
	
	// 비밀번호 일치 여부
	function checkPwd() {
		var inputed = $('#InputPassword1').val();
		var reinputed= $('#InputPassword2').val();
		
		if(reinputed == "" && (inputed !=reinputed || inputed == reinputed)) {
			$("#signupbtn").prop("disabled", true);
			$("#signupbtn").css("background-color", "#aaaaaa");
			$("#InputPassword2").css("background-color", "#FFCECE");
		}
		else if(inputed == reinputed) {
			$("#InputPassword2").css("background-color", "#B0F6AC");
			pwdCheck = 1;
			if(idCheck == 1 && pwdCheck ==1) {
				$("#signupbtn").prop("disabled", false);
				$("#signupbtn").css("background-color", "#4CAF50"); 
			}
		} else if(inputed != reinputed) {
			pwdCheck = 0;
			$("#signupbtn").prop("disabled", true);
			$("#signupbtn").css("background-color", "#aaaaaa");	
			$("#InputPassword2").css("background-color", "#FFCECE");
		}
	} 
	
	</script>

</body>
</html>