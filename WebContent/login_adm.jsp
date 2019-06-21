<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Royal Hotel</title>
<link rel="stylesheet" type="text/css"	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link href="resources/assets/css/material-kit.css?v=2.0.5"	rel="stylesheet" />
<link href="resources/assets/demo/demo.css" rel="stylesheet" />

</head>
<body>
<div class="page-header header-filter" style="background-image: url('resources/assets/img/bg7.jpg'); background-size: cover; background-position: top center;">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-6 ml-auto mr-auto">
          <div class="card card-login">
            
              <div class="card-header card-header-primary text-center">
                <h4 class="card-title">Login</h4>
                <div class="social-line">
                  <a href="#pablo" class="btn btn-just-icon btn-link">
                    <i class="fa fa-facebook-square"></i>
                  </a>
                  <a href="#pablo" class="btn btn-just-icon btn-link">
                    <i class="fa fa-twitter"></i>
                  </a>
                  <a href="#pablo" class="btn btn-just-icon btn-link">
                    <i class="fa fa-google-plus"></i>
                  </a>
                </div>
              </div>
      <!-- login -->  
      <html:form styleClass="form" action="/dangnhap" method="post">
              <div class="card-body">
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="material-icons">face</i>
                    </span>
                  </div>
                  	<html:text property="tenDangNhap" styleClass="form-control" value="hang"></html:text>
					<html:errors property="tenDangNhapError"/>
                </div>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <span class="input-group-text">
                      <i class="material-icons">lock_outline</i>
                    </span>
                  </div>
                  <html:password property="matKhau" styleClass="form-control" value="123"></html:password>
					<html:errors property="matKhauError"/>
                </div>
              
                <div class="input-group-prepend">
					<p style="color: red;">
						<bean:write name="nguoiDungForm" property="thongBao"/>
					</p>

				</div>
              </div>
              <div class="footer text-center">
              <!--   <a href="#pablo" class="btn btn-primary btn-link btn-wd btn-lg">LogIn</a> -->
                <html:submit styleClass="btn btn-primary btn-link btn-wd btn-lg">LOGIN</html:submit>
              </div>
           </html:form>
            
       <!-- end log in -->
          </div>
        </div>
      </div>
    </div>    
 </div>   
 
</body>
</html>