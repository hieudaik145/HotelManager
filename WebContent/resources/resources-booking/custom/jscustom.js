$(document).ready(function(){
	
	//gan ten khach san khi click chon drop down
	$(".tentp").click(function(){
		var tenks = $(this).text();
		var maks = $(this).attr("data-maks");
		$("#ttpho-dropdown").text(tenks);
		$("#ttpho-dropdown").attr("data-khachsan",maks);
	});
		
	
	$(".soluongphong").change(function(){
		var soluong = $(this).val();
		var soDem = $(".sodem").text();
		var giaTien = $(this).closest("tr").find(".giaMoiDem").text();
		var tien = soluong*giaTien*soDem
		 $(this).closest("tr").find(".tongTien").text(tien);
	})
	
	
	
 		//search
 		  $("#myinput").on("keyup", function() {
 		    var value = $(this).val().toLowerCase();
 		    $("#bookingdiv p").filter(function() {
 		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
 		    });
 		  });
	// là cc gì chưa biết
 		 
 		 
 		function someFunction21() {
 			setTimeout(function () {
 			$('#horizontal-stepper').nextStep();
 			}, 2000);
 			}
 		
 		$(".datengayden").click(function(){
 			var today = new Date();
 			var dd = today.getDate();
 			var mm = today.getMonth()+1; //January is 0!
 			var yyyy = today.getFullYear();
 			 if(dd<10){
 			        dd='0'+dd
 			    } 
 			    if(mm<10){
 			        mm='0'+mm
 			    } 
 			today = yyyy+'-'+mm+'-'+dd;
 			$(this).attr("min", today);
 		})
 		$(".datengaydi").click(function(){
 			var today =$(".datengayden").val();
 			var splitted = today.split("-");
 			var yyyy = splitted[0];
 			var mm = splitted[1];
 			var dd = splitted[2];
 			today = yyyy+'-'+mm+'-'+dd;
 			$(this).attr("min", today);
 		})
 	
 		
 	/*	xử lý sự kiện booking */
 	/*	step1*/
 		$("#nextstep1").click(function(){
 			var maKS = $("#ttpho-dropdown").attr("data-khachsan");
 			var ngayDen = $(".datengayden").val();
 			var ngayDi = $(".datengaydi").val();
 			if(maKS==null || maKS.length==0){
 				$.alert({
 					title : 'Cảnh Báo',
 					type : 'red',
 					content: 'Chưa Chọn Khách Sạn',
 				});
 			}else if(ngayDen == null||ngayDen.length==0 || ngayDi==null||ngayDi.length==0){
 				$.alert({
 					title : 'Cảnh Báo',
 					type : 'red',
 					content: 'Chưa Chọn Ngày Đến or Ngày Đi',
 				});
 			}else{
 				location.href='booking-step2.do?maKS='+maKS+'&ngayDen='+ngayDen+'&ngayDi='+ngayDi+'';
 				
 			}
 		})
 		$("#btn-pre-step2").click(function(){
 			event.preventDefault();
 			location.href='booking-step1.do';
 		})
 		
 		$("#nextstep2").click(function(){
 			event.preventDefault();
 			var dem=0;
 			var chuoi='';
 			$('#tabledatphong > tbody > tr' ).each(function(){
 				soluong = $(this).find("td").find(".soluongphong").val();
 				if(soluong>0){
 					malp =  $(this).find("td").find(".soluongphong").attr("data-malp");
 					chuoi +=''+soluong+'-'+malp+'-';
 				dem++;
 				}
 			});
 			
 			if(dem==0){
 				$.alert({
 					title : 'Cảnh Báo',
 					type : 'red',
 					content: 'Chưa Chọn Phòng',
 				});
 			}else{
 				location.href='booking-step3.do?chuoi='+chuoi+'';
 			}
 		})
 		
 		$("#form-step3").submit(function(){
 			var hoTen = $("#hoTenKH").val();
 			var soDt =  $("#sodientoai").val();
 			var email = $("#email").val();
 			var emailReg = /^([a-zA-Z0-9_\.])+\@([a-zA-Z0-9\-])+\.([a-zA-Z]{2,4})(\.[a-zA-Z]{2,4})?$/;
 			
 			if(hoTen==null || hoTen.length==0 || soDt==null || soDt.length==0||email==null ||email.length==null){
 				$.alert({
 					title : 'Cảnh Báo',
 					type : 'red',
 					content: 'Phải Nhập Đủ 3 Thông Tin',
 				});
 				return false;
 			}
 				if(!emailReg.test(email)){
 					$.alert({
 	 					title : 'Cảnh Báo',
 	 					type : 'red',
 	 					content: 'Địa chỉ Email Không Hợp Lệ',
 	 				});
 					return false;
 				}
 				return true;
 		
 			
 		})
 		
 		$("#btn-xacnhan").click(function(){
 			
 			var radioValue = $("input[name='pay']:checked").val();
 			var tongTien = $(".tongtien").text();
            if(radioValue==null){
            	$.alert({
 					title : 'Cảnh Báo',
 					type : 'red',
 					content: 'Bạn Chưa Chọn Phương Thức Thanh Toán',
 					
 				});
            }else{
            	
            		$.confirm({
            			title : 'Bạn Có Chắc Muốn Thanh Toán',
            			content : 'Tổng Tiền "' + tongTien + '"</br>Phương Thức Thanh Toán '+radioValue+'',
            			type : 'red',
            			typeAnimated : true,
            			buttons : {
            				tryAgain : {
            					text : 'Đặt Phòng',
            					btnClass : 'btn-red',
            					action : function() {
            						$.ajax({
            							url : "booking-step4.do",
            							type : "POST",
            							data : {
            								command : radioValue
            							},
            							success : function(value) {
            								if(value == 2){
            									$.alert({
            										title : 'Thêm Thất Bại!!',
            										type : 'red',
            										content: 'Có Lỗi Sảy Ra Không Thể Booking Được',
            									});
            									
            								}else{
            									$.alert({
            										title : 'Success',
            										type : 'green',
            										content: 'Thêm mới loại phòng thành công',
            										buttons:{
            											OK: function () {
            												location.href='trang-chu.do';
            									        },
            										}
            									
            									});
            									
            								}
            							}
            						})
            					}
            				},
            				close : function() {
            				}
            			}	
            		});
            	}
 		})
 		
 		$("#btn-huybo").click(function(){
 			$.confirm({
            			title : 'Bạn Có Chắc Muốn Hủy Bỏ',
            			content : '<3',
            			type : 'red',
            			typeAnimated : true,
            			buttons : {
            				tryAgain : {
            					text : 'Hủy Bỏ',
            					btnClass : 'btn-red',
            					action : function() {
            						$.ajax({
            							url : "booking-step4.do",
            							type : "POST",
            							data : {
            								command : 'huy'
            							},
            							success : function(value) {
            								$.alert({
        										title : 'Success',
        										type : 'green',
        										content: 'Hủy Bỏ Thành Công',
        										buttons:{
        											OK: function () {
        												location.href='trang-chu.do';
        									        },
        										}
        									
        									});
            							}
            						})
            					}
            				},
            				close : function() {
            				}
            			}	
            		});
          
 		})
 		
 /*		end xử lý sự kiện booking*/
 		
 		
 		/*xu ly load chi tiet loai phog*/
 		
 		$(".xemthem").click(function(){
 			var maLoaiPhong = $(this).attr("data-malp");
 			$.ajax({
				url : "chi-tiet-loai-phong.do",
				type : "POST",
				data : {
					maLoaiPhong : maLoaiPhong
				},
				success : function(value) {
					if(value!=null){
						var json = JSON.parse(value);
						var tenLoaiPhong = json["tenloaiphhong"];
						var giaTien = json["giatien"];
						var image  = json["image"];
						var mota = json["mota"];
						var tomtat = json["tomtat"];
						$(".tenLP").text(tenLoaiPhong);
						$(".giaTien").text(giaTien+'VND');
						$(".imageLoaiPhong").attr("src",'resources/imag	es/loai-phong/'+image+'')
						$(".tomTat").text(tomtat);
						$(".moTa").text(mota)
						
					}
					
				}
			})
 		})
 		/*end*/
 		
 		$(".linkstep1").click(function(){
 			var maks = $("#ttpho-dropdown").attr("data-khachsan");
 		var ngayDen = $(".datengayden").val();
		var ngayDi = $(".datengaydi").val();
			if(maks==null || maks.length==0){
				$.alert({
					title : 'Cảnh Báo',
					type : 'red',
					content: 'Chưa Chọn Khách Sạn',
				});
			}else{
				location.href='booking-step2.do?maKS='+maks+'&ngayDen='+ngayDen+'&ngayDi='+ngayDi+'';
			}
 		})
});

