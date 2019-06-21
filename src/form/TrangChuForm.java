package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.KhachSan;
import model.bean.LoaiPhong;

public class TrangChuForm extends ActionForm {
	
	private ArrayList<LoaiPhong> listLoaiPhong;
	private ArrayList<KhachSan> listKhachSan;
	
	public ArrayList<KhachSan> getListKhachSan() {
		return listKhachSan;
	}

	public void setListKhachSan(ArrayList<KhachSan> listKhachSan) {
		this.listKhachSan = listKhachSan;
	}

	public ArrayList<LoaiPhong> getListLoaiPhong() {
		return listLoaiPhong;
	}

	public void setListLoaiPhong(ArrayList<LoaiPhong> listLoaiPhong) {
		this.listLoaiPhong = listLoaiPhong;
	}
	
	
	

}
