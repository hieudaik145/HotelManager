<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản Lý Khách Hàng Nhận Phòng</title>
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
              <h4 class="card-title mt-0"> Danh Sách Khách Hàng Đã Nhận Phòng</h4>
             </div>
             <div class="row">
             	<div class="col-md-5">
		            <form class="form-inline ml-auto form-search">
		               <div class="form-group ">
		                  <input type="text" class="form-control" placeholder="Search">
		                  <button type="submit" class="btn btn-white btn-raised btn-fab btn-round">
		                    <i class="material-icons">search</i>
		                  </button>
		               </div>
		            </form> 
             	</div>
          	<!-- end form -->
     
    	</div>
             <div class="card-body">
                <div class="table-responsive">
                   <table class="table table-hover">
                      <thead class="">
                        <th> Tên Khách Hàng </th>
                        <th> Số Điện Thoại </th>
                        <th> Mã Phòng </th>
                        <th> Ngày Đến</th>
                        <th> Ngày Đi</th>
                        <th> Xem Chi Tiết </th>
                        <th> Check Out </th>
                      </thead>
                      <tbody>
                        <tr>
                          <td>
                           Nguyễn Văn A
                          </td>
                          <td>
                            0965676947
                          </td>
                          <td>
                           PV01
                          </td>
                          <td>2019/03/03</td>
                          <td>2019/03/06</td>
                          <td style="text-align: center;">
                         		<a href="#"> <span class="fa fa-id-card-o fa-2x" aria-hidden="true" data-toggle="modal" data-target=".bd-example-modal-lg" data-whatever="@getbootstrap" > </span></a> 
                          </td>
                          <td style="text-align: center;">
                          		<a href="#"><span class="fa fa-share-square fa-2x"  ></span></a>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
                   <!-- end table -->
            </div>
      </div>
  
      <div class="col-md-6" style="position: relative; left: 35%">             
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
       </div>
       <!-- end pagination -->
     <!-- pop up -->
     <div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  		 <div class="modal-dialog modal-lg">
    		<div class="modal-content">
      			<div class="modal-header">
        			<h3 class="modal-title" id="exampleModalLabel">Chi tiết khách hàng</h3>
        			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          				<span aria-hidden="true">&times;</span>
        			</button>
      			</div>
      	<div class="modal-body">
        	<form>
        	<div class="row">
        		<div class="col-md-4">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Tên khách hàng</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="Giáp Hoàng Khang Hy">
          			</div>
          		</div>
          	<!-- end input tên khách hàng -->
          		<div class="col-md-4">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Số điện thoại</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="0965676947">
          			</div>
          		</div>
          	<!-- end input số điện thoại -->
          		<div class="col-md-4">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Email</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="hydeptrai@gmail.com">
          			</div>
          		</div>
          	<!-- end input số điện thoại -->
          	</div>
       <!-- end row 1 -->
			<div class="row">
				<div class="col-md-4">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Loại phòng</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="vipprokute">
          			</div>
          		</div>
          	<!-- end input loại phòng -->
          		<div class="col-md-4">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Số lượng phòng</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="5">
          			</div>
          		</div>
          	<!-- end input số lượng phòng -->
          		<div class="col-md-4">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Số ngày sử dụng</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="chưa biết">
          			</div>
          		</div>
          	<!-- end input số ngay sữ dụng -->
			</div>
	   <!-- end row 2 -->
	   		<div class="row">
	   			<div class="col-md-6">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">tên khách sạn</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="Dream Hotel Luxury Quy Nhơn">
          			</div>
          		</div>
          	<!-- end input tên khách sạn -->	   		
	   			<div class="col-md-3">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Ngày đến</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="19/04/2019">
          			</div>
          		</div>
          	<!-- end input số lượng phòng -->
          		<div class="col-md-3">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Ngày đi</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="26/04/2019">
          			</div>
          		</div>
          	<!-- end input số ngay sữ dụng -->
	   		</div>
	   <!-- end row 3 -->
	   		<div class="row">
	   			<div class="col-md-4">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Giá tiền(Ngày đêm)</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="5000000">
          			</div>
          		</div>
          	<!-- end input giá tiền -->
          		<div class="col-md-4">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Tổng tiền</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" value="45000000">
          			</div>
          		</div>
          	<!-- end input tổng tiền -->
          		<div class="col-md-4">
          			<div class="form-group">
            			<label for="recipient-name" class="col-form-label">Số tiền đã cộc</label>
            			<input type="text" class="form-control" id="recipient-name" disabled="disabled" divalue="20000000">
          			</div>
          		</div>
          	<!-- end input số tiền cộc -->
	   		</div>
	   <!-- end row 4 -->
        	</form>
        </div>
      	<div class="modal-footer">
        	<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      	</div>
    		</div>
  		</div>
	</div>
     <!-- end pop up -->
     
    </div>
	<!-- end content  -->
	
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