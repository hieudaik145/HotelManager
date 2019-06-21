<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Chức Vụ</title>
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
                  <h4 class="card-title">Thay Đổi Thông Tin Chức Vụ</h4>
                </div>
                <div class="card-body">
                  <form>
              <!-- row 1  -->
                    <div class="row">
                      <div class="col-md-5" style="margin: auto;">
                        <div class="form-group">
                          <label class="bmd-label-floating">Mã chức vụ </label>
                          <input type="text" class="form-control" disabled="disabled">
                        </div>
                      </div>
                    </div>
           <!-- row 2 -->
                    <div class="row">
                      <div class="col-md-5" style="margin: auto;">
                        <div class="form-group">
                          <label class="bmd-label-floating">Tên chức vụ</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                    </div>
          <!-- row 3 -->
          			<div class="row">
          				<div class="col-md-3" style="margin-left: 21%;">
          					<button type="submit" class="btn btn-primary pull-right">Quay Lại</button>
          				</div>
          				<div class="col-md-3">
          					 <button type="submit" class="btn btn-primary pull-right">Thay Đổi</button>
          				</div>
          			</div>   
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
      <script type="text/javascript">
      	$(document).ready(function(){
      		$("#datebirthday").datepicker();
      	})
      </script>
      <!-- end footer -->
</body>
</html>