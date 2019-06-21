<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<!-- Required meta tags -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="resources/resources-booking/image/favicon.png"
	type="image/png">
<title>Royal Hotel</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="resources/resources-booking/css/bootstrap.css">
<link rel="stylesheet"
	href="resources/resources-booking/vendors/linericon/style.css">
<link rel="stylesheet"
	href="resources/resources-booking/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/resources-booking/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
<link rel="stylesheet"
	href="resources/resources-booking/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet"
	href="resources/resources-booking/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="resources/resources-booking/vendors/owl-carousel/owl.carousel.min.css">

<link rel="stylesheet" href="resources/resources-booking/css/style.css">
<link rel="stylesheet"
	href="resources/resources-booking/css/responsive.css">
<link rel="stylesheet"
	href="resources/resources-booking/custom/bs-stepper.min.css">

<link rel="stylesheet"
	href="resources/resources-booking/custom/stylecustom.css" />


<!-- -css table -->
<!--===============================================================================================-->
<link rel="icon" type="resources/resources-booking/css-table/image/png"
	href="resources/resources-booking/css-table/image/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/resources-booking/css-table/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/resources-booking/css-table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/resources-booking/css-table/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/resources-booking/css-table/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/resources-booking/css-table/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/resources-booking/css-table/css/util.css">
<link rel="stylesheet" type="text/css"
	href="resources/resources-booking/css-table/css/main.css">
<!--===============================================================================================-->

<link rel="stylesheet" type="text/css"
	href="resources/resources_adm/jquery-confirm/css/jquery-confirm.css" />
<!-- <script type="text/javascript"
	src="resources/resources_adm/jquery-confirm/js/jquery-3.2.1.min.js"></script>
 -->
<!-- jquery-confirm files -->
</head>
<body>
	<!--================Header Area =================-->
	<header class="header_area">
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<!-- Brand and toggle get grouped for better mobile display -->
				<a class="navbar-brand logo_h" href="index.html"><img
					src="resources/resources-booking/image/Logo.png" alt=""></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse offset"
					id="navbarSupportedContent">
					<ul class="nav navbar-nav menu_nav ml-auto">
						<li class="nav-item active">
						<html:link action="trang-chu.do" styleClass="nav-link">TRANG CHỦ</html:link>
						</li>
						<li class="nav-item"><a class="nav-link" href="aboutus.jsp">KHÁCH SẠN
								</a></li>
						<li class="nav-item"><html:link action="booking-step1"
								styleClass="nav-link">ĐẶT PHÒNG</html:link></li>
						
						<li class="nav-item"><html:link action="lienhe"
								styleClass="nav-link">LIÊN HỆ</html:link></li>
						 <li class="nav-item"><a class="nav-link" href="login_adm.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>ADMIN</a></li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<!--================Header Area =================-->
</body>
</html>