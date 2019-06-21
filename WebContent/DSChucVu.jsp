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
<title>Chức Vụ</title>
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
					<h4 class="card-title mt-0">Danh Sách Chức Vụ</h4>
				</div>
				<div class="row">
					<div class="col-md-3">
						<form class="form-inline ml-auto form-search">
							<div class="form-group has-white">
								<input type="text" class="form-control" placeholder="Search">
								<button type="submit"
									class="btn btn-white btn-raised btn-fab btn-round">
									<i class="material-icons">search</i>
								</button>
							</div>
						</form>
					</div>
					<!-- end form -->
					<div class="col-md-3" style="margin-top: 3%;">
						<button class="btn btn-primary btn-round btn-them-chucvu"
							data-toggle="modal" data-target="#them-chucvu"
							data-whatever="@getbootstrap">Thêm
							Chức Vụ</button>
					</div>
					<!-- end button them chuc vu -->
				</div>

				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-hover">
							<thead class="">
								<th>Mã Chức Vụ</th>
								<th>Tên Chức Vụ</th>
								<th>EDIT</th>
								<th>DELETE</th>
							</thead>
							<tbody>
								<logic:iterate id="dsChucVu" name="danhSachChucVuForm"
									property="listChucVu">
									<tr>
										<td class="machucvu">
											<bean:write name="dsChucVu" property="maChucVu" />
										</td>
										<td class="tenchucvu">
											<bean:write name="dsChucVu" property="tenChucVu" /></td>
										<td>
											<a href="#"> 
												<span class="fa fa-pencil-square-o fa-2x btn-sua-chucvu"
													aria-hidden="true" data-toggle="modal"
													data-target="#sua-chucvu" data-whatever="@getbootstrap">
												</span>
											</a>
										</td>
										<td>
											<a href="#">
												<span class="fa fa-trash fa-2x btn-xoa-chucvu" aria-hidden="true"></span>
											</a>
										</td>
									</tr>
								</logic:iterate>
							</tbody>
						</table>
					</div>
				</div>
				<!-- end table -->
			</div>
		</div>

		<!-- <div class="col-md-6" style="position: relative; left: 35%">             
              <ul class="pagination pagination-info">
                <li class="page-item">
                  <a href="" class="page-link"> prev</a>
                </li>
                <li class="page-item">
                  <a href="" class="page-link">1</a>
                </li>
                <li class="page-item">
                  <a href="" class="page-link">2</a>
                </li>
                <li class="active page-item">
                  <a href="" class="page-link">3</a>
                </li>
                <li class="page-item">
                  <a href="j" class="page-link">4</a>
                </li>
                <li class="page-item">
                  <a href="" class="page-link">5</a>
                </li>
                <li class="page-item">
                  <a href="" class="page-link">next </a>
                </li>
              </ul>
       </div> -->
		<!-- end pagination -->


	</div>
	<!-- end content  -->

	<!-- pop up add chuc vu-->
	<div id="them-chucvu" class="modal fade bd-example-modal-lg" tabindex="-1"
		role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">Thêm chức vụ</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
						<!-- row 1  -->
						<div class="row">
							<div class="col-md-5" style="margin: auto;">
								<div class="form-group">
									<span id="checkMaChucVu"></span> 
									<label for="ma-chucvu-them" class="bmd-label-floating">Mã chức vụ </label> 
									<input id=" ma-chucvu-them" type="text" class="form-control ma-chucvu-them">
								</div>
							</div>
						</div>
						<!-- row 2 -->
						<div class="row">
							<div class="col-md-5" style="margin: auto;">
								<div class="form-group">
									<label for="ten-chucvu-them" class="bmd-label-floating">Tên chức vụ</label> 
									<input id="ten-chucvu-them" type="text" class="form-control">
								</div>
							</div>
						</div>
						<!-- row 3 -->
						<div class="row">
							<div class="col-md-3" style="margin-left: 21%;">
								<button id="btn-them-chucvu" type="submit" class="btn btn-primary pull-right">Thêm</button>
							</div>
							<div class="col-md-3">
								<button type="submit" class="btn btn-primary pull-right" onclick="history.go(-1);">Quay Lại</button>
							</div>
						</div>
						<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- end pop up -->

	<!-- pop up edit chuc vu-->
	<div id="sua-chucvu" class="modal fade bd-example-modal-lg" tabindex="-1"
		role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">Chỉnh sửa chức vụ</h3>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
						<!-- row 1  -->
						<div class="row">
							<div class="col-md-5" style="margin: auto;">
								<div class="form-group">
									<label for="ma-chucvu-sua" class="bmd-label-floating">Mã chức vụ </label> 
									<input id="ma-chucvu-sua" type="text" class="form-control">
								</div>
							</div>
						</div>
						<!-- row 2 -->
						<div class="row">
							<div class="col-md-5" style="margin: auto;">
								<div class="form-group">
									<label for="ten-chucvu-sua" class="bmd-label-floating">Tên chức vụ</label> 
									<input id="ten-chucvu-sua" type="text" class="form-control">
								</div>
							</div>
						</div>
						<!-- row 3 -->
						<div class="row">
							<div class="col-md-3" style="margin-left: 21%;">
								<button id="btn-sua-chucvu" class="btn btn-primary pull-right">Chỉnh Sửa</button>
							</div>
							<div class="col-md-3">
								<button class="btn btn-primary pull-right" onclick="history.go(-1);">Quay Lại</button>
							</div>
						</div>
						<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- end pop up -->
	<jsp:include page="footer_adm.jsp"></jsp:include>
	<!-- end footer -->

	<script type="text/javascript">
		$(document).ready(function() {

			$("#tenks-dropdown").click(function() {
				$("#myInput").focus();
			});

		});
	</script>
</body>
</html>