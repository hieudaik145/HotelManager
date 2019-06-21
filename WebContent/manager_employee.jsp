<%@page import="common.StringProcess"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản Lý Nhân Viên</title>
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
					<h4 class="card-title mt-0">Danh Sách Nhân Viên</h4>
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
						<div class="dropdown-booking">
							<logic:notEmpty name="danhSachNhanVienForm" property="tenKS">
								<bean:define id="tenKS" name="danhSachNhanVienForm"
									property="tenKS"></bean:define>
								<button class="btn btn-block btn-primary dropdown-toggle"
									data-toggle="dropdown" id="tenks-dropdown">
									<bean:write name="tenKS" />
								</button>
							</logic:notEmpty>
							<logic:empty name="danhSachNhanVienForm" property="tenKS">
								<button class="btn btn-block btn-primary dropdown-toggle"
									data-toggle="dropdown" id="tenks-dropdown">Chọn Khách
									Sạn</button>
							</logic:empty>

							<div class="dropdown-menu booking" id="bookingdiv"
								style="padding-left: 15px;">
								<input type="text" class="form-control" placeholder="Search.."
									id="myInput">
								<logic:iterate id="dsKhachSan" name="danhSachNhanVienForm"
									property="listKhachSan">
									<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
									<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
									<html:link action="/danh-sach-nhanvien?maKS=${maks}">
										<p class="tenks">
											<bean:write name="tenks" />
										</p>
									</html:link>
								</logic:iterate>
							</div>
						</div>
					</div>
					<!-- END dropdown search -->
					<div class="col-md-3" style="margin-top: 3%;">
						<button class="btn btn-primary btn-round" data-toggle="modal"
							data-target=".themnhanvien" data-whatever="@getbootstrap">Thêm</button>
					</div>
					<!-- end button them -->
					<div class="col-md-3" style="margin-top: 3%; margin-left: -14%;">
						<html:link action="/danh-sach-chucvu"><button class="btn btn-primary btn-round">Chức Vụ</button></html:link>
					</div>
					<!-- end button  chức vụ -->
				</div>

				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-hover">
							<thead>
								<th>Mã Nhân Viên</th>
								<th>Tên Khách Sạn</th>
								<th>Tên Nhân Viên</th>
								<th>Giới Tính</th>
								<th>Chức Vụ</th>
								<th>Số Điện Thoại</th>
								<th>Email</th>
								<th>EDIT</th>
								<th>DELETE</th>
							</thead>
							<tbody>
								<logic:iterate id="dsNhanVien" name="danhSachNhanVienForm"
									property="listNhanVien">
									<tr class="trtest">
										<td scope="row" class="manhanvien" id="manv">
											<bean:write name="dsNhanVien" property="maNhanVien" />
										</td>
										<td class="ksten"><bean:write name="dsNhanVien" property="tenKS" /></td>
										<td class="tennv"><bean:write name="dsNhanVien" property="tenNhanVien" />
										</td>
										<td class="gioitinh"><bean:write name="dsNhanVien" property="gioiTinh" />
										</td>
										<td class="tencv"><bean:write name="dsNhanVien" property="tenChucVu" />
										</td>
										<td class="sdt"><bean:write name="dsNhanVien" property="soDienThoai" />
										</td>
										<td class="email"><bean:write name="dsNhanVien" property="email" /></td>
										<td><a href="#"> <span
												class="fa fa-pencil-square-o fa-2x suanv" aria-hidden="true"
												data-toggle="modal" data-target="#suanv"
												data-whatever="@getbootstrap"></span></a></td>
										<td><a href="#"><span class="fa fa-trash fa-2x btn-xoa-nhanvien"
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

		<bean:define id="pageHT" name="danhSachNhanVienForm" property="pageHT"></bean:define>
		<bean:define id="maxPage" name="danhSachNhanVienForm"
			property="maxPage"></bean:define>
		<logic:notEqual value="1" name="maxPage">
			<logic:notEmpty name="danhSachNhanVienForm" property="maKS">
				<bean:define id="maKS" name="danhSachNhanVienForm" property="maKS"></bean:define>
				<div class="col-md-6" style="position: relative; left: 35%">
					<ul class="pagination pagination-info">
						<logic:notEqual name="pageHT" value="1">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-nhanvien?pagetHT=${(pageHT-1)}&maKS=${maKS}">pre</html:link></li>
						</logic:notEqual>
						<logic:equal name="pageHT" value="1">
							<%-- <li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-nhanvien?pagetHT=${(pageHT)}&maKS=${maKS}">pre</html:link></li> --%>
						</logic:equal>
						<logic:iterate id="sopage" name="danhSachNhanVienForm"
							property="soLuongPage">
							<li class="page-item"><html:link styleClass="page-link"
									linkName=""
									action="/danh-sach-nhanvien?pageHT=${sopage}&maKS=${maKS}">
									<bean:write name="sopage" />
								</html:link></li>
						</logic:iterate>
						<logic:equal name="pageHT" value="${maxPage}">
							<%-- <li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-nhanvien?pageHT=${maxPage }&maKS=${maKS}">next</html:link></li> --%>
						</logic:equal>
						<logic:notEqual name="pageHT" value="${maxPage}">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-nhanvien?pageHT=${(pageHT+1) }&maKS=${maKS}">next</html:link></li>
						</logic:notEqual>

					</ul>
				</div>
			</logic:notEmpty>
			<logic:empty name="danhSachNhanVienForm" property="maKS">
				<div class="col-md-6" style="position: relative; left: 35%">
					<ul class="pagination pagination-info">
						<logic:notEqual name="pageHT" value="1">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-nhanvien?pageHT=${(pageHT-1)}">pre</html:link></li>
						</logic:notEqual>
						<logic:equal name="pageHT" value="1">
							<%-- <li class="page-item"><html:link linkName=""
									styleClass="page-link"
									
									action="/danh-sach-nhanvien?pagetHT=${(pageHT)}">pre</html:link></li> --%>
						</logic:equal>
						<logic:iterate id="sopage" name="danhSachNhanVienForm"
							property="soLuongPage">
							<li class="page-item so "><html:link
									styleClass=" page-link " styleId="vitri" linkName=""
									action="/danh-sach-nhanvien?pageHT=${sopage}">
									<bean:write name="sopage" />
								</html:link></li>
						</logic:iterate>
						<logic:equal name="pageHT" value="${maxPage}">
							<%-- <li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-nhanvien?pageHT=${maxPage }">next</html:link></li> --%>

						</logic:equal>
						<logic:notEqual name="pageHT" value="${maxPage}">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-nhanvien?pageHT=${(pageHT+1) }">next</html:link></li>

						</logic:notEqual>

					</ul>
				</div>
			</logic:empty>



		</logic:notEqual>
		<!-- end pagination -->
		<!-- script set active pagination -->
		<script type="text/javascript">
		$(document).ready(function(){
			
			//gan ten khach san khi click chon drop down
			$(".page-link").each(function(){
				var mapage = $(this).text();
				var pageht=${pageHT};
				if(mapage==pageht){
					$(this).closest("li").addClass("active page-item")
				}
				/* if(map==maPhong){
					$(this).find(".sophong").text(soPhong);
					$(this).find(".tenloaiphong").text(tenLP);
				} */
			})
		})
		</script>
		<!-- end script set active pagination -->


	</div>
	<!-- end content  -->

	<!-- pop up edit info employee -->
	<div class="modal fade bd-example-modal-lg " tabindex="-1"
		role="dialog" aria-labelledby="myLargeModalLabel" id="suanv" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">Thay đổi thông
						tin nhân viên.</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<html:form>
						<!-- row 1  -->
						<div class="row">
							<div class="col-md-2">
								<div class="form-group">
									<label class="bmd-label-floating">Mã Nhân Viên </label> 
									<input id="manvsua" type="text" class="form-control" disabled="disabled"  >
								</div>
							</div>
							<!-- end input mã nhân viên -->
							<div class="col-md-5">
								<div class="form-group">
									<div class="dropdown-booking" style="margin-top: -10px;">
										<button class="btn btn-block btn-primary dropdown-toggle chonksthem" data-toggle="dropdown" id="tenks-dropdown-p">Chọn Khách Sạn</button>
										<div class="dropdown-menu booking" id="bookingdiv-p" style="padding-left: 15px;">
										<input type="text" class="form-control" placeholder="Search.." id="myInput-p">
										<logic:iterate id="dsKhachSan" name="danhSachNhanVienForm" property="listKhachSan">
											<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
											<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
												<p class="tenks-p click" data-maks="${maks}">
													<bean:write name="tenks" />
												</p>
										</logic:iterate>
									</div>
									</div>
								</div>
							</div>
							<html:hidden property="maKS" styleId="maks" />
							<!-- end button tên khách sạn -->
							<div class="col-md-5">
								<div class="form-group">
									<div class="dropdown-booking" style="margin-top: -10px;">
										<button class="btn btn-block btn-primary dropdown-toggle chucvu" data-toggle="dropdown" id="chucvu">Chọn Chức Vụ</button>
									<div class="dropdown-menu booking" id="bookingdiv" style="padding-left: 15px;">
										<input type="text" class="form-control" placeholder="Search.." id="myInput">
										<logic:iterate id="dsChucVu" name="danhSachNhanVienForm" property="listChucVu">
											<bean:define id="tencv" name="dsChucVu" property="tenChucVu"></bean:define>
											<bean:define id="macv" name="dsChucVu" property="maChucVu"></bean:define>
												<p class="cv clickcv"  data-macv="${macv}">
													<bean:write name="tencv" />
												</p>
										</logic:iterate>
									</div>
									</div>
								</div>
							</div>
							<html:hidden property="maChucVu" styleClass="maChucVu"/>
							<!-- butto chọn chức vụ -->
						</div>
						<!-- row 2 -->
						<div class="row">
							<div class="col-md-5">
								<div class="form-group">
									<label class="bmd-label-floating">Tên Nhân Viên</label> 
									<span id="kqCheckMaPhong"></span>
									<input id="tennvsua" type="text" class="form-control"   >
								</div>
							</div>
							<!-- end input tên nhân viên -->
							<div class="col-md-2">
								<div class="form-group" style="margin-top: 8%;">
									<div class="form-check">
										<label class="form-check-label"> 
										<html:radio property="gioiTinh" styleClass="form-check-input" value="1"> Nam</html:radio>
										<span class="circle">
											<span class="check"></span>
										</span>
									</label>
									</div>
									<div class="form-check">
										<label class="form-check-label"> 
										<html:radio property="gioiTinh" styleClass="form-check-input" value="0"> Nữ</html:radio>
										<span class="circle"> 
											<span class="check"></span>
										</span>
									</label>
									</div>
								</div>
							</div>
							<!-- end input giới tính -->
							<div class="col-md-5">
								<div class="form-group">
										<input type="date" class="datengayden birthday" value="" id="datepicker">										
								</div>
							</div>
						</div>
						<!-- end input ngày sinh -->
						<!-- row 3  -->
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label class="bmd-label-floating">Số Điện Thoại</label> 
									<span id="kqCheckMaPhong"></span>
									<html:text property="soDienThoai"  styleClass="form-control sodtsua"></html:text>
								</div>
							</div>
							<!-- end input số điện thoại -->
							<div class="col-md-4">
								<div class="form-group">
									<label class="bmd-label-floating">Email</label> 
									<span id="kqCheckMaPhong"></span>
									<html:text property="email" styleClass="form-control emailsua"></html:text>
								</div>
							</div>
							<!-- end iuput email -->
							<div class="col-md-4">
								<div class="form-group">
									<label class="bmd-label-floating">Địa Chỉ</label> 
									<span id="kqCheckMaPhong"></span>
									<html:text property="diaChi" styleClass="form-control diachisua"></html:text>
								</div>
							</div>
							<!-- end input địa chỉ -->
						</div>
						<button class="btn btn-primary pull-right"  id="btn-sua-nhanvien">Lưu Thay Đổi</button>
						<div class="clearfix"></div>
					</html:form>
				</div>
			</div>
		</div>
	</div>
	<!-- end pop up -->

	<!-- pop up add employee -->
	<div class="modal fade bd-example-modal-lg themnhanvien" tabindex="-1"
		role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title" id="exampleModalLabel">Thêm nhân viên</h3>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- row 1  -->
					<html:form action="them-nhanvien" method="post"> 
					<div class="row">
						<div class="col-md-2">
							<div class="form-group">
								<label class="bmd-label-floating">Mã Nhân Viên </label> 
								<span id="kqCheckMaPhong"></span>
								<html:text property="maNhanVien" styleClass="form-control"></html:text>
							</div>
						</div>
						<!-- end input mã nhân viên -->
						<div class="col-md-5">
							<div class="form-group">
								<div class="dropdown-booking" style="margin-top: -15px;">
									<button class="btn btn-block btn-primary dropdown-toggle chonksthem"
										data-toggle="dropdown" id="tenks-dropdown-p">Chọn Khách Sạn</button>
									<div class="dropdown-menu booking" id="bookingdiv-p"
										style="padding-left: 15px;">
										<input type="text" class="form-control" placeholder="Search.."
											id="myInput-p">
										<logic:iterate id="dsKhachSan" name="danhSachNhanVienForm"
											property="listKhachSan">
											<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
											<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
												<p class="tenks-p click" data-maks="${maks}">
													<bean:write name="tenks" />
												</p>
										</logic:iterate>
									</div>
								</div>
							</div>
						</div>
						<html:hidden property="maKS" styleId="maks" />
						<!-- end button tên khách sạn -->
						<div class="col-md-5">
							<div class="form-group">
								<div class="dropdown-booking" style="margin-top: -15px;">
									<button class="btn btn-block btn-primary dropdown-toggle chucvu"
										data-toggle="dropdown" id="chucvu">Chọn Chức Vụ</button>
									<div class="dropdown-menu booking" id="bookingdiv"
										style="padding-left: 15px;">
										<input type="text" class="form-control" placeholder="Search.."
											id="myInput">
										<logic:iterate id="dsChucVu" name="danhSachNhanVienForm"
											property="listChucVu">
											<bean:define id="tencv" name="dsChucVu" property="tenChucVu"></bean:define>
											<bean:define id="macv" name="dsChucVu" property="maChucVu"></bean:define>
												<p class="cv clickcv"  data-macv="${macv}">
													<bean:write name="tencv" />
												</p>
										</logic:iterate>
									</div>
								</div>
							</div>
						</div>
						<html:hidden property="maChucVu" styleClass="maChucVu"/>
						<!-- butto chọn chức vụ -->
					</div>
					<!-- row 2 -->
					<div class="row">
						<div class="col-md-5">
							<div class="form-group">
								<label class="bmd-label-floating">Tên Nhân Viên</label> 
								<span id="kqCheckMaPhong"></span>
								<html:text property="tenNhanVien" styleClass="form-control"></html:text>
							</div>
						</div>
						<!-- end input tên nhân viên -->
						<div class="col-md-2">
							<div class="form-group" style="margin-top: 8%;">
								<div class="form-check">
									<label class="form-check-label"> 
										<html:radio property="gioiTinh" styleClass="form-check-input "  value="1"> Nam</html:radio> 
										<span class="circle">
											<span class="check"></span>
										</span>
									</label>
								</div>
								<div class="form-check">
									<label class="form-check-label"> 
										<html:radio property="gioiTinh" styleClass="form-check-input "  value="0"> Nu</html:radio>
										<span class="circle"> 
											<span class="check">
										</span>
										</span>
									</label>
								</div>
							</div>
						</div>
						<!-- end input giới tính -->
						<div class="col-md-5">
							<div class="form-group">
								<div class="form-group">
									<label class="bmd-label-floating">Ngày Sinh</label> 
									<span id="kqCheckMaPhong"></span>
									<html:text property="ngaySinh" styleClass="form-control datetimepicker"></html:text>
								</div>
							</div>
						</div>
					</div>
					<!-- end input ngày sinh -->
					<!-- row 3  -->
					<div class="row">
						<div class="col-md-4">
							<div class="form-group">
								<label class="bmd-label-floating">Số Điện Thoại</label> 
								<span id="kqCheckMaPhong"></span>
								<html:text property="soDienThoai" styleClass="form-control"></html:text>
							</div>
						</div>
						<!-- end input số điện thoại -->
						<div class="col-md-4">
							<div class="form-group">
								<label class="bmd-label-floating">Email</label> 
								<span id="kqCheckMaPhong"></span>
								<html:text property="email" styleClass="form-control"></html:text>
							</div>
						</div>
						<!-- end iuput email -->
						<div class="col-md-4">
							<div class="form-group">
								<label class="bmd-label-floating">Địa Chỉ</label> 
								<span id="kqCheckMaPhong"></span>
								<html:text property="diaChi" styleClass="form-control"></html:text>
							</div>
						</div>
						<!-- end input địa chỉ -->
					</div>
					<html:submit value="submit" styleClass="btn btn-primary pull-right" >Thêm</html:submit>
					<div class="clearfix"></div>
					</html:form>
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