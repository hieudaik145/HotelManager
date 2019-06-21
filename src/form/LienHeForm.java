package form;

import org.apache.struts.action.ActionForm;

public class LienHeForm extends ActionForm{
	
	private String hoTen;
	private String email;
	private String sdt;
	private String message;
	private String submit;
	private String thongBaoLienHe;
	
	public String getThongBaoLienHe() {
		return thongBaoLienHe;
	}
	public void setThongBaoLienHe(String thongBaoLienHe) {
		this.thongBaoLienHe = thongBaoLienHe;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getSubmit() {
		return submit;
	}
	public void setSubmit(String submit) {
		this.submit = submit;
	}

	
}
