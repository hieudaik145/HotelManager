$(document).ready(function() {
	
	/*set min date = today input type date*/
	$(".datetoday").click(function(){
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
		/* end set min date = today input type date*/
	
	//gan ten khach san khi click chon drop down
	$(".tenks-p").click(function() {
		var tenks = $(this).text();
		var maks  = $(this).attr("data-maks");
		$("#tenks-dropdown-p").text(tenks);
		$("#tenks-dropdown-p").attr("data-maks",maks);
		$(".chonksthem").text(tenks);
		$(".chonksthem").attr("data-maks",maks);
	});
	//gan ten va ma loai phong cho dropdown loai phong
	$(".loaip").click(function() {
		var loaip  = $(this).text();
		var malp = $(this).attr("data-malp");
		$(".loaiphong").text(loaip);
		$(".loaiphong").attr("data-malp",malp);
	});
	
	
	
	$(".ttrang").click(function() {
		var ttrang = $(this).text();
		$("#tinhtrang").text(ttrang);
	});

	$(".cvu").click(function() {
		var cvu = $(this).text();
		$("#chucvu").text(cvu);
	});
	
	$(".cv").click(function() {
		var loaicv  = $(this).text();
		var macv = $(this).attr("data-macv");
		$(".chucvu").text(loaicv);
		$(".chucvu").attr("data-macv",macv);
	});


	//search
	$("#myInput").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$("#bookingdiv p").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});
	
	//search P
	$("#myInput-p").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$("#bookingdiv-p p").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	});
	/*xoa phong*/
	$(".btn-xoa-phong").click(function() {
		var self = $(this);
		var maPhong = $(this).closest("tr").find(".maphong").text();
		$.confirm({
			title : 'Bạn Có Chắc Muốn Xóa Phòng',
			content : 'Mã Phòng: "' + maPhong + '"',
			type : 'red',
			typeAnimated : true,
			buttons : {
				tryAgain : {
					text : 'Delete',
					btnClass : 'btn-red',
					action : function() {
						$.ajax({
							url : "delete-phong.do",
							type : "GET",
							data : {
								maPhong : maPhong
							},
							success : function(value) {
							/*	console.log(value);
								var ten = value.name;
								alert(ten);*/
								if(value == 1){
									$.alert({
										title : 'Xóa Thành Công!!',
										type : 'green',
										content: 'Ban Da Xoa Thanh Cong',
									});
									self.closest("tr").remove();
								}else{
									$.alert({
										title : 'Xóa Thất Bại!!',
										type : 'orange',
										content: value,
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
	})
	/*end xoa phong*/
	
	/*check trung email them phong*/
	$("#ma-phong").focusout(function(){
		var maPhong = $(this).val();
		if(maPhong == null || maPhong.length==0){
			$("#kqCheckMaPhong").text("Mã phòng không được để trống!!");
			$("#kqCheckMaPhong").css("color","red");
			$('#btn-them-phong').prop('disabled', true);
		}else{
		$.ajax({
			url:"them-moi-phong.do",
			type:"GET",
			data:{
				maPhong:maPhong,
				checkMaPhong:"true"
			},
			success:function(value){
				if(value == 1){
					$("#kqCheckMaPhong").text("Mã phòng này đã tồn tại!!");
					$("#kqCheckMaPhong").css("color","red");
					$('#btn-them-phong').prop('disabled', true);
				}else{
					$("#kqCheckMaPhong").text("Bạn có thể sử dụng mã phòng này");
					$("#kqCheckMaPhong").css("color","blue");
					$('#btn-them-phong').prop('disabled', false);
				}
			}
		})
		}
	})
	$("#btn-them-phong").click(function(){
		var maPhong = $("#ma-phong").val();
		var maKS = $("#tenks-dropdown-p").attr("data-maks");
		var maLP = $("#loaiphong").attr("data-malp");
		var soPhong = $("#so-phong").val();
		
		if(maKS == null || maKS.length==0||maLP ==null || maLP.length==0
		||maPhong == null || maPhong.length==0||soPhong == null || soPhong.length==0){
			$.alert({
				title : 'Cảnh Báo',
				type : 'orange',
				content: 'Bạn phải chọn đầy đủ tất cả các trường',
			});
		}else{
			$.ajax({
				url:"them-moi-phong.do",
				type:"GET",
				data:{
					maPhong:maPhong,
					maKS:maKS,
					maLoaiPhong:maLP,
					soPhong:soPhong
				},
				success:function(value){
					if(value == 1){
						$.alert({
							title : 'Thêm Mới Phòng Thành Công!!',
							type : 'green',
							buttons:{
								OK: function () {
									 location.href='danh-sach-phong.do?maKS='+maKS+'	'
						        },
							}
							/*content: value,*/
						});
						
					}else{
						$.alert({
							title : 'Thêm Mới Phòng Thất Bại!!',
							type : 'orange',
							/*content: value,*/
						});
					}
				}
			})
		}
		
	})
	/*end check trung email them phong*/
	$(".btn-chinh-sua-phong").click(function(){
		var maPhong = $(this).closest("tr").find(".maphong").text();
		var soPhong = $(this).closest("tr").find(".sophong").text();
		var tenLoaiPhong = $(this).closest("tr").find(".tenloaiphong").text();
		var maLoaiPhong = $(this).closest("tr").find(".tenloaiphong").attr("data-maloaiphong");
		var tenKS = $(this).closest("tr").find(".tenkhachsan").text();
		var maKS = $(this).closest("tr").find(".tenkhachsan").attr("data-maksphong");
		$("#ma-phong-sua").val(maPhong);
		$("#so-phong-sua").val(soPhong);
		$("#so-phong-sua").attr("data-sophongsua",soPhong);
		$("#loaiphong-sua").text(tenLoaiPhong);
		$("#loaiphong-sua").attr("data-malp",maLoaiPhong);
		$("#ten-khach-san-sua").val(tenKS);
		$("#ten-khach-san-sua").attr("data-maks-sua",maKS);
	});
	
	$("#btn-sua-phong").click(function(){
		var soPhongCu =$("#so-phong-sua").attr("data-sophongsua");
		var maPhong = $("#ma-phong-sua").val();
		var soPhong = $("#so-phong-sua").val();
		var tenLP = $("#loaiphong-sua").text();
		var maLoaiPhong = $("#loaiphong-sua").attr("data-malp");
		var maKS = $("#ten-khach-san-sua").attr("data-maks-sua");
		var tenKS =  $("#ten-khach-san-sua").val();
		if(soPhong==0||soPhong.length==null){
			$.alert({
				title : 'Cảnh Báo',
				type : 'orange',
				content: 'Bạn chưa nhập số phòng',
			});
		}else if(soPhong!=soPhongCu)
		{
			$.ajax({
				url:"chinh-sua-phong.do",
				type:"GET",
				data:{
					maKS:maKS,
					soPhong:soPhong,
					checkMaPhong:"true"
				},
				success:function(value){
					if(value == 2){
						$.alert({
							title : 'Warring',
							type : 'orange',
							content: 'Số phòng: <span style="color:red">'+soPhong+'</span> đã tồn tại trong khách sạn: '+tenKS+''
						});
					}else{
						$.ajax({
							url:"chinh-sua-phong.do",
							type:"GET",
							data:{
								maPhong:maPhong,
								maKS:maKS,
								maLoaiPhong:maLoaiPhong,
								soPhong:soPhong
							},
							success:function(value){
								if(value == 1){
									$.alert({
										title : 'Cập Nhật Thành Công!!',
										type : 'green',
									/*	buttons:{
											OK: function () {
												 location.href='danh-sach-phong.do?maKS='+maKS+'	'
												
									        },
										}
										content: value,*/
									});
									$(".modal").click();
									$("tr").each(function(){
										var map = $(this).find(".maphong").text();
										if(map==maPhong){
											$(this).find(".sophong").text(soPhong);
											$(this).find(".tenloaiphong").text(tenLP);
										}
									})
									
								}
							}
						})
					}
				}
			})
		}
		else{
		
			$.ajax({
				url:"chinh-sua-phong.do",
				type:"GET",
				data:{
					maPhong:maPhong,
					maKS:maKS,
					maLoaiPhong:maLoaiPhong,
					soPhong:soPhong
				},
				success:function(value){
					if(value == 1){
						$.alert({
							title : 'Cập Nhật Thành Công!!',
							type : 'green',
						/*	buttons:{
								OK: function () {
									 location.href='danh-sach-phong.do?maKS='+maKS+'	'
									
						        },
							}
							content: value,*/
						});
						$(".modal").click();
						$("tr").each(function(){
							var map = $(this).find(".maphong").text();
							if(map==maPhong){
								$(this).find(".sophong").text(soPhong);
								$(this).find(".tenloaiphong").text(tenLP);
							}
						})
					}else{
						$.alert({
							title : 'Warring',
							type : 'orange',
							content: 'Có lỗi sảy ra , chưa rõ!!',
						});
					}
				}
			})
		}
	
		
	})
	/*sua phong*/
	
	
	/*	delete Loai phong*/
	$(".delete-loaiphong").click(function(){
		var self = $(this);
		var maLoaiPhong = $(this).closest("tr").find(".maloaiphong").text();
		var tenLoaiPhong = $(this).closest("tr").find(".tenloaiphong").text();
		$.confirm({
			title : 'Bạn Có Chắc Muốn Xóa Loại Phòng',
			content : 'Mã Loại Phòng: "' + maLoaiPhong + '"',
			type : 'red',
			typeAnimated : true,
			buttons : {
				tryAgain : {
					text : 'Delete',
					btnClass : 'btn-red',
					action : function() {
						$.ajax({
							url : "delete-loaiphong.do",
							type : "GET",
							data : {
								maLoaiPhong : maLoaiPhong
							},
							success : function(value) {
								if(value == 1){
									$.alert({
										title : 'Xóa Thành Công!!',
										type : 'green',
										/*content: value,*/
									});
									self.closest("tr").remove();
								}else{
									$.alert({
										title : 'Xóa Thất Bại!!',
										type : 'orange',
										content: 'Loại Phòng: <span  style="color: red;">'+tenLoaiPhong+'</span> đang được sử dụng trong bảng Phòng, không thể xóa!!! ',
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
	})
	/*end delete Loai Phong*/
	
	/*chinh sua loai phong*/
	$(".btn-sua-loai-phong").click(function(){
		var maLoaiPhong = $(this).closest("tr").find(".maloaiphong").text();
		var tenLoaiPhong = $(this).closest("tr").find(".tenloaiphong").text();
		var giaTien = $(this).closest("tr").find(".giatienlp").text();
		var image =$(this).closest("tr").find(".imagelp").attr("data-imagelp");
		var moTa = $(this).closest("tr").find(".motalp").text();
		var tomTat =$(this).closest("tr").find(".tomtatlp").text();
		$("#ma-loai-phong-sua").val(maLoaiPhong);
		$("#ten-loai-phong-sua").val(tenLoaiPhong);
		$("#gia-tien-loai-phong-sua").val(giaTien);
		$("#tom-tat-sua").val(tomTat);
		$("#mo-ta-sua").val(moTa);
		$('#image-loaiphong').text(image);
	});
	$("#btn-sua-loai-phong").click(function(){
		var maLoaiPhong =$("#ma-loai-phong-sua").val();
		var tenLoaiPhong = $("#ten-loai-phong-sua").val();
		var giaTien = $("#gia-tien-loai-phong-sua").val();
		var moTa = $("#mo-ta-sua").val();
		var tomTat = $("#tom-tat-sua").val();
		var image = $('#image-loaiphong').text();
		if(maLoaiPhong==0||maLoaiPhong.length==null||
				tenLoaiPhong==0||tenLoaiPhong.length==null||
				giaTien==0||giaTien.length==null||
				moTa==0||moTa.length==null||
				tomTat==0||tomTat.length==null||
				image==0||image.length==null){
			$.alert({
				title : 'Cảnh Báo',
				type : 'orange',
				content: 'Bạn phải nhập đầy đủ thông tin',
			});
		}else{
			$.ajax({
				url:"chinhsua-loaiphong.do",
				type:"GET",
				data:{
					maLoaiPhong:maLoaiPhong,
					tenLoaiPhong:tenLoaiPhong,
					giaTien:giaTien,
					moTa:moTa,
					tomTat:tomTat,
					image:image
				},
				success:function(value){
					if(value == 1){
						$.alert({
							title : 'Cập Nhật Thành Công',
							type : 'green',
							/*content: value,*/
						});
						$(".modal").click();
						$("tr").each(function(){
							var manv  = $(this).find(".tennv").text();
							
						/*	if(manv==maLoaiPhong){
								$(this).find(".imagelp").attr("data-imagelp",image);
								$(this).find(".imagelp").find("img").attr("src","resources/images/loai-phong/"+image+"");
								$(this).find(".tenloaiphong").text(tenLoaiPhong);
								$(this).find(".giatienlp").text(giaTien);
								$(this).find(".motalp").find("span").text(moTa);
								$(this).find(".tomtatlp").text(tomTat);
							}*/
						})
						
						
					}else{
						$.alert({
							title : 'Warring',
							type : 'orange',
							content: 'Số phòng đã tồn tại ,nhập số phòng khác',
						});
					}
				}
			})
		}
	
		
	});
	/*end chinh sua loai phong*/
	
	/*them moi loai phong*/
	$("#ma-loai-phong").focusout(function(){
		var maLoaiPhong = $("#ma-loai-phong").val();
		if(maLoaiPhong == null || maLoaiPhong.length==0){
			$("#checkMaLoaiPhong").text("Mã loại không được để trống!!");
			$("#checkMaLoaiPhong").css("color","red");
			$('#btn-them-loai-phong').prop('disabled', true);
		}else{
		$.ajax({
			url:"themmoi-loaiphong.do",
			type:"GET",
			data:{
				maLoaiPhong:maLoaiPhong,
				checkMaLoaiPhong:"true"
			},
			success:function(value){
				if(value == 1){
					$("#checkMaLoaiPhong").text("Mã loại phòng này đã tồn tại!!");
					$("#checkMaLoaiPhong").css("color","red");
					$('#btn-them-loai-phong').prop('disabled', true);
				}else{
					$("#checkMaLoaiPhong").text("Bạn có thể sử dụng mã loại phòng này");
					$("#checkMaLoaiPhong").css("color","blue");
					$('#btn-them-loai-phong').prop('disabled', false);
				}
			}
		})
		}
	})
	$("#btn-them-loai-phong").click(function(){
		var maLoaiPhong = $("#ma-loai-phong").val();
		var tenLoaiPhong = $("#ten-loai-phong").val();
		var giaTien = $("#gia-tien-loai-phong").val();
		var image = $("#image-loaiphong-them").text();
		var tomtat=$("#tom-tat").val();
		var mota=$("#mo-ta").val();
		/*var choosess = "Choose file";*/
		
		var regexGiaTien = /^(\b[1-9])([0-9]{0,9})+$/g;
		if(maLoaiPhong.length==0||maLoaiPhong==null||
				tenLoaiPhong.length==0||tenLoaiPhong==null||
				giaTien.length==0||giaTien==null||
				image=="Choose file"||image==null||
				tomtat.length==0||tomtat==null||
				mota.length==0||mota==null){
			$.alert({
				title : 'Warring',
				type : 'orange',
				content: 'Bạn phải nhập đầy đủ các trường!!!',
			});
		}else if(!regexGiaTien.test(giaTien)){
			$.alert({
				title : 'Warring',
				type : 'orange',
				content: 'Giá Tiền Nhập Vào Không Hợp Lệ!!!',
			});
		}else {
			$.ajax({
				url : "themmoi-loaiphong.do",
				type : "GET",
				data : {
					maLoaiPhong : maLoaiPhong,
					tenLoaiPhong: tenLoaiPhong,
					giaTien:giaTien,
					image:image,
					moTa:mota,
					tomTat:tomtat
				},
				success : function(value) {
					if(value == 1){
						$.alert({
							title : 'Success',
							type : 'green',
							content: 'Thêm mới loại phòng thành công',
							buttons:{
								OK: function () {
									location.href='danh-sach-loai-phong.do';
						        },
							}
						
						});
						
					}else{
						$.alert({
							title : 'Fail!!',
							type : 'orange',
							content: 'Thêm mới loại phòng thất bại, đã có lỗi gì đó sảy ra !! ',
						});
					}
					
				}
			})
		}
		
		
		
	});
	
	/*end them moi loai phong*/
	
	
	
	
	
	/*su ly su kien khach hang check in*/
	$("#btn-checkin").click(function(){
		var bookingID = $("#tenkh").attr("data-bookingid");
		var tenkh = $("#tenkh").val();
		var sdt = $("#sdt").val();
		var email = $("#email").val();
		$.confirm({
			title : 'Có Phải Bạn Muốn CheckIn',
			content : 'Tên Khách Hàng:' + tenkh + ' <br/>Số Điện Thoại: '+sdt+'<br/>Email: '+email+'',
			type : 'blue',
			typeAnimated : true,
			buttons : {
				tryAgain : {
					text : 'Xác Nhận',
					btnClass : 'btn-red',
					action : function() {
						$.ajax({
							url : "update-checkin.do",
							type : "GET",
							data : {
								bookingID : bookingID
							},
							success : function(value) {
								if(value == 1){
									$.alert({
										title : 'Đã Check In Thành Công.',
										type : 'green',
										/*content: value,*/
									});
									self.closest("tr").remove();
								}else{
									$.alert({
										title : 'Check In Thất Bại!!',
										type : 'orange',
										/*content: value,*/
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
		
	})
	/*end su ly su kien khach hang check in*/
	$(".xoa-booking").click(function(){
		var self = $(this);
		var bookingID = $(this).closest("tr").find("#bookingid").text();
		var tenKH = $(this).closest("tr").find("#tenkh").text();
		$.confirm({
			title : 'Warring',
			content : 'Bạn có chắc chắn muốn xóa khách hàng: <span style="color:red;">'+tenKH+'</span> ra khỏi danh sách booking và khổng thể khôi phục lại' ,
			type : 'blue',
			typeAnimated : true,
			buttons : {
				tryAgain : {
					text : 'Xác Nhận',
					btnClass : 'btn-red',
					action : function() {
						$.ajax({
							url : "xoa-booking.do",
							type : "GET",
							data : {
								bookingID : bookingID
							},
							success : function(value) {
								if(value == 1){
									$.alert({
										title : 'Xóa Booking Thành Công',
										type : 'green',
										/*content: value,*/
									});
									self.closest("tr").remove();
								}else{
									$.alert({
										title : 'Xóa Booking Thất Bại!!',
										type : 'orange',
										/*content: value,*/
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
	});
	/*check out */
	$("#btn-checkout").click(function(){
		var bookingID = $("#tenkh").attr("data-bookingid");
		var tenkh = $("#tenkh").val();
		var sdt = $("#sdt").val();
		var email = $("#email").val();
		$.confirm({
			title : 'Warring',
			content : 'Check Out Khách Hàng: <span style="color:red;">'+tenkh+'</span>' ,
			type : 'blue',
			typeAnimated : true,
			buttons : {
				tryAgain : {
					text : 'Xác Nhận',
					btnClass : 'btn-red',
					action : function() {
						$.ajax({
							url : "check-out.do",
							type : "POST",
							data : {
								bookingID : bookingID
							},
							success : function(value) {
								if(value == 1){
									$.alert({
										title : 'Check Out Thành Công',
										type : 'green',
										/*content: value,*/
									});
									self.closest("tr").remove();
								}else{
									$.alert({
										title : 'Có Lỗi Sảy Ra , Chưa rõ, Liên hệ IT Sau',
										type : 'orange',
										/*content: value,*/
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
	})
/*	end*/
	/*xoa booking*/
	$(".search-date").click(function(){
		event.preventDefault();
		var maks = $(".maks").val();
		var ngaydenchon = $(".ngayDenChon").val();
		var ngaydichon = $(".ngayDiChon").val();
		if(ngaydenchon==null|| ngaydenchon.length==0||ngaydichon==null||ngaydichon.length==0){
			$.alert({
				title : 'Chưa Chọn Khoảng Thời Gian',
				type : 'red',
				content: 'bạn phải chọn đủ hai khoảng thời gian',
			});
		}else{
			if(maks==null){
				location.href='danh-sach-doanh-thu.do?ngayDenChon='+ngaydenchon+'&ngayDiChon='+ngaydichon+'';
			}else{
				location.href='danh-sach-doanh-thu.do?maKS='+maks+'&ngayDenChon='+ngaydenchon+'&ngayChonDi='+ngaydichon+'';
			}
		}
		
	})
	
	$(".xuat-file").click(function(){
		var ngayDen = $(".ngayDenChon").val();
		var ngayDi = $(".ngayDiChon").val();
		var tenKS = $("#tenks-dropdown").text();
		var listDoanhThu = $(".listdt").attr("data-danhthu");
		$.confirm({
			title : 'Thông Báo',
			content : 'Bạn có muốn xuất doanh  thu từ ngày '+ngayDen+' đến ngày đi'+ngayDi+' của khách sạn <span style="color:red;">'+tenKS+'</span>' ,
			type : 'blue',
			typeAnimated : true,
			buttons : {
				tryAgain : {
					text : 'Xác Nhận',
					btnClass : 'btn-red',
					action : function() {
						$.ajax({
							url : "xuat-file.do",
							type : "GET",
							data : {
								listDoanhThu : listDoanhThu
							},
							success : function(value) {
								if(value == 1){
									$.alert({
										title : 'Check Out Thành Công',
										type : 'green',
										/*content: value,*/
									});
									self.closest("tr").remove();
								}else{
									$.alert({
										title : 'Có Lỗi Sảy Ra , Chưa rõ, Liên hệ IT Sau',
										type : 'orange',
										/*content: value,*/
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
	})
	/*end xoa booking*/
		/*Them Nhan Vien*/
	/*$("#bnt-them-nhanvien").click(function(){
		var maNhanVien = $("#ma-nhanvien").val();
		var maKS = $("#tenks-dropdown-p").attr("data-maks");
		var maChucVu = $("#chucvu").attr("data-macv");
		var tenNhanVien = $("#ten-nhanvien").val();
		var gioiTinh = $(".gioi-tinh").val();
		var ngaySinh = $("#ngay-sinh").val();
		var soDienThoai = $("#so-dien-thoai").val();
		var email = $("#email").val();
		var diaChi = $("#dia-chi").val();
		
		if(maNhanVien == null || maNhanVien.lenght == 0 || maKS == null || maKS.length == 0 ||
				maChucVu == null || maChucVu.lenght == 0 || tenNhanVien == null || tenNhanVien.lenght == 0||
				gioiTinh == null || gioiTinh.lenght == 0 || ngaySinh == null || ngaySinh.lenght == 0 ||
				soDienThoai == null || soDienThoai.lenght == 0 || email == null || email.lenght == 0 || 
				diaChi == null || diaChi.lenght == 0){
			$.alert({
				title : 'Cảnh Báo',
				type : 'orange',
				content: 'Bạn phải chọn đầy đủ tất cả các trường',
			});
		}else{
			$.ajax({
				url:"them-nhanvien.do",
				type:"GET",
				data:{
					maNhanVien : maNhanVien,
					maKS : maKS,
					maChucVu : maChucVu,
					tenNhanVien : tenNhanVien,
					gioiTinh : gioiTinh,
					ngaySinh : ngaySinh,
					soDienThoai : soDienThoai,
					email : email,
					diaChi : diaChi
				},
				success:function(value){
					if(value == 1){
						$.alert({
							title : 'Thêm Mới Phòng Thành Công!!',
							type : 'green',
							buttons:{
								OK: function () {
									 location.href='danh-sach-nhanvien.do?maKS='+maKS+'	'
						        },
							}
							content: value,
						});
						
					}else{
						$.alert({
							title : 'Thêm Mới Phòng Thất Bại!!',
							type : 'orange',
							content: value,
						});
					}
				}
			})
		}
		
	})*/
	/*End Them Nhan Vien*/
	
	/*Xoa Nhan Vien*/
	$(".btn-xoa-nhanvien").click(function() {
		var self = $(this);
		var maNhanVien = $(this).closest("tr").find(".manhanvien").text().trim();
		$.confirm({
			title : 'Bạn Có Chắc Muốn Xóa Nhân Viên',
			content : 'Mã Nhân Viên: "' + maNhanVien + '"',
			type : 'red',
			typeAnimated : true,
			buttons : {
				tryAgain : {
					text : 'Delete',
					btnClass : 'btn-red',
					action : function() {
						$.ajax({
							url : "xoa-nhanvien.do",
							type : "POST",
							data : {
								maNhanVien : maNhanVien
							},
							success : function(value) {
								if(value == 1){
									$.alert({
										title : 'Xóa Thành Công!!',
										type : 'green',
										content: 'Bạn đã xóa thành công',
									});
									self.closest("tr").remove();
								}else{
									$.alert({
										title : 'Xóa Thất Bại!!',
										type : 'orange',
										content: 'Xóa không thành công',
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
	})
	
	$(".click").click(function(){
		var maks = $(this).attr("data-maks");
		$("#maks").val(maks);
	})
	
	$(".clickcv").click(function(){
		var macv = $(this).attr("data-macv");
		$(".maChucVu").val(macv);
	})
	/*End Xoa Nhan Vien*/
	
	//Them Chuc Vu
	$("#ma-chucvu-them").focusout(function(){
		var maChucVu = $("#ma-chucvu-them").val();
		if(maChucVu == null || maChucVu.length==0){
			$("#checkMaChucVu").text("Mã chức vụ không được để trống!!");
			$("#checkMaChucVu").css("color","red");
			$('#btn-them-chucvu').prop('disabled', true);
		}else{
		$.ajax({
			url:"them-chucvu.do",
			type:"GET",
			data:{
				maChucVu : maChucVu,
				checkMaChucVu : "true"
			},
			success:function(value){
				if(value == 1){
					$("#checkMaChucVu").text("Mã chức vụ này đã tồn tại!!");
					$("#checkMaChucVu").css("color","red");
					$('#btn-them-chucvu').prop('disabled', true);
				}else{
					$("#checkMaChucVu").text("Bạn có thể sử dụng mã chức vụ này");
					$("#checkMaChucVu").css("color","blue");
					$('#btn-them-chucvu').prop('disabled', false);
				}
			}
		})
		}
	})
	$("#btn-them-chucvu").click(function(){
		var maChucVu = $(".ma-chucvu-them").val();
		var tenChucVu = $("#ten-chucvu-them").val();

		/*var choosess = "Choose file";*/
		
		if( maChucVu==null ||maChucVu.length==0 || tenChucVu==null|| tenChucVu.length ==0  ){
			$.alert({
				title : 'Warring',
				type : 'orange',
				content: 'Bạn phải nhập đầy đủ các trường!!!',
			});
			
		}else {
			$.ajax({
				url : "them-chucvu.do",
				type : "GET",
				data : {
					maChucVu : maChucVu,
					tenChucVu : tenChucVu
				},
				success : function(value) {
					if(value == 1){
						$.alert({
							title : 'Success',
							type : 'green',
							content: 'Thêm mới chức vụ thành công',
							buttons:{
								OK: function () {
									location.href='danh-sach-chucvu.do';
						        },
							}
						});
						
					}else{
						$.alert({
							title : 'Fail!!',
							type : 'orange',
							content: 'Thêm mới chức vụ thất bại, đã có lỗi gì đó sảy ra !! ',
						});
					}
					
				}
			})
		}
		
		
		
	});
	
	//Sua Chuc Vu
	$(".btn-sua-chucvu").click(function(){
		var maChucVu = $(this).closest("tr").find(".machucvu").text().trim();
		var tenChucVu = $(this).closest("tr").find(".tenchucvu").text().trim();
		$("#ma-chucvu-sua").val(maChucVu);
		$("#ten-chucvu-sua").val(tenChucVu);
	
	});
	$("#btn-sua-chucvu").click(function(){
		var maChucVu = $("#ma-chucvu-sua").val();
		var tenChucVu = 	$("#ten-chucvu-sua").val();
		$.ajax({
			url : "sua-chucvu.do",
			type : "POST",
			data : {
				maChucVu : maChucVu,
				tenChucVu : tenChucVu
			},
			success : function(value) {
				if(value == 1){
					$.alert({
						title : 'Sua Thành Công!!',
						type : 'green',
						/*content: value,*/
					});
					$(".modal").click();
					$("tr").each(function(){
						var map = $(this).find(".machucvu").text().trim();
						if(map==maChucVu){
							$(this).find(".tenchucvu").text(tenChucVu);
						}
					})
				}else{
					$.alert({
						title : 'Sửa Thất Bại!!',
						type : 'orange',
						content: 'Có Lỗi Sảy Ra !!! ',
					});
				}
				
			}
		})
	})
	
	//Xoa Chuc Vu
	$(".btn-xoa-chucvu").click(function(){
		var self = $(this);
		var maChucVu = $(this).closest("tr").find(".machucvu").text().trim();
		var tenChucVu = $(this).closest("tr").find(".tenchucvu").text().trim();
		$.confirm({
			title : 'Bạn Có Chắc Muốn Xóa',
			content : 'Mã chức vụ: "' + maChucVu + '"',
			type : 'red',
			typeAnimated : true,
			buttons : {
				tryAgain : {
					text : 'Delete',
					btnClass : 'btn-red',
					action : function() {
						$.ajax({
							url : "xoa-chucvu.do",
							type : "POST",
							data : {
								maChucVu : maChucVu
							},
							success : function(value) {
								if(value == 1){
									$.alert({
										title : 'Xóa Thành Công!!',
										type : 'green',
										/*content: value,*/
									});
									self.closest("tr").remove();
								}else{
									$.alert({
										title : 'Xóa Thất Bại!!',
										type : 'orange',
										content: 'Chức vụ: <span  style="color: red;">' + tenChucVu + '</span> đang được sử dụng trong bảng Nhân Viên, không thể xóa!!! ',
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
	})
	//sau nhan vien
	
	$(".suanv").click(function(){
		var manv = $(this).closest("tr").find(".manhanvien").text().trim();
		$.ajax({
			url : "sua-nhanvien.do",
			type : "POST",
			data : {
				maNhanVien : manv,
				layNhanVien: "laynv"
			},
			success : function(value) {
				if(value!=null){
					var json = JSON.parse(value);
					var manv = json["manv"];
					var tennv = json["tennv"];
					var gioitinh  = json["gioitinh"];
					var ngaysinh = json["ngaysinh"];
					var sodt = json["sodt"];
					var email = json["email"];
					var diachi = json["diachi"];
					var tenks = json["tenks"];
					var maks = json["maks"];
					var tencv = json["tencv"];
					var macv = json["macv"];
					$("#manvsua").val(manv);
					$(".chonksthem").attr("data-maks",maks);
					$(".chonksthem").text(tenks);
					$(".chucvu").attr("data-macv",macv);
					$(".chucvu").text(tencv);
					$("#tennvsua").val(tennv);
					$(".birthday").attr("value",ngaysinh);
					$(".sodtsua").val(sodt);
					$(".emailsua").val(email);
					$(".diachisua").val(diachi);
				}
			}
		})
	})
	$("#btn-sua-nhanvien").click(function(){
		
		event.preventDefault();
		var tenks =$(".chonksthem").text();
		var tencv = $("#chucvu").text();
		var manv = $("#manvsua").val();
		var tennv = $("#tennvsua").val();
		var ngaysinh = $(".birthday").val();
		var sodt = $(".sodtsua").val();
		var email = $(".emailsua").val();
		var diachi = $(".diachisua").val();
		var maks = $(".chonksthem").attr("data-maks");
		var macv = $(".chucvu").attr("data-macv");
		var gioiTinh='';
		 var radioValue = $("input[name='gioiTinh']:checked").val();
          if(radioValue){
        	  gioiTinh="Nam";
          }else{
        	  gioiTinh="Nu";
          }
          
          $.ajax({
  			url : "sua-nhanvien.do",
  			type : "POST",
  			data : {
  				maNhanVien : manv,
  				maKS:maks,
  				maChucVu:macv,
  				tenNhanVien:tennv,
  				gioiTinh:gioiTinh,
  				ngaySinh:ngaysinh,
  				soDienThoai:sodt,
  				email:email,
  				diaChi:diachi
  			},
  			success : function(value) {
  				if(value==1){
  					$.alert({
						title : 'Sửa Nhân Viên Thành Công!!',
						type : 'green',
						/*content: value,*/
					});
  					$(".modal").click();
					$(".trtest").each(function(){
						var manhanvien = $(this).find(".manhanvien").text().trim();
						if(manhanvien==manv){
							$(this).find(".ksten").text(tenks);
							$(this).find(".tennv").text(tennv);
							$(this).find(".gioitinh").text(gioiTinh);
							$(this).find(".tencv").text(tencv);
							$(this).find(".sdt").text(sodt);
							$(this).find(".email").text(email);
						}
					})
  				}else{
  					$.alert({
						title : 'Sửa  Thất Bại!!',
						type : 'orange',
						content: 'Có sự cố sảy ra!!! ',
					});
  				}
  			}
  		})
	})
});