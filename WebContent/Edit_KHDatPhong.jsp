<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
                  <h4 class="card-title">Thay Đổi Thông Tin Khách Hàng Đặt Phòng</h4>
                </div>
                <div class="card-body">
                  <form action="">
              <!-- row 1  -->
                    <div class="row">
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Tên Khác Hàng </label>
                          <input type="text" class="form-control" >
                        </div>
                      </div>
              <!-- end input tên khách Hàng -->
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Số Điện Thoại </label>
                          <input type="text" class="form-control" >
                        </div>
                      </div>
              <!-- end input số điện thoại -->
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">Email </label>
                          <input type="text" class="form-control" >
                        </div>
                      </div>
              <!-- end input email -->
                      <div class="col-md-3">
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
                    </div>
           <!-- row 2 -->
                    <div class="row">
				        <div class="col-md-3" style="margin: auto;">
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
                      <div class="col-md-3">
                        <div class="form-group">
                            <div class="form-group">
                    			<label class="bmd-label-floating">Ngày Đến</label>
                    			<input type="text" class="form-control datetimepicker" id="ngayden" value="">
              				</div>
                        </div>
                      </div>
                  <!-- end input ngày đến -->
                      <div class="col-md-3">
                        <div class="form-group">
                            <div class="form-group">
                    			<label class="bmd-label-floating">Ngày Đi</label>
                    			<input type="text" class="form-control datetimepicker" id="ngaydi" value="">
              				</div>
                        </div>
                      </div>                    
                <!-- end input ngày đi -->
					 	<div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Số Lượng Phòng</label>
                          		<input type="text" class="form-control">
                        	</div>
                     	</div>
                <!-- end Sô Lượng Phòng -->
                    </div>               
             <!-- row 3  -->
             		<div class="row">
						<div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Số Ngày Sử Dụng</label>
                          		<input type="text" class="form-control">
                        	</div>
                       </div>             			
             	<!-- end input số lượng phòng -->
						<div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Giá Tiền(Ngày Đêm)</label>
                          		<input type="text" class="form-control" disabled="disabled">
                        	</div>
                       </div>             			
             	<!-- end input số ngày  -->
						<div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Tổng Tiền</label>
                          		<input type="text" class="form-control">
                        	</div>
                       </div>
                <!-- end iuput giá tiền  -->
                       <div class="col-md-3">
                        	<div class="form-group">
                          		<label class="bmd-label-floating">Số Tiền Đã Cộc</label>
                          		<input type="text" class="form-control">
                        	</div>
                       </div>
                <!-- end input Tổng Tiền -->             			
             		</div>
                    <button type="submit"  class="btn btn-primary pull-right">Thay Đổi</button>
                    <button type="submit" class="btn btn-primary pull-right">Quay Lại</button>
                    <div class="clearfix"></div>
                 	</form>
                  <!-- end form -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
      <!-- end content -->
      
      <jsp:include page="footer_adm.jsp"></jsp:include>
      <!-- end footer -->
      <script type="text/javascript">
      	$(document).ready(function(){
      		$("#ngayden").datepicker();
      	})
      	
      	$(document).ready(function(){
      		$("#ngaydi").datepicker();
      	})
      </script>
      
</body>
</html>