package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.DoanhThu;

public class XuatFileForm extends ActionForm {
	
	
	private ArrayList<DoanhThu> listDoanhThu;
	

	public ArrayList<DoanhThu> getListDoanhThu() {
		return listDoanhThu;
	}
	public void setListDoanhThu(ArrayList<DoanhThu> listDoanhThu) {
		this.listDoanhThu = listDoanhThu;
	}

	
	

}
