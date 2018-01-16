<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>동행 관리자 페이지</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="${js}adminMain/adminMain.js"></script>
 
</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">동행 관리자</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="logout">로그아웃</a></li>
      
      <li><a href="" id="homeManage_click">홈페이지관리</a></li>
      
      <li><a href="" id="siteManage_click">사이트이용관리</a></li>
      
      <li><a href="" id="where_click">여행지관리</a></li>
      
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">예약관리
        <span class="caret"></span>
       	</a>
        <ul class="dropdown-menu">
          <li><a href="#" id="airplane_click">항공</a></li>
          <li><a href="#" id="stay_click">숙박</a></li>
          <li><a href="#" id="car_click">렌트카</a></li>
        </ul>
      </li>

    </ul>
  </div>
</nav>


<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">

  	 <!-- 홈페이지 관리 -->
  	  <div class="homepage_manager">
  	  <h4>홈페이지 관리 메뉴</h4>
      <ul class="nav nav-pills nav-stacked">
        <li><a href="banner" target="contentFrame">배너관리</a></li>
        <li><a href="popup" target="contentFrame">팝업관리</a></li>
      </ul><br>
      </div>
      <!-- 홈페이지관리 -->
      
      <!-- 사이트이용 -->
      <div class="siteuse_manager">
	      <h4>사이트 관리 메뉴</h4>
	      <ul class="nav nav-pills nav-stacked">
	        <li><a href="userManage" target="contentFrame">회원관리</a></li>
	        <li><a href="qnaManage" target="contentFrame">QnA 관리</a></li>
	      </ul><br>
      </div>
      <!-- 사이트이용관리 -->
      
       <!-- 여행지관리 -->
      <div class="where_manager">
      	<h4>여행지 관리 메뉴</h4>
	      <ul class="nav nav-pills nav-stacked">
	        <li><a href="add" target="contentFrame">여행지 추가</a></li>
	        <li><a href="delete" target="contentFrame">여행지 삭제</a></li>
	         <li><a href="modify" target="contentFrame">여행지 수정</a></li>
	      </ul><br>
      </div>
      <!-- 여행지관리 -->
      
        <!-- 예약관리 -->
      <div class="reservation_manager">
	      <div class="reservation_manager_content">
	      </div>
      </div>
      <!-- 예약관리 -->
      
      <!-- 검색바 -->
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search Blog..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
      <!-- 검색바 -->
    </div>
	
	
	
	<!-- 본문 -->
	
	<div class="col-sm-9">

      <div style="position:relative;display:block;height:0;padding:0;overflow:hidden;padding-bottom:56.25%; border:1px solid red">
    		<iframe src="" name="contentFrame" style="position:absolute;top:0;left:0;bottom:0;height:100%;width:100%;border:0;"></iframe>
	  </div>
	  
	 </div>
  </div>
</div> 
	
	<!-- 본문끝 -->
	
	
  </div>
</div>    

	<footer id="footer" class="footer bg-mega">
			<div class="container">
				<div class="row">
					<div class="main_footer p-top-40 p-bottom-30">
						<div class="col-md-6 text-left sm-text-center">
							<p class="wow fadeInRight" data-wow-duration="1s">
								Made with <i class="fa fa-heart"></i> by <a target="_blank"
									href="http://bootstrapthemes.co">Bootstrap Themes</a> 2016. All
								Rights Reserved
							</p>
						</div>
						<div class="col-md-6 text-right sm-text-center sm-m-top-20">
							<ul class="list-inline">
								<li><a href="">Facebook</a></li>
								<li><a href="">Twitter</a></li>
								<li><a href="">Instagram</a></li>
								<li><a href="">Pinterest</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
	</footer>

</body>
</html>
