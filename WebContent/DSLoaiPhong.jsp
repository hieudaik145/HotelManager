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
<title>Quản Lý Phòng</title>
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
					<h4 class="card-title mt-0">Danh Sách Loại Phòng</h4>
				</div>
				<div class="row">
					<div class="col-md-3" style="margin-top: 3%;">
						<button class="btn btn-primary btn-round" aria-hidden="true"
							data-toggle="modal" data-target="#them-loai-phong"
							data-whatever="@getbootstrap">Thêm Loại Phòng</button>
					</div>
					<!-- end button them -->
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-hover">
							<thead class="">
								<th>Mã Loại Phòng</th>
								<th>Tên Loại Phòng</th>
								<th>Giá TIền</th>
								<th>Images</th>
								<th>Mô Tả</th>
								<th>Tóm Tắt</th>
								<th>EDIT</th>
								<th>DELETE</th>
							</thead>
							<tbody>
								<logic:iterate id="dsLoaiPhong" name="danhSachLoaiPhongForm"
									property="listLoaiPhong">
									<tr>
										<td class="maloaiphong"><bean:write name="dsLoaiPhong"
												property="maLoaiPhong" /></td>
										<td class="tenloaiphong"><bean:write name="dsLoaiPhong"
												property="tenLoaiPhong" /></td>
										<td class="giatienlp"><bean:write name="dsLoaiPhong"
												property="giaTien" /></td>
										<td class="imagelp" data-imagelp="${dsLoaiPhong.image}"><img
											src="resources/images/loai-phong/${dsLoaiPhong.image}"
											style="height: 144px; width: 130.8px;"
											class="img-responsive "></td>
										<td class="motalp"><span class="text-loaiphong"><bean:write
													name="dsLoaiPhong" property="moTa" /></span></td>
										<td class="tomtatlp"><span class="text-loaiphong"><bean:write
													name="dsLoaiPhong" property="tomTat" /></span></td>
										<td><a href="#"> <span
												class="fa fa-pencil-square-o fa-2x btn-sua-loai-phong"
												aria-hidden="true" data-toggle="modal"
												data-target="#sua-loai-phong" data-whatever="@getbootstrap"></span></a>
										</td>
										<td><a href="#"><span
												class="fa fa-trash fa-2x delete-loaiphong"
												aria-hidden="true"></span></a></td>
									</tr>
								</logic:iterate>

							</tbody>
						</table>
					</div>
				</div>
				<!-- end table -->
			</div>
		</div>
	</div>
	<!-- end content  -->

	<!-- pop up -->

	<div id="sua-loai-phong" class="modal fade bd-example-modal-lg"
		tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">Chỉnh Sửa Loại
						Phòng</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<label for="ma-loai-phong-sua" style="color: blue;">Mã
									Loại Phòng</label> <input id="ma-loai-phong-sua" type="text"
									class="form-control" disabled="disabled"
									placeholder="Mã Loại Phòng." maxlength="10">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<label for="ten-loai-phong-sua" style="color: blue;">Tên
									Loại Phòng</label> <input id="ten-loai-phong-sua" type="text"
									class="form-control" placeholder="Tên Loại Phòng..">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<label for="gia-tien-loai-phong-sua" style="color: blue;">Giá
									Tiền</label> <input id="gia-tien-loai-phong-sua" type="text"
									class="form-control" placeholder="Giá Tiền Loại Phòng..">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<input type="file" class="custom-file-input" id="customFile">
							<label class="custom-file-label" for="customFile"
								id="image-loaiphong">Choose file</label><br />
							<!-- <label class="custom-file-label" for="customFile" id="image-loaiphong"></label> -->
						</div>
					</div>

					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<br /> <label for="tom-tat-sua" style="color: blue;">Tóm
									Tắt Loại Phòng</label>
								<textarea class="form-control" rows="1" id="tom-tat-sua"
									name="text"></textarea>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<label for="mo-ta-sua" style="color: blue;">Mô Tả Chi
									Tiết Loại Phòng</label>
								<textarea class="form-control" rows="3" id="mo-ta-sua"
									name="text"></textarea>
							</div>
						</div>
					</div>

					<!--  end chọn loại phòng -->
					<div class="row" style="margin-left: 53%;">
						<div class="col-md-3" style="margin-top: 3%;">
							<button class="btn btn-primary btn-round" id="btn-sua-loai-phong">Chỉnh
								Sửa</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end pop up -->

	<!-- pop up -->

	<div id="them-loai-phong" class="modal fade bd-example-modal-lg"
		tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">Thêm Loại Phòng</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<span id="checkMaLoaiPhong"></span> <label for="ma-loai-phong"
									style="color: blue;">Mã Loại Phòng</label> <input
									id="ma-loai-phong" type="text" class="form-control"
									placeholder="Mã Loại Phòng." maxlength="10">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<label for="ten-loai-phong" style="color: blue;">Tên
									Loại Phòng</label> <input id="ten-loai-phong" type="text"
									class="form-control" placeholder="Tên Loại Phòng..">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<label for="gia-tien-loai-phong" style="color: blue;">Giá
									Tiền</label> <input id="gia-tien-loai-phong" type="text"
									class="form-control" maxlength="10"
									placeholder="Giá Tiền Loại Phòng..">
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<input type="file" class="custom-file-input"
								accept=".jpg, .png, .jpeg, .gif, .bmp, .tif, .tiff|images/*"
								id="customFile"> <label class="custom-file-label"
								for="customFile" id="image-loaiphong-them">Choose file</label><br />
							<!-- <label class="custom-file-label" for="customFile" id="image-loaiphong"></label> -->
						</div>
					</div>

					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<br /> <label for="tom-tat" style="color: blue;">Tóm Tắt
									Loại Phòng</label>
								<textarea class="form-control" rows="1" id="tom-tat" name="text"></textarea>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6" style="margin: auto;">
							<div class="form-group has-default">
								<label for="mo-ta" style="color: blue;">Mô Tả Chi Tiết
									Loại Phòng</label>
								<textarea class="form-control" rows="2" id="mo-ta" name="text"></textarea>
							</div>
						</div>
					</div>

					<!--  end chọn loại phòng -->
					<div class="row" style="margin-left: 53%;">
						<div class="col-md-3" style="margin-top: 3%;">
							<button class="btn btn-primary btn-round"
								id="btn-them-loai-phong">Thêm Mới</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end pop up -->

	<script>
		// Add the following code if you want the name of the file appear on select
		$(".custom-file-input").on(
				"change",
				function() {
					var fileName = $(this).val().split("\\").pop();
					/* chi tach lay ten file .split("\\").pop();  */
					$(this).siblings(".custom-file-label").addClass("selected")
							.html(fileName);
					$(this).val('');
				});
	</script>
	<jsp:include page="footer_adm.jsp"></jsp:include>
	<!-- end footer -->

</body>
</html>