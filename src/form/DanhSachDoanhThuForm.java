package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.DoanhThu;
import model.bean.KhachSan;

public class DanhSachDoanhThuForm extends ActionForm {

	private ArrayList<DoanhThu> listDoanhThu;
	private String tenKS;
	private String ngayDenChon;
	private String ngayDiChon;
	private String maKS;
	private ArrayList<KhachSan>listKhachSan;
	
	
	public ArrayList<KhachSan> getListKhachSan() {
		return listKhachSan;
	}

	public void setListKhachSan(ArrayList<KhachSan> listKhachSan) {
		this.listKhachSan = listKhachSan;
	}

	public String getMaKS() {
		return maKS;
	}

	public void setMaKS(String maKS) {
		this.maKS = maKS;
	}

	public String getTenKS() {
		return tenKS;
	}

	public void setTenKS(String tenKS) {
		this.tenKS = tenKS;
	}

	public String getNgayDenChon() {
		return ngayDenChon;
	}

	public void setNgayDenChon(String ngayDenChon) {
		this.ngayDenChon = ngayDenChon;
	}

	public String getNgayDiChon() {
		return ngayDiChon;
	}

	public void setNgayDiChon(String ngayDiChon) {
		this.ngayDiChon = ngayDiChon;
	}

	public ArrayList<DoanhThu> getListDoanhThu() {
		return listDoanhThu;
	}

	public void setListDoanhThu(ArrayList<DoanhThu> listDoanhThu) {
		this.listDoanhThu = listDoanhThu;
	}
	
	
}
