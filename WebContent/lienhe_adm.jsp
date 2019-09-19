<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ý kiến khách hàng</title>
</head>
<body>
	<jsp:include page="header_adm.jsp"></jsp:include>
	<jsp:include page="sidebar_adm.jsp"></jsp:include>
	
	 <div class="main-panel ps-container ps-theme-default" data-ps-id="287414e0-5e0f-6933-edaf-268eded04a7f" style="margin-top: 5%;">
	 	<div class="card card-plain">
             <div class="card-header card-header-primary">
              <h4 class="card-title mt-0"> Ý kiến khách hàng</h4>
             </div>
          	<div class="card-body">
                <div class="table-responsive">
                   <table class="table table-hover">
                      <thead class="">
                      	<th>Mã Liên Hệ</th>
                        <th> Tên Khách Hàng </th>
                        <th> Email</th>
                        <th> Số Điện Thoại </th>
                        <th> Nội Dung Message </th>
                        <th> Tình Trạng </th>
                        <th> Đã Xem</th>
                      </thead>
                      <logic:iterate id="dsLienHe" name="danhSachLienHeForm" property="listLienHe">
                      <tbody>
                        <tr>
                          <td>
                           <bean:write name="dsLienHe" property="maLienHe"/>
                          </td>
                          <td>
                           <bean:write name="dsLienHe" property="hoTen"/>
                          </td>
                          <td>
                            <bean:write name="dsLienHe" property="email"/>
                          </td>
                          <td>
                            <bean:write name="dsLienHe" property="sdt"/>
                          </td>
                          <td>
                            <bean:write name="dsLienHe" property="message"></bean:write>
                          </td>
                          <td>
                            <bean:write name="dsLienHe" property="tinhTrang"/>
                          </td>
                          <td>
                          	<a href="#"> <span  class="fa fa-book fa-2x" aria-hidden="true" ></span></a>
                          </td>
                         
                        </tr>
                                        
                      </tbody>
                      </logic:iterate>
                    </table>
                  </div>
                </div>
                   <!-- end table -->
        </div>
	 </div>
	
	<jsp:include page="footer_adm.jsp"></jsp:include>
</body>
</html>

*/HIeupro/*
