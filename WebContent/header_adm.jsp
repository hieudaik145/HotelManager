<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="resources/resources_adm/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="resources/resources_adm/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>header</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->

<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

<!-- CSS Files -->
<link
	href="resources/resources_adm/assets/css/material-dashboard.css?v=2.1.1"
	rel="stylesheet" />

<!-- end css admin -->
<link href="resources/resources_adm/assets/css_adm/style.css"
	rel="stylesheet">


<!-- font adm -->
<!-- <link href="resources/resources_adm/assets/fonts" rel="stylesheet"> -->

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/resources_adm/assets/demo/demo.css"
	rel="stylesheet" />


<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">

<!-- CSS Files -->
<link href="resources/assets/css/material-kit.css?v=2.0.5"
	rel="stylesheet" />

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="resources/assets/demo/demo.css" rel="stylesheet" />
<link href="resources/resources_adm/assets/css_adm/jquery-ui.min.css">
<!-- Jquery-confirm 	   -->
<!-- <link rel="stylesheet"
	href="resources/resources_adm/jquery-confirm/demo/libs/bundled.css"> -->
<script
	src="resources/resources_adm/jquery-confirm/demo/libs/bundled.js"></script>
<!-- <link rel="stylesheet"
	href="resources/resources_adm/jquery-confirm/demo/demo.css"> -->
<script>
        var version = '3.3.4';
    </script>
    
	 <link rel="stylesheet" type="text/css"
	href="resources/resources_adm/jquery-confirm/css/jquery-confirm.css" />
<script type="text/javascript"
	src="resources/resources_adm/jquery-confirm/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript"
	src="resources/resources_adm/jquery-confirm/js/jquery-confirm.js"></script>
<!-- jquery-confirm files -->



</head>
<body>
	<!-- Navbar -->
	<div class="main-panel ps-container ps-theme-default "
		data-ps-id="287414e0-5e0f-6933-edaf-268eded04a7f"
		style="position: inherit;">
		<nav
			class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navigation-index" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end">

					<ul class="navbar-nav" style="color: black;">
						
						
						<li class="nav-item dropdown"><a class="nav-link"
							href="#pablo" id="navbarDropdownProfile" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="material-icons">person</i>
								<p class="d-lg-none d-md-block">Account</p>
						</a>
							
							
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownProfile">
								<a class="dropdown-item" href="#"><bean:write name="nguoiDungForm" property="tenDangNhap"/></a> <a
									class="dropdown-item" href="#">Settings</a>
								<div class="dropdown-divider"></div>
							<html:link styleClass="dropdown-item"  action="/log-out">Logout</html:link>
							</div>
							
					
							</li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<!-- End Navbar -->
</body>
</html>