package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.LienHe;

public class DanhSachLienHeForm extends ActionForm{
	private String maLienHe;
	private String hoTen;
	private String email;
	private String soDienThoai;
	private String message;
	private String tinhTrang;
	private ArrayList<LienHe> listLienHe;
	
	public ArrayList<LienHe> getListLienHe() {
		return listLienHe;
	}
	public void setListLienHe(ArrayList<LienHe> listLienHe) {
		this.listLienHe = listLienHe;
	}
	public String getMaLienHe() {
		return maLienHe;
	}
	public void setMaLienHe(String maLienHe) {
		this.maLienHe = maLienHe;
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
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getTinhTrang() {
		return tinhTrang;
	}
	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}
	
}
