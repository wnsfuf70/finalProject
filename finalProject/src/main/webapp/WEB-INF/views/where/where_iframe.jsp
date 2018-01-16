<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../setting.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<title>Model page</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="favicon.ico">

<!--Google Fonts link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i"
	rel="stylesheet">


<link rel="stylesheet" href="${css}slick.css">
<link rel="stylesheet" href="${css}slick-theme.css">
<link rel="stylesheet" href="${css}animate.css">
<link rel="stylesheet" href="${css}fonticons.css">
<link rel="stylesheet" href="${css}font-awesome.min.css">
<link rel="stylesheet" href="${css}bootstrap.css">
<link rel="stylesheet" href="${css}magnific-popup.css">
<link rel="stylesheet" href="${css}bootsnav.css">


<!--For Plugins external css-->
<!--<link rel="stylesheet" href="${css}plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="${css}style.css">
<!--<link rel="stylesheet" href="${css}colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="${css}responsive.css" />

<script src="${js}vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body data-spy="scroll" data-target=".navbar-collapse">



	<!--Portfolio Section-->
	<section id="gallery" class="gallery margin-top-120 bg-white">
	<!-- Portfolio container-->
	<div class="container">
		<div class="row">
			<div class="main-gallery main-model roomy-80">
				<div>
					<h2><span style="color: #4cae4c;">${area}</span> ${thema} 장소</h2>
					<div class="separator_left" style="float: left;"></div>
				</div>
				
				<div style="clear: both;"></div>

				<div class="grid models text-center">
					<c:forEach var="vo" items="${vo_spots}">
						<div class="grid-item model-item">
							<img alt=""
								src="${images}where/trip_location/${vo.location_img1}"> <a
								href="javascript:parent.change_parent_url('detail_view?location_num=${vo.location_num}');" class="btn btn-default m-top-20">${vo.location_name}</a>
						</div>
						<!-- End off grid item -->
					</c:forEach>

				</div>

				<div style="clear: both;"></div>

			</div>
		</div>
	</div>
	<!-- Portfolio container end -->
	</section>
	<!-- End off portfolio section -->
	<!-- JS includes -->

	<script src="${js}vendor/jquery-1.11.2.min.js"></script>
	<script src="${js}vendor/bootstrap.min.js"></script>

	<script src="${js}isotope.min.js"></script>
	<script src="${js}jquery.magnific-popup.js"></script>
	<script src="${js}jquery.easing.1.3.js"></script>
	<script src="${js}slick.min.js"></script>
	<script src="${js}jquery.collapse.js"></script>
	<script src="${js}bootsnav.js"></script>


	<!-- paradise slider js -->

	<!--
                <script src="http://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
                <script src="${js}gmaps.min.js"></script>
        
                <script>
                    function showmap() {
                        var mapOptions = {
                            zoom: 8,
                            scrollwheel: false,
                            center: new google.maps.LatLng(-34.397, 150.644),
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
                        var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
                        $('.mapheight').css('height', '350');
                        $('.maps_text h3').hide();
                    }
        
                </script>-->





	<script src="${js}plugins.js"></script>
	<script src="${js}main.js"></script>

</body>
</html>