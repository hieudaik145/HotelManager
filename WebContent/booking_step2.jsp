<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
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
					<div class="bs-stepper-header"
						style="margin-left: 13%; width: 100%;">
						<div class="row">
							<div class="col-md-3 ">
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
							<div class="col-md-3 active">
								<div class="line"></div>
								<div class="step">
								<button type="button"  class="btn btn-link step-trigger"
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
							<div class="col-md-3">
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
						<form>
							<!-- step 2 -->
							<div id="test-l-2" class="content active">
								<div class="row">
									<div class="col-md-12">
										<p style="font-size: 55px; margin-left: 20%">ĐẶT PHÒNG CỦA
											BẠN:</p>
									</div>
								</div>
								<bean:define id="khachSan" name="bookingForm"
									property="khachSan"></bean:define>
								<div class="row row-size">
									<div class="col-md-4">
										<label>VỊ TRÍ: </label>
									</div>
									<div class="col-md-8">
										<span><bean:write name="khachSan" property="tenTP" /></span>
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
										<span> <bean:write name="khachSan" property="soDT" />
										</span>
									</div>
								</div>
								<!-- end row 3:  số điện thoại -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>NGÀY ĐẾN: </label>
									</div>
									<div class="col-md-8">
										<span> <bean:write name="bookingForm"
												property="ngayDen" />
										</span> <html:link styleClass="linkchange" action="booking-step1.do">Thay đổi</html:link>
									</div>
								</div>
								<!-- end row 4:  ngày đến -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>NGÀY ĐI: </label>
									</div>
									<div class="col-md-8">
										<span> <bean:write name="bookingForm" property="ngayDi" />
										</span> <html:link styleClass="linkchange" action="booking-step1.do">Thay đổi</html:link>
									</div>
								</div>
								<!-- end row 5:  ngày đi -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>SỐ ĐÊM: </label>
									</div>
									<div class="col-md-8">
										<span class="sodem"> <bean:write name="bookingForm" property="soDem" /></span>  <span class="space">ĐÊM </span>
									</div>
								</div>
								<!-- end row 6:  số đêm -->

								<div class="table100 ver1 m-b-110 cus-table ">
									<div class="table100-head">
										<table>
											<thead>
												<tr class="row100 head">
													<th class="cell100 column1" style="width: 16%">Danh
														Sách Phòng</th>
													<th style="width: 20%"></th>
													<th class="cell100 column2" style="width: 12%;">Giá(Mỗi
														đêm)</th>
													<th class="cell100 column3" style="width: 20%;">Chi
														Phí</th>
													<th class="cell100 column4" style="width: 20%;">Số
														Phòng Tróng</th>
													<th class="cell100 column5">Chọn Phòng</th>
												</tr>
											</thead>
										</table>
									</div>
									<div class="table100-body js-pscroll">
										<table id="tabledatphong">
											<tbody>
												<logic:iterate id="dsLoaiPhongTrong" name="bookingForm"
													property="listLoaiPhongTrong">
													
													<tr class="row100 body">
														<td class="cell100 column1" style="width: 16%;"><img style="width: 100px"
															class="size-img" alt=""
															src="resources/images/loai-phong/${dsLoaiPhongTrong.image}">
														</td>
														<!-- td image -->
														<td style="width: 20%;" >
															<!-- tên phòng -->
															<p class="idroom">
																<bean:write name="dsLoaiPhongTrong"
																	property="tenLoaiPhong" />
															</p>
															<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
															<a class="xemthem" data-malp="${dsLoaiPhongTrong.maLoaiPhong }" href="" data-toggle="modal" data-target=".xemthemmd" data-whatever="@getbootstrap" >xem thêm</a>
														</td>
														<td class="cell100 column2 giaMoiDem" style="width: 12%;" ><bean:write
																name="dsLoaiPhongTrong" property="giaTien" /></td>
														<td class="cell100 column3 tongTien" style="width: 20%;"></td>
														<td class="cell100 column4" style="width: 20%;"><bean:write
																name="dsLoaiPhongTrong" property="soLuongTrong" /></td>
														<td class="cell100 column5"><input class="form-control soluongphong" value="${dsLoaiPhongTrong.soLuongDat}" data-malp="${dsLoaiPhongTrong.maLoaiPhong}" type="number" min="0" oninput="validity.valid||(value='');" max="${dsLoaiPhongTrong.soLuongTrong}" id="example-number-input"></td>
													</tr>
													
												</logic:iterate>
													<%-- 	<logic:iterate id="dsLoaiPhongDay" name="bookingForm" property="listLoaiPhongDay">
												<tr class="row100 body">
													<td class="cell100 column1" style="width: 16%;"><img
														class="size-img" alt=""
														src="resources/resources-booking/custom/image-room/img_room1.jpg">
													</td>
													<!-- td image -->
													<td style="width: 20%;">
														<!-- tên phòng -->
														<p class="idroom"><bean:write name="dsLoaiPhongDay" property="tenLoaiPhong"/></p>
														<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
														<a class="xemthem" href="" >xem thêm</a>
													</td>
													<td class="cell100 column2" style="width: 12%;"><bean:write name="dsLoaiPhongDay" property="giaTien"/></td>
													<td class="cell100 column3" style="width: 20%;">24000000đ</td>
													<td class="cell100 column4" style="width: 20%;"><bean:write name="dsLoaiPhongDay" property="soLuongTrong"/></td>
													<td class="cell100 column5"><input class="form-control" type="number" min="0" max="0"id="example-number-input"></td>
												</tr>
												</logic:iterate> --%>
											</tbody>

										</table>
									</div>
								</div>

								<!-- end table chọn phòng -->
								<div class="row" style="margin-top: -90px; margin-left: 50%;">
									<div class="col-md-3">
										<button class="btn btn-primary" id="btn-pre-step2">Previous</button>
									</div>
									<div class="col-md-3">
										<button class="btn btn-primary" id ="nextstep2">Next</button>
									</div>
								</div>


							</div>
							<!-- end step 2 -->
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- pop up inforoom -->
								<div class="modal fade bd-example-modal-lg xemthemmd" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
									aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content" style="background-color: #f8b600;">
											<div class="modal-header">
												<h3 style="color: white;" class="modal-title" id="exampleModalLabel">Thông Tin Chi Tiết</h3>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
												<div class="clearfix">
													<div class="row">
														<div class="col-md-4">
															<p style="color: white; font-weight: bold;" >Chi Tiết Phòng: <span class="tenLP"></span></p>
															<img alt=""style="width:235px;"  class="imageLoaiPhong"
															src="resources/resources-booking/custom/image-room/img_room1.jpg">
															<p style="color: white; font-weight: bold;">KHÔNG GIAN <span class="moTa"></span></p>
															<p style="color: white; font-weight: bold; " class="giaTien"></p>
														</div>
														<div class="ol-md-8">
															<p style="color: white; font-weight: bold;">Tiện Nghi</p>
															<div class="row">
																<div class="col-md-6">
																	<ul>
																		<li> *Điều Hòa Nhiệt Độ</li>
																		<li> * Tv Màu Plasa</li>
																		<li> * Ấm Siêu Tốc</li>
																		<li> * Két An Toàn </li>
																		<li> * Tủ Quần ÁO</li>
																		<li> * Dép</li>
																		<li> * Tủ Lạnh</li>
																		<li> * Xà Bông Tắm</li>
																	</ul>
																</div>
																<div class="col-md-6	">
																	<ul>
																		<li> *Điều Hòa Nhiệt Độ</li>
																		<li> * Tv Màu Plasa</li>
																		<li> * Ấm Siêu Tốc</li>
																		<li> * Két An Toàn </li>
																		<li> * Tủ Quần ÁO</li>
																		<li> * Dép</li>
																		<li> * Tủ Lạnh</li>
																		<li> * Xà Bông Tắm</li>
																	</ul>
																</div>
															</div>
														</div>
													 </div>
												</div>
											</div>
										</div>
									</div>
								</div>
		<!-- end pop up Double Deluxe Room -->
			
			

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>