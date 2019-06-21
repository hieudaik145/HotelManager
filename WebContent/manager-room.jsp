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
					<h4 class="card-title mt-0">Danh Sách Phòng</h4>
				</div>
				<div class="row">
					<div class="col-md-3">
						<form class="form-inline ml-auto form-search" >
							<div class="form-group ">
								<input type="text" class="form-control" placeholder="Search">
								<button type="submit"
									class="btn btn-white btn-raised btn-fab btn-round">
									<i class="material-icons">search</i>
								</button>
							</div>
						</form>
					</div>
					<!-- end form -->
					<div class="col-md-4" style="margin-top: 3%;">
						<div class="dropdown-booking">
							<logic:notEmpty name="danhSachPhongForm" property="tenKS">
								<bean:define id="tenKS" name="danhSachPhongForm"
									property="tenKS"></bean:define>
								<button class="btn btn-block btn-primary dropdown-toggle"
									data-toggle="dropdown" id="tenks-dropdown">
									<bean:write name="tenKS" />
								</button>
							</logic:notEmpty>
							<logic:empty name="danhSachPhongForm" property="tenKS">
								<button class="btn btn-block btn-primary dropdown-toggle"
									data-toggle="dropdown" id="tenks-dropdown">Chọn Khách
									Sạn</button>
							</logic:empty>

							<div class="dropdown-menu booking" id="bookingdiv"
								style="padding-left: 15px;">
								<input type="text" class="form-control" placeholder="Search.."
									id="myInput">
								<logic:iterate id="dsKhachSan" name="danhSachPhongForm"
									property="listKhachSan">
									<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
									<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
									<html:link action="/danh-sach-phong?maKS=${maks}">
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
						<button class="btn btn-primary btn-round" data-toggle="modal" data-target=".them-phong" data-whatever="@getbootstrap">Thêm Phòng</button>
					</div>
					<!-- end button them -->
					<div class="col-md-3" style="margin-top: 3%; margin-left: -10%;">
						<html:link action="/danh-sach-loai-phong"><button class="btn btn-primary btn-round">Loại Phòng</button></html:link>
					</div>
					<!-- end button loai phong -->
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-hover" id="table-room">
							<thead class="">
								<th>Mã Phòng</th>
								<th>Số Phòng</th>
								<th>Tên Khách Sạn</th>
								<th>Loại Phòng</th>
								<th>Giá Tiền</th>
								<th>EDIT</th>
								<th>DELETE</th>
							</thead>
							<tbody>
								<logic:iterate id="dsPhong" name="danhSachPhongForm"
									property="listPhong">
									<tr>
										<td class="maphong"><bean:write name="dsPhong" property="maPhong" /></td>
										<td class="sophong"><bean:write name="dsPhong" property="soPhong" /></td>
										<bean:define id="maksphong" name="dsPhong" property="maKS"></bean:define>
										<td class="tenkhachsan" data-maksphong="${maksphong}"><bean:write name="dsPhong" property="tenKS" /></td>
										<bean:define id="maloaiphong" name="dsPhong" property="maLoaiPhong"></bean:define>
										<td class="tenloaiphong" data-maloaiphong="${maloaiphong}"><bean:write name="dsPhong" property="tenLoaiPhong" />
										</td>
										<td><bean:write name="dsPhong" property="giaTien" /></td>
										<td><a href="#"> <span
												class="fa fa-pencil-square-o fa-2x btn-chinh-sua-phong" aria-hidden="true" data-toggle="modal" data-target="#sua-phong" data-whatever="@getbootstrap"></span></a>
										</td>
										<td><a href="#"><span  class="fa fa-trash fa-2x btn-xoa-phong"
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
		<bean:define id="pageHT" name="danhSachPhongForm" property="pageHT"></bean:define>
		<bean:define id="maxPage" name="danhSachPhongForm" property="maxPage"></bean:define>



		<logic:notEqual value="1" name="maxPage">
			<logic:notEmpty name="danhSachPhongForm" property="maKS">
				<bean:define id="maKS" name="danhSachPhongForm" property="maKS"></bean:define>
				<div class="col-md-6" style="position: relative; left: 35%">
					<ul class="pagination pagination-info">
						<logic:notEqual name="pageHT" value="1">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-phong?pagetHT=${(pageHT-1)}&maKS=${maKS}">pre</html:link></li>
						</logic:notEqual>
						<%-- <logic:equal name="pageHT" value="1">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-phong?pagetHT=${(pageHT)}&maKS=${maKS}">pre</html:link></li>
						</logic:equal> --%>
						<logic:iterate id="sopage" name="danhSachPhongForm"
							property="soLuongPage">
							<li class="page-item"><html:link styleClass="page-link"
									linkName=""
									action="/danh-sach-phong?pageHT=${sopage}&maKS=${maKS}">
									<bean:write name="sopage" />
								</html:link></li>
						</logic:iterate>
						<%-- <logic:equal name="pageHT" value="${maxPage}">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-phong?pageHT=${maxPage }&maKS=${maKS}">next</html:link></li>
						</logic:equal> --%>
						<logic:notEqual name="pageHT" value="${maxPage}">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-phong?pageHT=${(pageHT+1) }&maKS=${maKS}">next</html:link></li>
						</logic:notEqual>

					</ul>
				</div>
			</logic:notEmpty>
			<logic:empty name="danhSachPhongForm" property="maKS">
				<div class="col-md-6" style="position: relative; left: 35%">
					<ul class="pagination pagination-info">
						<logic:notEqual name="pageHT" value="1">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-phong?pageHT=${(pageHT-1)}">pre</html:link></li>
						</logic:notEqual>
						<%-- <logic:equal name="pageHT" value="1">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-phong?pagetHT=${(pageHT)}">pre</html:link></li>
						</logic:equal> --%>
						<logic:iterate id="sopage" name="danhSachPhongForm"
							property="soLuongPage">
							<li class="page-item"><html:link styleClass=" page-link " styleId="vitri"
									linkName="" action="/danh-sach-phong?pageHT=${sopage}">
									<bean:write name="sopage" />
								</html:link></li>
						</logic:iterate>
					<%-- 	<logic:equal name="pageHT" value="${maxPage}">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-phong?pageHT=${maxPage }">next</html:link></li>
						</logic:equal> --%>
						<logic:notEqual name="pageHT" value="${maxPage}">
							<li class="page-item"><html:link linkName=""
									styleClass="page-link"
									action="/danh-sach-phong?pageHT=${(pageHT+1) }">next</html:link></li>

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
	<!-- pop up -->
	
     <div class="modal fade bd-example-modal-lg them-phong" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  		 <div class="modal-dialog modal-lg">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h3 class="modal-title" id="exampleModalLabel">Thêm Mới Phòng</h3>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      	<div class="modal-body">
        	<div class="row" >
    	<div class="col-md-6" style="margin: auto; ">
    		<div class="form-group has-default">
    			<span id="kqCheckMaPhong"></span>
                <input id="ma-phong" type="text" class="form-control" placeholder="Mã Phòng." maxlength="10">
        	</div>
    	</div>		    	
    </div>
     	<div class="row" >
    	<div class="col-md-6" style="margin: auto; ">
    		<div class="form-group has-default">
    			<span id="kqCheckMaPhong"></span>
                <input id="so-phong" type="text" class="form-control" placeholder="Số Phòng..." maxlength="10">
        	</div>
    	</div>		    	
    </div>
    <div class="row">
        <div class="col-md-6" style="margin: auto;">
    		<div class="dropdown-booking">
	    		<button class="btn btn-block btn-primary dropdown-toggle" data-toggle="dropdown" id="tenks-dropdown-p" data-maks="" >Chọn Khách Sạn</button>
	    		<div class="dropdown-menu booking" id="bookingdiv-p" style="padding-left: 15px;">
	    			<input type="text" class="form-control" placeholder="Search.." id="myInput-p">
	    			<logic:iterate id="dsKhachSan" name="danhSachPhongForm"
									property="listKhachSan">
									<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
									<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
									
										<p class="tenks-p" data-maks="${maks}">
											<bean:write name="tenks" />
										</p>
									
					</logic:iterate>
	    			
	    		</div>
    		</div>
        </div>    	
    </div>
    <!-- end chọn khách sạn -->
    <div class="row">
        <div class="col-md-6" style="margin: auto;">
    		<div class="dropdown-booking">
	    		<button class="btn btn-block btn-primary dropdown-toggle loaiphong" data-toggle="dropdown" id="loaiphong" data-malp="" >Chọn Loại Phòng</button>
	    		<div class="dropdown-menu booking" id="bookingdiv" style="padding-left: 15px;">
	    			<logic:iterate id="dsLoaiPhong" name="danhSachPhongForm"
									property="listLoaiPhong">
									<bean:define id="tenLoaiPhong" name="dsLoaiPhong" property="tenLoaiPhong"></bean:define>
									<bean:define id="maLoaiPhong" name="dsLoaiPhong" property="maLoaiPhong"></bean:define>
										<p class="loaip" data-malp="${maLoaiPhong}">
											<bean:write name="tenLoaiPhong" />
										</p>
									
					</logic:iterate>
	    		</div>
    		</div>
        </div>    	
    </div>
    <!--  end chọn loại phòng -->
    <div class="row" style="margin-left: 53%;">
    		 <div class="col-md-3" style="margin-top: 3%;">
              	<button class="btn btn-primary btn-round" id="btn-them-phong"> Thêm</button>
             </div>
    </div>
    </div>
     </div>
     </div>
     </div>
     <!-- end pop up -->
     
     <!-- pop up -->
	
     <div id="sua-phong" class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  		 <div class="modal-dialog modal-lg">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h3 class="modal-title" id="exampleModalLabel">Chỉnh Sửa Phòng</h3>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      	<div class="modal-body">
      		<div class="row" >
    	<div class="col-md-6" style="margin: auto; ">
    		<div class="form-group has-default">
    			<span id="kqCheckMaPhong"></span>
                <input id="ten-khach-san-sua" type="text" class="form-control" data-maks-sua="" disabled="disabled" >
        	</div>
    	</div>		    	
    </div>
        	<div class="row" >
    	<div class="col-md-6" style="margin: auto; ">
    		<div class="form-group has-default">
    			<span id="kqCheckMaPhong"></span>
                <input id="ma-phong-sua" type="text" class="form-control" disabled="disabled" placeholder="Mã Phòng." maxlength="10">
        	</div>
    	</div>		    	
    </div>
     	<div class="row" >
    	<div class="col-md-6" style="margin: auto; ">
    		<div class="form-group has-default">
    			<span id="kqCheckMaPhong"></span>
                <input id="so-phong-sua" type="text" class="form-control" data-sophongsua="" placeholder="Số Phòng..." maxlength="10">
        	</div>
    	</div>		    	
    </div>
    <!-- end chọn khách sạn -->
    <div class="row">
        <div class="col-md-6" style="margin: auto;">
    		<div class="dropdown-booking">
	    		<button class="btn btn-block btn-primary dropdown-toggle loaiphong" data-toggle="dropdown" id="loaiphong-sua" data-malp="" >Chọn Loại Phòng</button>
	    		<div class="dropdown-menu booking" id="bookingdiv" style="padding-left: 15px;">
	    			<logic:iterate id="dsLoaiPhong" name="danhSachPhongForm"
									property="listLoaiPhong">
									<bean:define id="tenLoaiPhong" name="dsLoaiPhong" property="tenLoaiPhong"></bean:define>
									<bean:define id="maLoaiPhong" name="dsLoaiPhong" property="maLoaiPhong"></bean:define>
									
										<p class="loaip" data-malp="${maLoaiPhong}">
											<bean:write name="tenLoaiPhong" />
										</p>
									
					</logic:iterate>
	    		</div>
    		</div>
        </div>    	
    </div>
    <!--  end chọn loại phòng -->
    <div class="row" style="margin-left: 53%;">
    		 <div class="col-md-3" style="margin-top: 3%;">
              	<button class="btn btn-primary btn-round" id="btn-sua-phong">Chỉnh Sửa</button>
             </div>
    </div>
    </div>
     </div>
     </div>
     </div>
     <!-- end pop up -->
     
	<script type="text/javascript">
	$(document).ready(function(){
		
		//gan ten khach san khi click chon drop down
		$(".tenks").click(function(){
			var tenks = $(this).text();
			$("#tenks-dropdown").text(tenks);
		});
	})
	</script>

	
	<jsp:include page="footer_adm.jsp"></jsp:include>
	<!-- end footer -->
	
	


</body>
</html>