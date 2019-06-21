<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
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
					<div class="bs-stepper-header"
						style="margin-left: 13%; width: 100%;">
						<div class="row">
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step">
									<button type="button" class="btn btn-link step-trigger"
										id="stepper1trigger1">
										<span class="bs-stepper-circle" style="margin-left: -36px;">1</span>
										<span class="bs-stepper-label">THÔNG TIN ĐẶT PHÒNG</span>
									</button>
								</div>
							</div>
							<!-- end step 1 thông tin đặt phòng -->
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step">
									<button type="button" class="btn btn-link step-trigger"
										id="stepper1trigger2">
										<span class="bs-stepper-circle">2</span> <span
											class="bs-stepper-label">CHỌN PHÒNG</span>
									</button>
								</div>
							</div>
							<!-- end step 2 chọn phòng -->
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step">
									<button type="button" class="btn btn-link step-trigger"
										id="stepper1trigger3">
										<span class="bs-stepper-circle" style="margin-left: -36px;">3</span>
										<span class="bs-stepper-label">THÔNG TIN KHÁCH HÀNG</span>
									</button>
								</div>
							</div>
							<!-- end step 3 thông tin khách hàng -->
							<div class="col-md-3 active">
								<div class="line"></div>
								<div class="step">
									<button type="button" class="btn btn-link step-trigger"
										id="stepper1trigger4">
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

						<!-- step 4 -->
						<div id="test-l-4" class="content active">
							<div class="row">
								<div class="col-md-12">
									<p style="font-size: 55px; margin-left: 20%">ĐẶT PHÒNG CỦA
										BẠN:</p>
								</div>
							</div>
							<bean:define id="khachSan" name="bookingForm" property="khachSan"></bean:define>
							<div class="row row-size">
								<div class="col-md-4">
									<label>VỊ TRÍ: </label>
								</div>
								<div class="col-md-8">
									<span> <bean:write name="khachSan" property="tenTP" /></span>
								</div>
							</div>
							<!-- END row 1: vị trí khách sạn -->
							<div class="row row-size">
								<div class="col-md-4">
									<label>KHÁCH SẠN: </label>
								</div>
								<div class="col-md-8">
									<span> <bean:write name="khachSan" property="tenKS" /></span>
								</div>
							</div>
							<!-- end row 2: tên khách sạn -->
							<div class="row row-size">
								<div class="col-md-4">
									<label>SỐ ĐIỆN THOẠI: </label>
								</div>
								<div class="col-md-8">
									<span><bean:write name="khachSan" property="soDT" /> </span>
								</div>
							</div>
							<!-- end row 3:  số điện thoại -->
							<div class="row row-size">
								<div class="col-md-4">
									<label>NGÀY ĐẾN: </label>
								</div>
								<div class="col-md-8">
									<span> <bean:write name="bookingForm" property="ngayDen" />
									</span> <a class="linkchange" href="#">Thay đổi</a>
								</div>
							</div>
							<!-- end row 4:  ngày đến -->
							<div class="row row-size">
								<div class="col-md-4">
									<label>NGÀY ĐI: </label>
								</div>
								<div class="col-md-8">
									<span> <bean:write name="bookingForm" property="ngayDi" /></span>
									<a class="linkchange" href="#">Thay đổi</a>
								</div>
							</div>
							<!-- end row 5:  ngày đi -->
							<div class="row row-size">
								<div class="col-md-4">
									<label>SỐ ĐÊM: </label>
								</div>
								<div class="col-md-8">
									<span> <bean:write name="bookingForm" property="soDem" /></span>
									<span class="space">ĐÊM </span>
								</div>
							</div>
							<!-- end row 6:  số đêm -->
							<div class="row row-size">
								<div class="col-md-4">
									<label>THÔNG TIN KHÁCH HÀNG: </label>
								</div>
								<div class="col-md-8">
									<span> <bean:write name="bookingForm" property="hoTenKH" /></span><br>
									<span> <bean:write name="bookingForm" property="soDT" /></span><br>
									<span> <bean:write name="bookingForm" property="email" /></span>
								</div>
							</div>
							<!-- end thong tin khách hàng -->
							<div class="row row-size">
								<div class="col-md-4">
									<label>DANH SÁCH PHÒNG BẠN ĐÃ ĐẶT: </label>
								</div>
							</div>
							<logic:iterate id="dsLoaiPhongDaChon" name="bookingForm"
								property="listLoaiPhongDaChon">
								<div class="row">
									<div class="col-md-3">
										<img class="size-img" alt=""
											src="resources/images/loai-phong/${dsLoaiPhongDaChon.image}">
									</div>
									<div class="col-md-4">
										<!-- tên phòng -->
										<p class="step3">${dsLoaiPhongDaChon.tenLoaiPhong }</p>
										<!-- giá tiền -->
										<p class="step3">${dsLoaiPhongDaChon.giaTien }đ/mỗi đêm</p>
										<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
										<a class="xemthem" href="">xem thêm</a>
									</div>
									
									<div class="col-md-3">
										<p class="step3"></p>
									</div>
									<div class="col-md-2">
										<p class="step3">${dsLoaiPhongDaChon.soLuongDat }Phòng</p>
									</div>
								</div>
								<div class="row" style="padding: 10px">
								<div class="col-md-12 line"></div>
							</div>
							</logic:iterate>
							
							<!-- end danh sách phòng đã đặt -->
								<div class="row">
									<html:link styleClass="linkchange fa fa-chevron-left"  style="padding:10px" action="booking-step3.do">Thay đổi
										phòng</html:link>
								</div>
								
							<div class="row" style="width: 100%">
								<div class="col-md-8">
									<h6 class="tongtien">TỔNG TIỀN CẦN THANH TOÁN CỦA BẠN LÀ:</h6>
								</div>
								<div class="col-md-4" style="margin-left: 80%">
									<!-- Tổng tiền cần thanh toán -->
									<span class="tongtien"><bean:write name="bookingForm"
											property="tongTien" /> </span><span class="tongtien">VND</span>
								</div>
							</div>
							<!-- end danh sách phòng đã đặt -->
							<div class="row"
								style="background-color: #afd6e8; margin-top: 10px; padding: 10px;">
								<div class="row" style="width: 100%;">
									<div class="col-md-12">
										<h5>CHỌN PHƯƠNG THỨC THANH TOÁN</h5>
									</div>
								</div>
								<div class="row" style="padding: 5px; width: 100%;">
									<div class="col-md-12 line"></div>
								</div>
								<div class="row" style="width: 100%; padding: 10px;">
									<div class="col-md-12">
										<div class="row" style="width: 100%">
											<ul class="clearfix" style="width: 100%">
												<li style="width: 35%"><label> <input
														type="radio" name="pay" id="radiopay" value="ATM"> <span>
															<h6>THANH TOÁN BẰNG THẺ ATM</h6>
															<p>Thả ATM của bạn cần đăng ký dịch vụ internet
																banking</p>
													</span> <img class="size-img"
														style="margin-top: -31%; margin-left: 80%;" alt=""
														src="resources/resources-booking/custom/image-room/icon-atm-banking.png">
												</label></li>
												<!-- thanh toán banking -->
												<li style="margin-top: -90px; margin-left: 45%;"><label>
														<input type="radio" name="pay" id="radiopay" value="VISA"> <span>
															<h6>THANH TOÁN BẰNG THẺ QUỐC TẾ</h6>
															<p>Hổ trợ Credit và Debit</p>
													</span> <img class="size-img" alt=""
														style="width: 62px; margin-left: 105%; margin-top: -50px;"
														src="resources/resources-booking/custom/image-room/icon-visa.jpg">
												</label></li>
											</ul>
											<!-- thanh toán bằng visa -->
										</div>
									</div>
								</div>
								<div class="row" style="width: 100%; padding: 10px;">
									<div class="col-md-4"
										style="margin-left: 76%; margin-top: -1%;">
										<button class="btn btn-warning" id="btn-huybo">Hủy Bỏ</button>
										<button class="btn btn-warning" id="btn-xacnhan">Xác
											Nhận</button>
									</div>
								</div>
							</div>
						</div>
						<!-- end step 4 -->

					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>