<%@page import="common.StringProcess"%>
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
<title>Quản Lý Khách Hàng Đặt Phòng</title>

</head>
<body>
	<jsp:include page="header_adm.jsp"></jsp:include>
	<!-- end header -->
	<jsp:include page="sidebar_adm.jsp"></jsp:include>
	<!-- end sidebar -->

	<div class="main-panel ps-container ps-theme-default"
		data-ps-id="287414e0-5e0f-6933-edaf-268eded04a7f"
		style="margin-top: 5%;">
		<div class="col-md-12">
			<div class="card card-plain">
				<div class="card-header card-header-primary">
					<h4 class="card-title mt-0">Danh Sách Doanh Thu</h4>
				</div>
				<div class="row">

					<!-- end form -->
					<div class="col-md-4" style="margin-top: 3%;">
						<div class="dropdown-booking">
							<logic:notEmpty name="danhSachDoanhThuForm" property="tenKS">
								<bean:define id="tenKS" name="danhSachDoanhThuForm"
									property="tenKS"></bean:define>
								<button class="btn btn-block btn-primary dropdown-toggle"
									data-toggle="dropdown" id="tenks-dropdown">
									<bean:write name="tenKS" />
								</button>
							</logic:notEmpty>
							<logic:empty name="danhSachDoanhThuForm" property="tenKS">
								<button class="btn btn-block btn-primary dropdown-toggle"
									data-toggle="dropdown" id="tenks-dropdown">Chọn Khách
									Sạn</button>
							</logic:empty>

							<div class="dropdown-menu booking" id="bookingdiv"
								style="padding-left: 15px;">
								<input type="text" class="form-control" placeholder="Search.."
									id="myInput">
								<logic:iterate id="dsKhachSan" name="danhSachDoanhThuForm"
									property="listKhachSan">
									<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
									<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
									<html:link action="/danh-sach-doanh-thu?maKS=${maks}">
										<p class="tenks">
											<bean:write name="tenks" />
										</p>
									</html:link>
								</logic:iterate>
							</div>
						</div>
					</div>
					<logic:notEmpty name="danhSachDoanhThuForm" property="maKS">
						<div class="col-md-6">
							<div class="form-group row">
								<div class="col-3">
									<input class="form-control ngayDenChon" type="date" 
										style="margin-top: 6%;     width: 139px;" value="${danhSachDoanhThuForm.ngayDenChon }">
								</div>
								<div class="col-3">
									<input class="form-control ngayDiChon" type="date"
										style="margin-top: 6%;  width: 139px;"value="${danhSachDoanhThuForm.ngayDenChon }">
								</div>
								<input class="maks" type="hidden"
									value="${danhSachDoanhThuForm.maKS}">
								<div class="col-3">
									<button type="button" id="btn-xemdate"
										class="btn btn-primary search-date">Xem</button>
								</div>
							</div>
						</div>
					</logic:notEmpty>
					<logic:empty name="danhSachDoanhThuForm" property="maKS">
						<div class="col-md-6">
							<div class="form-group row">
								<div class="col-3">
									<input class="form-control  ngayDenChon" type="date"
										style="margin-top: 6%;     width: 139px;"value="${danhSachDoanhThuForm.ngayDenChon }">
								</div>
								<div class="col-3">
									<input class="form-control  ngayDiChon" type="date"
										style="margin-top: 6%;     width: 139px;" value="${danhSachDoanhThuForm.ngayDenChon }">
								</div>
								<div class="col-3">
									<button type="button" id="btn-xemdate"
										class="btn btn-primary search-date">Xem</button>
								</div>
							</div>
						</div>
					</logic:empty>
					<div class="col-md-2" style="margin-top: 34px;">
						<div class="row">
							<button type="button" class="btn btn-primary xuat-file"
								aria-hidden="true" data-toggle="modal" data-target="#xuatfile"
								data-whatever="@getbootstrap">Xuất File CSV</button>
						</div>
					</div>


					<!-- END dropdown search -->
				</div>
				<input type="hidden" class="listdt" data-danhthu="${danhSachDoanhThuForm.listDoanhThu }" />
				
				<%-- <bean:define id="listDoanhThu" name="danhSachDoanhThuForm" property="listDoanhThu"></bean:define> --%>
				<div class="card-body">
					<div class="table-responsive">
						<table id="#myTable" class="table table-hover">
							<thead class="">
								<th>Boking ID</th>
								<th>Tên Khách Sạn</th>
								<th>Tên Khách Hàng</th>
								<th>Số Điện Thoại</th>
								<th>Email</th>
								<th>Ngày Đến</th>
								<th>Ngày Đi</th>
								<th>Tổng Tiền</th>
							</thead>
							<tbody>

								<logic:iterate id="dsDoanhTHu" name="danhSachDoanhThuForm"
									property="listDoanhThu">
									<tr>
										<td id="bookingid"><bean:write name="dsDoanhTHu"
												property="bookingId" /></td>
										<td id="tenkh"><bean:write name="dsDoanhTHu"
												property="tenKS" /></td>
										<td><bean:write name="dsDoanhTHu" property="tenKH" /></td>
										<td><bean:write name="dsDoanhTHu" property="soDienThoai" /></td>
										<td><bean:write name="dsDoanhTHu" property="email" /></td>
										<td><bean:write name="dsDoanhTHu" property="ngayDen" /></td>
										<td><bean:write name="dsDoanhTHu" property="ngayDi" /></td>
										<td><bean:write name="dsDoanhTHu" property="tongTien" /></td>
									</tr>
								</logic:iterate>
							</tbody>
						</table>
					</div>

					<!-- end table -->
				</div>
			</div>
		</div>
	</div>

	<!-- pop up -->


	<!-- end pop up -->



	<jsp:include page="footer_adm.jsp"></jsp:include>

</body>
</html>