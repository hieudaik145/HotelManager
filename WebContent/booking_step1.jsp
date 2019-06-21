<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Booking Royal Hotel</title>

</head>
<body>
	<jsp:include page="header_index.jsp"></jsp:include>
	<!--================Banner Area =================-->
	<div class="container">
		<div class="banner_content text-center">
			<h2>Welcome to our hotel</h2>
			<h6>Relax Your Mind</h6>
		</div>
		<!-- title -->
		<div class="container">
			<div class="row">
				<div id="stepper1" class="bs-stepper">
					<div class="bs-stepper-header" style="margin-left: 13%; width: 100%;">
						<div class="row">
							<div class="col-md-3 active">
								<div class="line"></div>
								<div class="step" >
									<button type="button" class="btn btn-link step-trigger" id="stepper1trigger1">
										<span class="bs-stepper-circle" style="margin-left: -36px;">1</span>
										<span class="bs-stepper-label">THÔNG TIN ĐẶT PHÒNG</span>
									</button>
								</div>
							</div>
							<!-- end step 1 thông tin đặt phòng -->
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step" >
									<button type="button" class="btn btn-link step-trigger" id="stepper1trigger2" >
										<span class="bs-stepper-circle">2</span> <span
											class="bs-stepper-label">CHỌN PHÒNG</span>
									</button>
								</div>
							</div>
							<!-- end step 2 chọn phòng -->
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step" >
									<button type="button" class="btn btn-link step-trigger" id="stepper1trigger3" >
										<span class="bs-stepper-circle" style="margin-left: -36px;">3</span>
										<span class="bs-stepper-label">THÔNG TIN KHÁCH HÀNG</span>
									</button>
								</div>
							</div>
							<!-- end step 3 thông tin khách hàng -->
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step" >
									<button type="button" class="btn btn-link step-trigger"	id="stepper1trigger4" >
										<span class="bs-stepper-circle">4</span> <span
											class="bs-stepper-label">THANH TOÁN</span>
									</button>
								</div>
							</div>
							<!-- end step 4 thanh toán -->
						</div>
					</div>
	<!-- end step header -->
					
					<div class="bs-stepper-content" style="margin-left: 13%;">
							<div   class="content active">
								<div class="row">
									<div class="col-md-8" style="margin: auto;">
										<div class="form-group">
											<div class="input-group">
												<div class="dropdown-booking">
													<logic:notEmpty name="bookingForm" property="maKS">
														<button class=" genric-btn primary radius  dropdown-toggle btn-custom" data-toggle="dropdown" data-khachsan="${bookingForm.maKS }" id="ttpho-dropdown">${bookingForm.tenKS }</button>
														<div class="dropdown-menu booking" id="bookingdiv">
														<input type="text" class="fa fa-search form-search"
															id="myinput" placeholder="Search">
														<logic:iterate id="dsKhachSan" name="bookingForm" property="listKhachSan">
														<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
														<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
														<p class="tentp" data-maks="${maks}"><bean:write name="tenks"/></p>
														</logic:iterate>
														</div>
													</logic:notEmpty>
													<logic:empty name="bookingForm" property="maKS">
														<button class=" genric-btn primary radius  dropdown-toggle btn-custom" data-toggle="dropdown" id="ttpho-dropdown">Chọn
														Thành Phố</button>
													<div class="dropdown-menu booking" id="bookingdiv">
														<input type="text" class="fa fa-search form-search"
															id="myinput" placeholder="Search">
														<logic:iterate id="dsKhachSan" name="bookingForm" property="listKhachSan">
														<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
														<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
														<p class="tentp" data-maks="${maks}"><bean:write name="tenks"/></p>
														</logic:iterate>
													</div>
													</logic:empty>
													
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- end button chon điểm đến -->
								
								<div class="row">
									<div class="col-md-8" style="margin: auto;">
										<div class="col-md-6">
											<div class="form-group">
												<logic:notEmpty name="bookingForm" property="ngayDen" scope="session">
													<input type="date" class="datengayden" value="${bookingForm.ngayDen}" id="datepicker">
												</logic:notEmpty >
												<logic:empty name="bookingForm" property="ngayDen" scope="session">
													<input type="date" class="datengayden" value="${ngayDen}" id="datepicker">
												</logic:empty>
											</div>
										</div>
										<!-- end button chọn ngày đến -->
										<div class="col-md-6"
											style="margin-top: -54px; margin-left: 50%">
											<div class="form-group">
											<logic:notEmpty name="bookingForm" property="ngayDi" scope="session">
												<input type="date" value="${bookingForm.ngayDi }" class="datengaydi"  id="datepicker">
											</logic:notEmpty>
											<logic:empty name="bookingForm" property="ngayDi" scope="session">
												<input type="date"  class="datengaydi"  id="datepicker">
											</logic:empty>
											</div>
										</div>
										<!-- end button chọn ngày đi -->
									</div>
								</div>
								
								<div class="row" style="margin-left: 74%;">
									<div class="col-md-3">
										 <button class="btn btn-primary" id="nextstep1" >Next</button>
									</div>
								</div>
							</div>
							<!-- end step 1 -->
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	 <jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>