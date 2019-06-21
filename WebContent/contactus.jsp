<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Royal Hotel</title>
</head>
<body>

	<jsp:include page="banner_aboutus.jsp"></jsp:include>
	  <!--================Breadcrumb Area =================-->
    <section class="contact_area section_gap">
            <div class="container">
                
                <div class="row">
                    <div class="col-md-3">
                        <div class="contact_info">
                            <div class="info_item">
                                <i class="lnr lnr-home"></i>
                                <h6>Quy Nhơn University</h6>
                                <p>An Duong Vuong Street</p>
                            </div>
                            <div class="info_item">
                                <i class="lnr lnr-phone-handset"></i>
                                <h6><a href="#">+(84) 9999 0612</a></h6>
                                <p>Mon to Fri 9am to 6 pm</p>
                            </div>
                            <div class="info_item">
                                <i class="lnr lnr-envelope"></i>
                                <h6><a href="#">royalhotel@gmail.com</a></h6>
                                <p>Send us your query anytime!</p>
                            </div>
                        </div>
                    </div>
                     
                    <div class="col-md-9">
                    <html:form styleClass="row contact_form" action="/lienhe" method="post" >
                       	<div class="row" style="width: 100%;">
                            <div class="col-md-5">
                            <label>Name</label>
                                <div class="form-group">
                                   <html:text style="color: black; border-color: #868e96; font-size: 20px;" 
                                   property="hoTen" styleClass="form-control" ></html:text>
                                </div>
                                <label>Email</label>
                                <div class="form-group">
                                	<html:text style="color: black; border-color: #868e96; font-size: 20px;"
                                	 property="email" styleClass="form-control"></html:text>
                                	<span style="color: red"><html:errors property="emailError"/></span> 
                                </div>
                                <label>Phone</label>
                                <div class="form-group">
                                    <html:text style="color: black; border-color: #868e96; font-size: 20px;"
                                     property="sdt" styleClass="form-control"></html:text>
                                   <span style="color: red">  <html:errors property="sdtError"/></span>
                                </div>
                            </div>
                            <div class="col-md-7" style="width: 100%;">
                            <label>Message</label>
                                <div class="form-group">
                                    <html:textarea style="color: black; border-color: #868e96; font-size: 20px;"
                                     property="message" styleClass="form-control" rows="7"></html:textarea>
                                </div>
                            </div>
                            
                            <div class="col-md-12 text-right">
                            
                                <html:submit style="margin-top: -5%;" styleClass="btn theme_btn button_hover" property="submit" value="Send Message"></html:submit>
                            </div>
                        </div>
                        </html:form>
                    </div>
                    
                </div>
            </div>
        </section>
        <!--================Contact Area =================--> 
   		
    <jsp:include page="footer.jsp"></jsp:include>
    <logic:notEmpty name="LienHeForm" property="thongBaoLienHe">
    	<logic:equal value="success" name="LienHeForm" property="thongBaoLienHe">
   			<script type="text/javascript">
   			$(document).ready(function(){
   				
   				$.alert({
					title : 'Success',
					type : 'green',
					content: 'Cảm ơn bạn đã liên hệ và đóng góp ý kiến với chúng tôi, chúng tôi sẽ gửi thông báo sớm nhất cho bạn',
					buttons:{
						OK: function () {
							location.href='trang-chu.do';
				        },
					}
				
				}); 
   			});
   			</script>
   			</logic:equal>
   			<logic:equal value="fail" name="LienHeForm" property="thongBaoLienHe">
   			<script type="text/javascript">
   			$(document).ready(function(){
   				
   				$.alert({
					title : 'Fail',
					type : 'red',
					content: 'Hiện tại hệ thống đang sảy ra lỗi , bạn hãy thử lại sau ',
					buttons:{
						OK: function () {
							location.href='trang-chu.do';
				        },
					}
				
				}); 
   			});
   			</script>
   			</logic:equal>
   		</logic:notEmpty>
</body>
</html>