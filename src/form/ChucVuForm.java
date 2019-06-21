package form;

import org.apache.struts.action.ActionForm;

public class ChucVuForm extends ActionForm{
	private String maChucVu;
	private String tenChucVu;
	private String checkMaChucVu;
	
	public String getMaChucVu() {
		return maChucVu;
	}
	public void setMaChucVu(String maChucVu) {
		this.maChucVu = maChucVu;
	}
	public String getTenChucVu() {
		return tenChucVu;
	}
	public void setTenChucVu(String tenChucVu) {
		this.tenChucVu = tenChucVu;
	}
	public String getCheckMaChucVu() {
		return checkMaChucVu;
	}
	public void setCheckMaChucVu(String checkMaChucVu) {
		this.checkMaChucVu = checkMaChucVu;
	}
	
}
