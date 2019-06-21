package form;

import org.apache.struts.action.ActionForm;

public class PhongForm extends ActionForm {

	private String maPhong;
	private String maKS;
	private String maLoaiPhong;
	private String checkMaPhong;
	private String soPhong;
	
	public String getSoPhong() {
		return soPhong;
	}
	public void setSoPhong(String soPhong) {
		this.soPhong = soPhong;
	}
	public String getCheckMaPhong() {
		return checkMaPhong;
	}
	public void setCheckMaPhong(String checkMaPhong) {
		this.checkMaPhong = checkMaPhong;
	}
	public String getMaPhong() {
		return maPhong;
	}
	public void setMaPhong(String maPhong) {
		this.maPhong = maPhong;
	}
	public String getMaKS() {
		return maKS;
	}
	public void setMaKS(String maKS) {
		this.maKS = maKS;
	}
	public String getMaLoaiPhong() {
		return maLoaiPhong;
	}
	public void setMaLoaiPhong(String maLoaiPhong) {
		this.maLoaiPhong = maLoaiPhong;
	}
	
	
}
