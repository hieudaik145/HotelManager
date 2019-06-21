package form;

import org.apache.struts.action.ActionForm;

public class LoaiPhongForm extends ActionForm {
	
	private String maLoaiPhong;
	private String tenLoaiPhong;
	private int giaTien;
	private String image;
	private String moTa;
	private String tomTat;
	private String checkMaLoaiPhong;
	
	public String getCheckMaLoaiPhong() {
		return checkMaLoaiPhong;
	}
	public void setCheckMaLoaiPhong(String checkMaLoaiPhong) {
		this.checkMaLoaiPhong = checkMaLoaiPhong;
	}
	public String getMaLoaiPhong() {
		return maLoaiPhong;
	}
	public void setMaLoaiPhong(String maLoaiPhong) {
		this.maLoaiPhong = maLoaiPhong;
	}
	public String getTenLoaiPhong() {
		return tenLoaiPhong;
	}
	public void setTenLoaiPhong(String tenLoaiPhong) {
		this.tenLoaiPhong = tenLoaiPhong;
	}
	public int getGiaTien() {
		return giaTien;
	}
	public void setGiaTien(int giaTien) {
		this.giaTien = giaTien;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public String getTomTat() {
		return tomTat;
	}
	public void setTomTat(String tomTat) {
		this.tomTat = tomTat;
	}

	

}
