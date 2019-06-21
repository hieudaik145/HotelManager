<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Royal Hotel</title>
</head>
<body>
	<jsp:include page="header_index.jsp"></jsp:include>
	<!--================Banner Area =================-->
	<div class="container">
		<div class="banner_content text-center">
			<h2>Welcome to our hotel</h2>
			<h6>Relax Your Mind</h6>
		</div>

		<div class="container">
			<div class="row">
				<div id="stepper1" class="bs-stepper">
					<div class="bs-stepper-header" role="tablist"
						style="margin-left: 13%; width: 100%;">
						<div class="row">
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step" data-target="#test-l-1">
									<button type="button" class="btn btn-link step-trigger"
										role="tab" id="stepper1trigger1" aria-controls="test-l-1">
										<span class="bs-stepper-circle" style="margin-left: -36px;">1</span>
										<span class="bs-stepper-label">THÔNG TIN ĐẶT PHÒNG</span>
									</button>
								</div>
							</div>
							<!-- end step 1 thông tin đặt phòng -->
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step" data-target="#test-l-2">
									<button type="button" class="btn btn-link step-trigger"
										role="tab" id="stepper1trigger2" aria-controls="test-l-2">
										<span class="bs-stepper-circle">2</span> <span
											class="bs-stepper-label">CHỌN PHÒNG</span>
									</button>
								</div>
							</div>
							<!-- end step 2 chọn phòng -->
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step" data-target="#test-l-3">
									<button type="button" class="btn btn-link step-trigger"
										role="tab" id="stepper1trigger3" aria-controls="test-l-3">
										<span class="bs-stepper-circle" style="margin-left: -36px;">3</span>
										<span class="bs-stepper-label">THÔNG TIN KHÁCH HÀNG</span>
									</button>
								</div>
							</div>
							<!-- end step 3 thông tin khách hàng -->
							<div class="col-md-3">
								<div class="line"></div>
								<div class="step" data-target="#test-l-4">
									<button type="button" class="btn btn-link step-trigger"
										role="tab" id="stepper1trigger4" aria-controls="test-l-4">
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
						<form onSubmit="return false">
							<div id="test-l-1" role="tabpanel" class="content"
								aria-labelledby="stepper1trigger1">
								<div class="row">
									<div class="col-md-8" style="margin: auto;">
										<div class="form-group">
											<div class="input-group">
												<div class="dropdown-booking">
													<button
														class=" genric-btn primary radius  dropdown-toggle btn-custom"
														data-toggle="dropdown" id="ttpho-dropdown" data-makhachsan="">Chọn Khách Sạn</button>
													<div class="dropdown-menu booking" id="bookingdiv">
														<input type="text" class="fa fa-search form-search"
															id="myinput" placeholder="Search">
														<logic:iterate id="dsKhachSan" name="bookingForm" property="listKhachSan">
														<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
														<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
														<p class="tentp" data-maks="${maks}"><bean:write name="tenks"/></p>
														</logic:iterate>
														
													</div>
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
													<input type="date" class="datengayden" id="datepicker">
											</div>
										</div>
										<!-- end button chọn ngày đến -->
										<div class="col-md-6"
											style="margin-top: -54px; margin-left: 50%">
											<div class="form-group">
												<input type="date" class="datengaydi"  id="datepicker">
											</div>
										</div>
										<!-- end button chọn ngày đi -->
									</div>
								</div>
								<div class="row" style="margin-left: 74%;">
									<div class="col-md-3">
										<button class="btn btn-primary" id="nextstep1" onclick="stepper1.next()">Next</button>
									</div>
								</div>
							</div>
							<!-- end step 1 -->

							<!-- step 2 -->
							<div id="test-l-2" role="tabpanel" class="content"
								aria-labelledby="stepper1trigger2">
								<div class="row">
									<div class="col-md-12">
										<p style="font-size: 55px; margin-left: 20%">ĐẶT PHÒNG CỦA
											BẠN:</p>
									</div>
								</div>

								<div class="row row-size">
									<div class="col-md-4">
										<label>VỊ TRÍ: </label>
									</div>
									<div class="col-md-8">
										<span> THÀNH PHỐ ĐÀ NẴNG </span>
									</div>
								</div>
								<!-- END row 1: vị trí khách sạn -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>KHÁCH SẠN: </label>
									</div>
									<div class="col-md-8">
										<span> Royal Hotel Luxury </span>
									</div>
								</div>
								<!-- end row 2: tên khách sạn -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>SỐ ĐIỆN THOẠI: </label>
									</div>
									<div class="col-md-8">
										<span> +(84)965 6769 47 </span>
									</div>
								</div>
								<!-- end row 3:  số điện thoại -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>NGÀY ĐẾN: </label>
									</div>
									<div class="col-md-8">
										<span> 23/04/2019 </span> <a class="linkchange" href="#">Thay
											đổi</a>
									</div>
								</div>
								<!-- end row 4:  ngày đến -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>NGÀY ĐI: </label>
									</div>
									<div class="col-md-8">
										<span> 29/04/2019 </span> <a class="linkchange" href="#">Thay
											đổi</a>
									</div>
								</div>
								<!-- end row 5:  ngày đi -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>SỐ ĐÊM: </label>
									</div>
									<div class="col-md-8">
										<span> 8 </span> <span class="space">ĐÊM </span>
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
										<table>
											<tbody>
												<tr class="row100 body">
													<td class="cell100 column1" style="width: 16%;"><img
														class="size-img" alt=""
														src="resources/resources-booking/custom/image-room/img_room1.jpg">
													</td>
													<!-- td image -->
													<td style="width: 20%;">
														<!-- tên phòng -->
														<p class="idroom">SUPERIOR KING</p>
														<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
														<a class="xemthem" href="">xem thêm</a>
													</td>
													<td class="cell100 column2" style="width: 12%;">3.000.000đ</td>
													<td class="cell100 column3" style="width: 20%;">24000000đ</td>
													<td class="cell100 column4" style="width: 20%;">10</td>
													<td class="cell100 column5"><select
														class="form-control" id="exampleFormControlSelect1">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
													</select></td>
												</tr>
												<tr class="row100 body">
													<td class="cell100 column1" style="width: 16%;"><img
														class="size-img" alt=""
														src="resources/resources-booking/custom/image-room/img_room1.jpg">
													</td>
													<!-- td image -->
													<td style="width: 20%;">
														<p class="idroom">SUPERIOR KING</p>
														<p>Giá đã bao gồm VAT và phí dịch vụ</p> <a
														class="xemthem" href="">xem thêm</a>
													</td>
													<td class="cell100 column2" style="width: 12%;">3.000.000đ</td>
													<td class="cell100 column3" style="width: 20%;">24000000đ</td>
													<td class="cell100 column4" style="width: 20%;">10</td>
													<td class="cell100 column5"><select
														class="form-control" id="exampleFormControlSelect1">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
													</select></td>
												</tr>
												<tr class="row100 body">
													<td class="cell100 column1" style="width: 16%;"><img
														class="size-img" alt=""
														src="resources/resources-booking/custom/image-room/img_room1.jpg">
													</td>
													<!-- td image -->
													<td style="width: 20%;">
														<p class="idroom">SUPERIOR KING</p>
														<p>Giá đã bao gồm VAT và phí dịch vụ</p> <a
														class="xemthem" href="">xem thêm</a>
													</td>
													<td class="cell100 column2" style="width: 12%;">3.000.000đ</td>
													<td class="cell100 column3" style="width: 20%;">24000000đ</td>
													<td class="cell100 column4" style="width: 20%;">10</td>
													<td class="cell100 column5"><select
														class="form-control" id="exampleFormControlSelect1">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
													</select></td>
												</tr>
												<tr class="row100 body">
													<td class="cell100 column1" style="width: 16%;"><img
														class="size-img" alt=""
														src="resources/resources-booking/custom/image-room/img_room1.jpg">
													</td>
													<!-- td image -->
													<td style="width: 20%;">
														<p class="idroom">SUPERIOR KING</p>
														<p>Giá đã bao gồm VAT và phí dịch vụ</p> <a
														class="xemthem" href="">xem thêm</a>
													</td>
													<td class="cell100 column2" style="width: 12%;">3.000.000đ</td>
													<td class="cell100 column3" style="width: 20%;">24000000đ</td>
													<td class="cell100 column4" style="width: 20%;">10</td>
													<td class="cell100 column5"><select
														class="form-control" id="exampleFormControlSelect1">
															<option>1</option>
															<option>2</option>
															<option>3</option>
															<option>4</option>
															<option>5</option>
													</select></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<!-- end table chọn phòng -->
								<div class="row" style="margin-top: -90px; margin-left: 50%;">
									<div class="col-md-3">
										<button class="btn btn-primary" onclick="stepper1.previous()">Previous</button>
									</div>
									<div class="col-md-3">
										<button class="btn btn-primary" onclick="stepper1.next()">Next</button>
									</div>
								</div>
							</div>
							<!-- end step 2 -->

							<!-- step 3 -->
							<div id="test-l-3" role="tabpanel" class="content "
								aria-labelledby="stepper1trigger3">
								<div class="row">
									<div class="col-md-12">
										<p style="font-size: 55px; margin-left: 20%">ĐẶT PHÒNG CỦA
											BẠN:</p>
									</div>
								</div>

								<div class="row row-size">
									<div class="col-md-4">
										<label>VỊ TRÍ: </label>
									</div>
									<div class="col-md-8">
										<span> THÀNH PHỐ ĐÀ NẴNG </span>
									</div>
								</div>
								<!-- END row 1: vị trí khách sạn -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>KHÁCH SẠN: </label>
									</div>
									<div class="col-md-8">
										<span> Royal Hotel Luxury </span>
									</div>
								</div>
								<!-- end row 2: tên khách sạn -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>SỐ ĐIỆN THOẠI: </label>
									</div>
									<div class="col-md-8">
										<span> +(84)965 6769 47 </span>
									</div>
								</div>
								<!-- end row 3:  số điện thoại -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>NGÀY ĐẾN: </label>
									</div>
									<div class="col-md-8">
										<span> 23/04/2019 </span> <a class="linkchange" href="#">Thay
											đổi</a>
									</div>
								</div>
								<!-- end row 4:  ngày đến -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>NGÀY ĐI: </label>
									</div>
									<div class="col-md-8">
										<span> 29/04/2019 </span> <a class="linkchange" href="#">Thay
											đổi</a>
									</div>
								</div>
								<!-- end row 5:  ngày đi -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>SỐ ĐÊM: </label>
									</div>
									<div class="col-md-8">
										<span> 8 </span> <span class="space">ĐÊM </span>
									</div>
								</div>
								<!-- end row 6:  số đêm -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>DANH SÁCH PHÒNG BẠN ĐÃ ĐẶT: </label>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<img class="size-img" alt=""
											src="resources/resources-booking/custom/image-room/img_room1.jpg">
									</div>
									<div class="col-md-4">
										<!-- tên phòng -->
										<p class="step3">SUPERIOR KING</p>
										<!-- giá tiền -->
										<p class="step3">3.000.000 đ/mỗi đêm</p>
										<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
										<a class="xemthem" href="">xem thêm</a>
									</div>
									<div class="col-md-3">
										<p class="step3">100.000.000 đ</p>
									</div>
									<div class="col-md-2">
										<p class="step3">5 Phòng</p>
									</div>
								</div>
								<div class="row" style="padding: 10px">
									<div class="col-md-12 line"></div>
								</div>
								<!-- end danh sách phòng đã đặt -->
								<div class="row">
									<div class="col-md-3">
										<img class="size-img" alt=""
											src="resources/resources-booking/custom/image-room/img_room1.jpg">
									</div>
									<div class="col-md-4">
										<!-- tên phòng -->
										<p class="step3">SUPERIOR KING</p>
										<!-- giá tiền -->
										<p class="step3">3.000.000 đ/mỗi đêm</p>
										<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
										<a class="xemthem" href="">xem thêm</a>
									</div>
									<div class="col-md-3">
										<p class="step3">100.000.000 đ</p>
									</div>
									<div class="col-md-2">
										<p class="step3">5 Phòng</p>
									</div>
								</div>
								<div class="row" style="padding: 10px">
									<div class="col-md-12 line"></div>
								</div>
								<!-- end danh sách phòng đã đặt -->
								<div class="row">
									<div class="col-md-3">
										<img class="size-img" alt=""
											src="resources/resources-booking/custom/image-room/img_room1.jpg">
									</div>
									<div class="col-md-4">
										<!-- tên phòng -->
										<p class="step3">SUPERIOR KING</p>
										<!-- giá tiền -->
										<p class="step3">3.000.000 đ/mỗi đêm</p>
										<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
										<a class="xemthem" href="">xem thêm</a>
									</div>
									<div class="col-md-3">
										<p class="step3">100.000.000 đ</p>
									</div>
									<div class="col-md-2">
										<p class="step3">5 Phòng</p>
									</div>
								</div>
								<div class="row" style="padding: 10px">
									<div class="col-md-12 line"></div>
								</div>
								<div class="row">
									<a class="linkchange fa fa-chevron-left" href="#">Thay đổi
										phòng </a>
								</div>
								<!-- end danh sách phòng đã đặt -->
								<div class="row"
									style="background-color: #afd6e8; margin-top: 10px; padding: 10px;">
									<div class="row" style="width: 100%;">
										<div class="col-md-12">
											<h5>VUI LÒNG NHẬP THÔNG TIN CỦA BẠN</h5>
										</div>
									</div>
									<div class="row" style="padding: 5px; width: 100%;">
										<div class="col-md-12 line"></div>
									</div>
									<div class="row" style="width: 100%; padding: 10px;">
										<div class="col-md-4">
											<h6>HỌ VÀ TÊN *</h6>
										</div>
										<div class="col-md-4">
											<h6>SỐ ĐIỆN THOẠI *</h6>
										</div>
										<div class="col-md-4">
											<h6>THƯ ĐIỆN TỬ *</h6>
										</div>
									</div>
									<div class="row" style="width: 100%; padding: 10px;">
										<div class="col-md-4 form-group">
											<!-- input họ và tên khách hàng -->
											<input type="text" class="form-control" id="hoten"
												value="Giáp Hoàng Khang Hy">
										</div>
										<div class="col-md-4 form-group">
											<!-- input số điện thoại khách hàng -->
											<input type="text" class="form-control" id="sodientoai"
												value="0965676947">
										</div>
										<div class="col-md-4 form-group">
											<!-- input email khách hàng -->
											<input type="text" class="form-control"
												value="ghkhanghy07@gmail.com">
										</div>
									</div>
									<div class="row" style="width: 100%; padding: 10px;">
										<div class="col-md-3" style="margin-left: 90%;">
											<button class="btn btn-primary" onclick="stepper1.next()">Next</button>
										</div>
									</div>
								</div>
							</div>
							<!-- end step 3 -->

							<!-- step 4 -->
							<div id="test-l-4" role="tabpanel" class="content"
								aria-labelledby="stepper1trigger4">
								<div class="row">
									<div class="col-md-12">
										<p style="font-size: 55px; margin-left: 20%">ĐẶT PHÒNG CỦA
											BẠN:</p>
									</div>
								</div>

								<div class="row row-size">
									<div class="col-md-4">
										<label>VỊ TRÍ: </label>
									</div>
									<div class="col-md-8">
										<span> THÀNH PHỐ ĐÀ NẴNG </span>
									</div>
								</div>
								<!-- END row 1: vị trí khách sạn -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>KHÁCH SẠN: </label>
									</div>
									<div class="col-md-8">
										<span> Royal Hotel Luxury </span>
									</div>
								</div>
								<!-- end row 2: tên khách sạn -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>SỐ ĐIỆN THOẠI: </label>
									</div>
									<div class="col-md-8">
										<span> +(84)965 6769 47 </span>
									</div>
								</div>
								<!-- end row 3:  số điện thoại -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>NGÀY ĐẾN: </label>
									</div>
									<div class="col-md-8">
										<span> 23/04/2019 </span> <a class="linkchange" href="#">Thay
											đổi</a>
									</div>
								</div>
								<!-- end row 4:  ngày đến -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>NGÀY ĐI: </label>
									</div>
									<div class="col-md-8">
										<span> 29/04/2019 </span> <a class="linkchange" href="#">Thay
											đổi</a>
									</div>
								</div>
								<!-- end row 5:  ngày đi -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>SỐ ĐÊM: </label>
									</div>
									<div class="col-md-8">
										<span> 8 </span> <span class="space">ĐÊM </span>
									</div>
								</div>
								<!-- end row 6:  số đêm -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>THÔNG TIN KHÁCH HÀNG: </label>
									</div>
									<div class="col-md-8">
										<span> GIÁP HOÀNG KHANG HY</span><br> <span>
											+(84)965676947</span><br> <span> ghkhanghy97@gmail.com</span>
									</div>
								</div>
								<!-- end thong tin khách hàng -->
								<div class="row row-size">
									<div class="col-md-4">
										<label>DANH SÁCH PHÒNG BẠN ĐÃ ĐẶT: </label>
									</div>
								</div>
								<div class="row">
									<div class="col-md-3">
										<img class="size-img" alt=""
											src="resources/resources-booking/custom/image-room/img_room1.jpg">
									</div>
									<div class="col-md-4">
										<!-- tên phòng -->
										<p class="step3">SUPERIOR KING</p>
										<!-- giá tiền -->
										<p class="step3">3.000.000 đ/mỗi đêm</p>
										<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
										<a class="xemthem" href="">xem thêm</a>
									</div>
									<div class="col-md-3">
										<p class="step3">100.000.000 đ</p>
									</div>
									<div class="col-md-2">
										<p class="step3">5 Phòng</p>
									</div>
								</div>
								<div class="row" style="padding: 10px">
									<div class="col-md-12 line"></div>
								</div>
								<!-- end danh sách phòng đã đặt -->
								<div class="row">
									<div class="col-md-3">
										<img class="size-img" alt=""
											src="resources/resources-booking/custom/image-room/img_room1.jpg">
									</div>
									<div class="col-md-4">
										<!-- tên phòng -->
										<p class="step3">SUPERIOR KING</p>
										<!-- giá tiền -->
										<p class="step3">3.000.000 đ/mỗi đêm</p>
										<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
										<a class="xemthem" href="">xem thêm</a>
									</div>
									<div class="col-md-3">
										<p class="step3">100.000.000 đ</p>
									</div>
									<div class="col-md-2">
										<p class="step3">5 Phòng</p>
									</div>
								</div>
								<div class="row" style="padding: 10px">
									<div class="col-md-12 line"></div>
								</div>
								<!-- end danh sách phòng đã đặt -->
								<div class="row">
									<div class="col-md-3">
										<img class="size-img" alt=""
											src="resources/resources-booking/custom/image-room/img_room1.jpg">
									</div>
									<div class="col-md-4">
										<!-- tên phòng -->
										<p class="step3">SUPERIOR KING</p>
										<!-- giá tiền -->
										<p class="step3">3.000.000 đ/mỗi đêm</p>
										<p class="chuthich">Giá đã bao gồm VAT và phí dịch vụ</p>
										<a class="xemthem" href="">xem thêm</a>
									</div>
									<div class="col-md-3">
										<p class="step3">100.000.000 đ</p>
									</div>
									<div class="col-md-2">
										<p class="step3">5 Phòng</p>
									</div>
								</div>
								<div class="row" style="padding: 10px">
									<div class="col-md-12 line"></div>
								</div>
								<div class="row" style="width: 100%">
									<div class="col-md-8">
										<h6 class="tongtien">TỔNG TIỀN CẦN THANH TOÁN CỦA BẠN LÀ:</h6>
									</div>
									<div class="col-md-4" style="margin-left: 80%">
										<!-- Tổng tiền cần thanh toán -->
										<span class="tongtien"> 10.000.000 đ </span>
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
															type="radio" name="pay" id="radiopay"> <span>
																<h6>THANH TOÁN BẰNG THẺ ATM</h6>
																<p>Thả ATM của bạn cần đăng ký dịch vụ internet
																	banking</p>
														</span> <img class="size-img"
															style="margin-top: -45%; margin-left: 80%;" alt=""
															src="resources/resources-booking/custom/image-room/icon-atm-banking.png">
													</label></li>
													<!-- thanh toán banking -->
													<li style="margin-top: -110px; margin-left: 45%;"><label">
															<input type="radio" name="pay" id="radiopay"> <span>
																<h6>THANH TOÁN BẰNG THẺ QUỐC TẾ</h6>
																<p>Hổ trợ Credit và Debit</p>
														</span> <img class="size-img" alt=""
															style="width: 62px; margin-left: 105%; margin-top: -70px;"
															src="resources/resources-booking/custom/image-room/icon-visa.jpg">
													</label></li>
												</ul>
												<!-- thanh toán bằng visa -->
											</div>
										</div>
									</div>
									<div class="row" style="width: 100%; padding: 10px;">
										<div class="col-md-3"
											style="margin-left: 90%; margin-top: -10%;">
											<!-- btn endgame -->
											<button class="btn btn-primary" onclick="stepper1.next()">Next</button>
										</div>
									</div>
								</div>
							</div>
							<!-- end step 4 -->
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<script>
		let stepper1 = null;
		document.addEventListener("DOMContentLoaded", function() {
			stepper1 = new Stepper(document.querySelector("#stepper1"), {});
		});
	</script>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>