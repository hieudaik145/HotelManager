package form;

import org.apache.struts.action.ActionForm;

public class DoanhThuForm extends ActionForm {
	private String maDoanhThu;
	private String bookingID;
	private String  tenKh;
	private String ngayDen;
	private String ngayDi;
	private String soDienThoai;
	private String email;
	private String tongTien;
	
	public String getMaDoanhThu() {
		return maDoanhThu;
	}
	public void setMaDoanhThu(String maDoanhThu) {
		this.maDoanhThu = maDoanhThu;
	}
	public String getBookingID() {
		return bookingID;
	}
	public void setBookingID(String bookingID) {
		this.bookingID = bookingID;
	}
	public String getTenKh() {
		return tenKh;
	}
	public void setTenKh(String tenKh) {
		this.tenKh = tenKh;
	}
	public String getNgayDen() {
		return ngayDen;
	}
	public void setNgayDen(String ngayDen) {
		this.ngayDen = ngayDen;
	}
	public String getNgayDi() {
		return ngayDi;
	}
	public void setNgayDi(String ngayDi) {
		this.ngayDi = ngayDi;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTongTien() {
		return tongTien;
	}
	public void setTongTien(String tongTien) {
		this.tongTien = tongTien;
	}
	
	

}
