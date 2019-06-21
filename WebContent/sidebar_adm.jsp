<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="resources/resources_adm/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="resources/resources_adm/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    sidebar
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="resources/resources_adm/assets/css/material-dashboard.css?v=2.1.1" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="resources/resources_adm/assets/demo/demo.css" rel="stylesheet" />
</head>
<body>
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="resources/resources_adm/assets/img/sidebar-1.jpg">
        <!--
          Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
  
          Tip 2: you can also add an image using data-image tag
      -->
        <div class="logo">
          <a href="index_adm.jsp" class="simple-text logo-normal">
           	Dream Team
          </a>
        </div>

        <div class="sidebar-wrapper">
          <ul class="nav">

            
            <li class="nav-item ">
	    	<html:link styleClass="nav-link" linkName="" action="/danh-sach-loai-phong"><i class="material-icons">content_paste</i>
            	<p>Quản Lý Loại Phòng</p></html:link>
        	</li>

	    	<li class="nav-item ">
	    	<html:link styleClass="nav-link" linkName="" action="/danh-sach-phong"><i class="material-icons">content_paste</i>
            	<p>Quản Lý Phòng</p></html:link>
        	</li>

        	<li class="nav-item ">
            	<html:link styleClass="nav-link" linkName="" action="/danh-sach-nhanvien"><i class="material-icons">content_paste</i>
            	<p>Quản Lý Nhân Viên</p></html:link>
            	</a>
        	</li>
        	
        	<li class="nav-item ">
	    	<html:link styleClass="nav-link" linkName="" action="/danh-sach-booking"><i class="material-icons">content_paste</i>
            	<p>Check In</p></html:link>
        	</li>
        	
        	<li class="nav-item ">
	    	<html:link styleClass="nav-link" linkName="" action="/danh-sach-booking?command=checkIn"><i class="material-icons">content_paste</i>
            	<p>Check Out</p></html:link>
        	</li>

<!--             <li class="nav-item active  ">
              <a class="nav-link" href="./dashboard.html">
                <i class="material-icons">dashboard</i>
                <p>Dashboard</p>
              </a>
            </li> -->

           <li class="nav-item ">
	    	<html:link styleClass="nav-link" linkName="" action="/danh-sach-doanh-thu"><i class="material-icons">content_paste</i>
            	<p>Thống Kê Khách Hàng </p></html:link>
        	</li>
		
			<li class="nav-item ">
            	<html:link styleClass="nav-link" linkName="" action="/danh-sach-lienhe"><i class="material-icons">content_paste</i>
            	<p>Danh sach lien he</p></html:link>
        	</li>
            <li class="nav-item ">
              <a class="nav-link" href="#">
                <i class="material-icons">notifications</i>
                <p>Notifications</p>
              </a>
            </li>
            <li class="nav-item ">
              <a class="nav-link" href="#">
                <i class="material-icons">language</i>
                <p>RTL Support</p>
              </a>
            </li>
          </ul>
        </div>
      </div>
</body>
</html>