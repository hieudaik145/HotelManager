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
	
	<div class="main-panel ps-container ps-theme-default" data-ps-id="287414e0-5e0f-6933-edaf-268eded04a7f" style="margin-top: 5%;">
	<div class="col-md-12">
    	<div class="card card-plain">
             <div class="card-header card-header-primary">
              <h4 class="card-title mt-0"> Danh Sách Khách Hàng Đã Check In</h4>
             </div>
             <div class="row">
             	<div class="col-md-3">
		            	<html:form styleClass="form-inline ml-auto form-search" action="danh-sach-booking">
		               <div class="form-group has-white">
		               	<html:text property="chuoiSearch" styleClass="form-control"></html:text>
		                <!--   <input type="text" class="form-control" placeholder="Search"> -->
		                <%-- <html:submit styleClass="btn btn-white btn-raised btn-fab btn-round"></html:submit> --%>
		                 <!--  <button type="submit" class="btn btn-white btn-raised btn-fab btn-round">
		                    <i class="material-icons">search</i>
		                  </button> -->
		                  <html:hidden property="bookorcheck" value="check"/>
		                  <html:submit styleClass="btn btn-primary btn-sm">Tìm Kiếm</html:submit>
		                 <%--  <html:button property="button" onclick="submit" styleClass="btn btn-white btn-raised btn-fab btn-round" value="Click" ></html:button> --%>
		               </div>
		       </html:form>
             	</div>
          	<!-- end form -->
          		 <div class="col-md-4" style="margin-top: 3%;">
						<div class="dropdown-booking">
							<logic:notEmpty name="danhSachBookingForm" property="tenKS">
								<bean:define id="tenKS" name="danhSachBookingForm"
									property="tenKS"></bean:define>
								<button class="btn btn-block btn-primary dropdown-toggle"
									data-toggle="dropdown" id="tenks-dropdown">
									<bean:write name="tenKS" />
								</button>
							</logic:notEmpty>
							<logic:empty name="danhSachBookingForm" property="tenKS">
								<button class="btn btn-block btn-primary dropdown-toggle"
									data-toggle="dropdown" id="tenks-dropdown">Chọn Khách
									Sạn</button>
							</logic:empty>

							<div class="dropdown-menu booking" id="bookingdiv"
								style="padding-left: 15px;">
								<input type="text" class="form-control" placeholder="Search.."
									id="myInput">
								<logic:iterate id="dsKhachSan" name="danhSachBookingForm"
									property="listKhachSan">
									<bean:define id="tenks" name="dsKhachSan" property="tenKS"></bean:define>
									<bean:define id="maks" name="dsKhachSan" property="maKS"></bean:define>
									<html:link action="/danh-sach-booking?command=checkIn&maKS=${maks}">
										<p class="tenks">
											<bean:write name="tenks" />
										</p>
									</html:link>
								</logic:iterate>

							</div>
						</div>
					</div>
        <!-- END dropdown search -->     
    	</div>
             <div class="card-body">
                <div class="table-responsive">
                   <table class="table table-hover">
                      <thead class="">
                      <th>Boking ID</th>
                        <th> Tên Khách Hàng </th>
                        <th> Số Điện Thoại </th>
                        <th>Tên Khách Sạn</th>
                        <th> Ngày Đến</th>
                        <th> Ngày Đi</th>
                        <th> Tổng Tiền</th>
                        <th> Xem Chi Tiết </th>
                        <th> EDIT </th>
                        <th> DELETE </th>
                      </thead>
                      <tbody>
                      
					<logic:iterate id="dsBooking" name="danhSachBookingForm" property="listBooking">
                        <tr>
                          <td id="bookingid"><bean:write name="dsBooking" property="bookingID"/></td>
                          <td id="tenkh">
                          <bean:write name="dsBooking" property="tenKH"/>
                          </td>
                          <td>
                           <bean:write name="dsBooking" property="sdt"/>
                          </td>
                          <td><bean:write name="dsBooking" property="tenKS"/></td>
                          <td><bean:write name="dsBooking" property="ngayDen"/></td>
                          <td><bean:write name="dsBooking" property="ngayDi"/></td>
                          <td><bean:write name="dsBooking" property="tongTien"/></td>
                          <td style="text-align: center;">
                          		<html:link action="chi-tiet-booking?command=checkin&bookingID=${dsBooking.bookingID}">
                         			<span class="fa fa-id-card-o fa-2x" aria-hidden="true" data-toggle="modal" data-target="#xemchitiet" data-whatever="@getbootstrap" > </span>
                         		</html:link>
                          </td>
                          <td style="text-align: center;">
                          		<a href="#"> <span class="fa fa-pencil-square-o fa-2x" aria-hidden="true" data-toggle="modal" data-target=".edit-info" data-whatever="@getbootstrap" ></span></a>
                          </td>
                          <td style="text-align: center;">
                          		<a href="#"><span class="fa fa-trash fa-2x xoa-booking"  style="cursor: pointer;"  aria-hidden="true"></span></a>
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
     
    

     
     <!-- pop up edit thong tin khach hang dat phong -->
	<div class="modal fade bd-example-modal-lg edit-info" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  		 <div class="modal-dialog modal-lg">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h3 class="modal-title" id="exampleModalLabel">Thay đổi thông tin khách hàng</h3>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      	<div class="modal-body">
        	<form>
        	<div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Tên Khác Hàng </label>
                          <input type="text" class="form-control" >
                        </div>
                      </div>
              <!-- end input tên khách Hàng -->
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Số Điện Thoại </label>
                          <input type="text" class="form-control" >
                        </div>
                      </div>
              <!-- end input số điện thoại -->
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email </label>
                          <input type="text" class="form-control" >
                        </div>
                      </div>
              <!-- end input email -->
                    </div>
           <!-- row 2 -->
                    <div class="row">
                    	<div class="col-md-6">
                        <div class="form-group">
				    		<div class="dropdown-booking" style="margin-top: -15px;">
					    		<button class="btn btn-block btn-primary dropdown-toggle" data-toggle="dropdown" id="tenks-dropdown" >Chọn Khách Sạn</button>
					    		<div class="dropdown-menu booking" id="bookingdiv" style="padding-left: 15px;">
					    			<input type="text" class="form-control" placeholder="Search.." id="myInput">
					    			<p class="tenks">LUXURY DREAM HOTEL</p>
					    			<p class="tenks">Luxury Quy Nhơn Resor</p>
					    			<p class="tenks">Luxury Hồ Chí Minh</p>
					    			<p class="tenks">Luxury Huynh Anh Hotel</p>
					    			<p class="tenks">Luxury Duong LT COOC</p>
					    			<p class="tenks">Luxury Đà Nẵng Hotel</p>
					    			<p class="tenks">Luxury Quy Nhơn Resor</p>
					    		</div>
				    		</div>
                        </div>
                      </div>
             <!-- end button tên khách sạn -->
				        <div class="col-md-6" style="margin: auto;">
				    		<div class="dropdown-booking">
					    		<button class="btn btn-block btn-primary dropdown-toggle" data-toggle="dropdown" id="loaiphong" >Chọn Loại Phòng</button>
					    		<div class="dropdown-menu booking" id="bookingdiv" style="padding-left: 15px;">
					    			<p class="loaip">Phòng VIP Đơn</p>
					    			<p class="loaip">Phòng VIP Đôi</p>
					    			<p class="loaip">Phòng Thường Đơn</p>
					    			<p class="loaip">Phòng Thường Đôi</p>
					    		</div>
				    		</div>
				        </div> 
                 <!-- end input mã phòng -->
                  </div> 
               <!-- row 3  -->
                  <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                            <div class="form-group">
                    			<label class="bmd-label-floating">Ngày Đến</label>
                    			<input type="text" class="form-control datetimepicker" id="ngayden" value="">
              				</div>
                        </div>
                      </div>
                  <!-- end input ngày đến -->
                      <div class="col-md-4">
                        <div class="form-group">
                            <div class="form-group">
                    			<label class="bmd-label-floating">Ngày Đi</label>
                    			<input type="text" class="form-control datetimepicker" id="ngaydi" value="">
              				</div>
                        </div>
                      </div>                    
                <!-- end input ngày đi -->
					 	<div class="col-md-4">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Số Lượng Phòng</label>
                          		<input type="text" class="form-control">
                        	</div>
                     	</div>
                <!-- end Sô Lượng Phòng -->
             </div>                    
             <!-- row 4  -->
             		<div class="row">
						<div class="col-md-4">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Giá Tiền(Ngày Đêm)</label>
                          		<input type="text" class="form-control" disabled="disabled">
                        	</div>
                       </div>             			
             	<!-- end input số ngày  -->
						<div class="col-md-4">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Tổng Tiền</label>
                          		<input type="text" class="form-control">
                        	</div>
                       </div>
                <!-- end iuput giá tiền  -->
                       <div class="col-md-4">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Số Tiền Đã Cộc</label>
                          		<input type="text" class="form-control">
                        	</div>
                       </div>
                <!-- end input Tổng Tiền -->             			
             		</div>
                    <button type="submit"  class="btn btn-primary pull-right">Thay Đổi</button>
                    <div class="clearfix"></div>
	   <!-- end row 4 -->
        	</form>
        </div>
    		</div>
  		</div>
	</div>
	</div>
    <jsp:include page="footer_adm.jsp"></jsp:include>
    <!-- end footer -->	
    
    <script type="text/javascript">
 	$(document).ready(function(){
 		
 		$("#tenks-dropdown").click(function(){
 			$("#myInput").focus();
 		});
 		
 	});
 	
 	</script>
</body>
</html>