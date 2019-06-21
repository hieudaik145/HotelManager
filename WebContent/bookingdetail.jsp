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
<title>Khach Hàng Đặt Phòng</title>
</head>
<body>
	<jsp:include page="header_adm.jsp"></jsp:include>
	<!-- end header -->
	<jsp:include page="sidebar_adm.jsp"></jsp:include>
	<!-- end sidebar -->
	<div class="main-panel ps-container ps-theme-default" data-ps-id="287414e0-5e0f-6933-edaf-268eded04a7f">
	 <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Check In</h4>
                </div>
                <div class="card-body">
              <!-- row 1  -->
              	<bean:define id="booking" name="bookingDetailForm" property="booking"></bean:define>
              		<div class="row">
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Tên Khách Sạn</label>
                          <input type="text" id="tenks" class="form-control"  value="${booking.tenKS}" disabled="disabled">
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Họ Tên Khách Hàng</label>
                          <input type="text" id="tenkh"  data-bookingid="${booking.bookingID}" class="form-control" value="${booking.tenKH}" disabled="disabled">
                        </div>
                      </div>
              <!-- end input tên khách Hàng -->
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Số Điện Thoại </label>
                          <input type="text" id="sdt" class="form-control" value="${booking.sdt}" disabled="disabled">
                        </div>
                      </div>
              <!-- end input số điện thoại -->
              		  <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email </label>
                          <input type="text" id="email" class="form-control" value="${booking.email}" disabled="disabled">
                        </div>
                      </div>
              <!-- end input số điện thoại -->
                   </div>
           <!-- row 2 -->
                    <div class="row">
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Ngày Đến</label>
                          <input type="text" class="form-control" value="${booking.ngayDen}" disabled="disabled">
                        </div>
                      </div>
                 <!-- end input mã phòng -->
                      <div class="col-md-3">
                        <div class="form-group">
                            <div class="form-group">
                    			<label class="bmd-label-floating">Ngày Đi</label>
                    			<input type="text" class="form-control datetimepicker" id="ngayden" value="${booking.ngayDi }" disabled="disabled">
              				</div>
                        </div>
                      </div>
                  <!-- end input ngày đến -->
                      <div class="col-md-3">
                        <div class="form-group">
                            <div class="form-group">
                    			<label class="bmd-label-floating">Tinh Trang</label>
                    			<input type="text" class="form-control datetimepicker" value="${booking.tinhTrang }" id="ngaydi" value="" disabled="disabled">
              				</div>
                        </div>
                      </div>                    
                <!-- end input ngày đi -->
					 	<div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Tổng Tiền</label>
                          		<input type="text" class="form-control" value="${booking.tongTien }" disabled="disabled">
                        	</div>
                     	</div>
                <!-- end Sô Lượng Phòng -->
                    </div>               
             <!-- row 3  -->
             <logic:iterate id="listBookingDetail" name="bookingDetailForm" property="listBookingDetails">
             		<div class="row">
						<div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Số Phòng</label>
                          		<input type="text" class="form-control" value="${listBookingDetail.maPhong}" disabled="disabled">
                        	</div>
                       </div>
                   
             		
						<div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Số Phòng</label>
                          		<input type="text" class="form-control" value="${listBookingDetail.soPhong}" disabled="disabled">
                        	</div>
                       </div>             			
             	<!-- end input số lượng phòng -->
						<div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Tên Loại Phòng</label>
                          		<input type="text" class="form-control" value="${listBookingDetail.tenLoaiPhong}" disabled="disabled">
                        	</div>
                       </div>             			
             	<!-- end input số ngày  -->
						<div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Giá Tiền</label>
                          		<input type="text" class="form-control" value="${listBookingDetail.giaTien}" disabled="disabled">
                        	</div>
                       </div>
                <!-- end iuput giá tiền  -->
                     <!--   <div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Số Tiền Đã Cộc</label>
                          		<input type="text" class="form-control" disabled="disabled">
                        	</div>
                       </div> -->
                <!-- end input Tổng Tiền -->             			
             		</div>
             		 </logic:iterate>
             		 <logic:notEmpty name="bookingDetailForm" property="command">
             		 	 <button id="btn-checkout" class="btn btn-primary pull-right">Check Out</button>
             		 </logic:notEmpty>
             		 <logic:empty name="bookingDetailForm" property="command">
             		 	<button id="btn-checkin" class="btn btn-primary pull-right">Check In</button>
             		 </logic:empty>
                   
                    <logic:notEmpty name="bookingDetailForm" property="command">
             		 	 <html:link action="danh-sach-booking?command=checkIn&maKS=${booking.maKS }">  <button  class="btn btn-primary pull-right">Quay Lại</button></html:link> 
             		 </logic:notEmpty>
             		 <logic:empty name="bookingDetailForm" property="command">
             		 	 <html:link action="danh-sach-booking?maKS=${booking.maKS }">  <button  class="btn btn-primary pull-right">Quay Lại</button></html:link>
             		 </logic:empty>
                  
                    <div class="clearfix"></div>
                  <!-- end form -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <!-- end content -->
      <!-- <script type="text/javascript">
      	$(document).ready(function(){
      		$("#ngayden").datepicker();
      	})
      	
      	$(document).ready(function(){
      		$("#ngaydi").datepicker();
      	})
      </script> -->
      <jsp:include page="footer_adm.jsp"></jsp:include>
      <!-- end footer -->
      
      
</body>
</html>