package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.ChucVu;

public class DanhSachChucVuForm extends ActionForm{
	
	private String maChucVu;
	private String tenChucVu;
	private ArrayList<ChucVu> listChucVu;

	public ArrayList<ChucVu> getListChucVu() {
		return listChucVu;
	}

	public void setListChucVu(ArrayList<ChucVu> listChucVu) {
		this.listChucVu = listChucVu;
	}

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
	
}
