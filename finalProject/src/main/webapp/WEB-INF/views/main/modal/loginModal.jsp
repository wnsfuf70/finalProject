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



	<!-- 모달 추가 시작 login -->
	<div class="row">
		<div class="modal" id="login" tabindex="-1">
			<!-- #model로 지정했으므로 id="model" -->
			<div class="modal-dialog" style="z-index: 9999">
				<div class="modal-content">
					<div class="modal-header">
						로그인
						<button class="close" data-dismiss="modal">&times;</button>
					</div>

					<div class="modal-body" style="text-align: center;">
						<center>
							<img src="${images}/Login.png">
						</center>
						<form id="login-form" action="login" method="post" role="form"
							style="display: block;">

							<div class="form-group">
								<input type="text" name="mem_id" id="userId" tabindex="1"
									class="form-control" placeholder="아이디" value="">
							</div>

							<div class="form-group">
								<input type="password" name="password" id="userPassword"
									tabindex="2" class="form-control" placeholder="비밀번호" value="">
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<input type="submit" name="login-submit" id="login-submit"
											tabindex="4" class="btn btn-success" value="로그인">
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-lg-12">
										<div class="text-center">
											<a href="findIdAndPwd" tabindex="5" class="forgot-password">
												아이디 | 비밀번호 찾기</a>
										</div>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 모달 추가 종료 login-->





</body>
</html>