<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>baner</title>
</head>
<body>
	<jsp:include page="header_index.jsp"></jsp:include>
	<!--================Banner Area =================-->
        <section class="banner_area">
            <div class="booking_table d_flex align-items-center">
            	<div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
				<div class="container">
					<div class="banner_content text-center">
						<h6>Away from monotonous life</h6>
						<h2>Relax Your Mind</h2>
						<p>If you are looking at blank cassettes on the web, you may be very confused at the<br> difference in price. You may see some for as low as $.17 each.</p>
						
					</div>
				</div>
            </div>
            <div class="hotel_booking_area position">
              <div class="container">
                    <div class="hotel_booking_table">
                    	
                    		<div class="col-md-3">
                            	<h2>Book<br> Your Room</h2>
                    		</div>
                    		<div class="col-md-7">
								 <div class="boking_table">
								 <div class="book_tabel_item">
								 	<div class="row">
								 	<div class="col-md-12">
	                                	<div class="form-group">
	                                          <div class="input-group">
	                                          	<div class="dropdown-booking">
	                                          	<html:form action="/booking-step1">
	    											<button class=" genric-btn primary radius  dropdown-toggle btn-custom" data-toggle="dropdown" id="ttpho-dropdown"  >Chọn Thành Phố</button>
	    											<div class="dropdown-menu booking" id="bookingdiv" >
    													<input type="text" class="fa fa-search  fa-2x form-search" id="myinput" placeholder="Search">
	    												<logic:iterate id="listKhachSan" name="trangChuForm" property="listKhachSan">
	    												<p class="tentp" data-maks="${listKhachSan.maKS}"><bean:write name="listKhachSan" property="tenKS"/></p>
	    												</logic:iterate>
	    											</div>
	    										</html:form>
    											</div>
                                            </div>
	                                    </div>
                             		</div>	
								 	</div>
								 	<div class="row">
					<!-- end button chọn thành phố-->
							 		<div class="col-md-6">
	                                	<div class="form-group">
	                                         	<input type="date" value="" class="datengayden"  id="datepicker">
	                                    </div>
	                            <!-- end button chọn ngày đến -->
                             		</div>	   	
                             		<div class="col-md-6"> 
                                		<div class="form-group">
                                              <input type="date"  class="datengaydi"  id="datepicker">
                                       </div>
                             		</div>
                             <!-- end button chọn ngày đi -->
                             	</div>	
								</div>
								</div>
							</div>
							
                            <div class="col-md-2">
                            	<a class="book_now_btn button_hover linkstep1" >Book Now</a>
                            </div> 
                       
                   </div>  
                </div>
           </div> 
        </section>
        <!--================Banner Area =================-->
        
   
</body>
</html>