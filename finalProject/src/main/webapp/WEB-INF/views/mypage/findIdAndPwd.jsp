<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %>   
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 비밀 번호 찾기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<body>
<!-- 아이디 비밀번호 찾기 시작  -->
<form action="findIdAndPwdReuslt" method="post" name="find_id">
	<div class="form-group">
		 <label for="name" class="col-md-2 control-label">이름</label>
	</div>

	 <div class="col-md-10">
		<input type="text" name="name" id="name" class="form-control" placeholder="이름을 입력해주세요" value="" style="width:300px">
	</div>

	<div class="form-group">
		 <label for="email" class="col-md-2 control-label">이메일</label>
	</div>

	 <div class="col-md-10">
		<input type="text" name="email1" id="email1" class="form-control" placeholder="이메일을 입력해주세요" value="" style="width:300px">
		@
		<input type="text" name="email2" id="email2" class="form-control" placeholder="이메일을 입력해주세요" value="" style="width:300px">
	</div>

	<!-- 버튼 -->
	<div class="form-group">
		<div class="col-md-offset-6 col-md-5"> <!-- <div class="col-md-offset-10 col-md-9"> -->
			<input type="submit"  name="btnFindIdAndPwd" id="btnFindIdAndPwd" class="btn btn-warning" value="아이디 | 비밀번호 찾기">
		</div>
	</div>
</form>
<!-- 아이디 비밀번호 찾기 종료  -->



	
	<script src="${js}vendor/jquery-1.11.2.min.js"></script>
	<script src="${js}vendor/bootstrap.min.js"></script>

	<script src="${js}isotope.min.js"></script>
	<script src="${js}jquery.magnific-popup.js"></script>
	<script src="${js}jquery.easing.1.3.js"></script>
	<script src="${js}slick.min.js"></script>
	<script src="${js}jquery.collapse.js"></script>
	<script src="${js}bootsnav.js"></script>

	<script src="${js}plugins.js"></script>
	<script src="${js}main.js"></script>
	
	<script type="text/javascript">
		$(window).load(function() {
			$("#btnFindIdAndPwd").click(btnFindIdAndPwd);
			
		});

		function btnFindIdAndPwd(event) {
			
			var name = $("#name");

			if (name.val() == "") {
				alert("이름을 입력하세요");
				return;
			}

			
			var email1 = $("#email1");

			if (email1.val() == "") {
				alert("이메일을 입력 하세요");
				return;
			}
			
			var email2 = $("#email2");

			if (email2.val() == "") {
				alert("이메일을 입력 하세요");
				return;
			}

			$.post("find_idAndPwd.jsp", {
				email1 : email1.val(),
				email2 : email2.val(),
			}, function(data) {
				alert(eval(data).result);
			});
		}
	</script>
</body>
</html>