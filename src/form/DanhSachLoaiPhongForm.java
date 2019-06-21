package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.LoaiPhong;

public class DanhSachLoaiPhongForm extends ActionForm {

	
	private ArrayList<LoaiPhong> listLoaiPhong ;

	public ArrayList<LoaiPhong> getListLoaiPhong() {
		return listLoaiPhong;
	}

	public void setListLoaiPhong(ArrayList<LoaiPhong> listLoaiPhong) {
		this.listLoaiPhong = listLoaiPhong;
	}
	
	
}
