package model.bo;

import java.util.ArrayList;

import model.bean.ChucVu;
import model.dao.ChucVuDAO;

public class ChucVuBO {
	
	ChucVuDAO chucVuDAO = new ChucVuDAO();
	
	public ArrayList<ChucVu> getListChucVu(){
		return chucVuDAO.getListChucVu();
	}
	
	public boolean themChucVu(ChucVu chucVu) {
		return chucVuDAO.themChucVu(chucVu);
	}
	
	public boolean suaChucVu(ChucVu chucVu) {
		return chucVuDAO.suaChucVu(chucVu);
	}
	
	public boolean xoaChucVu(String maChucVu) {
		return chucVuDAO.xoaChucVu(maChucVu);
	}

	public boolean checkTrungMaChucVu(String maChucVu) {
		// TODO Auto-generated method stub
		return chucVuDAO.checkTrungMaChucVu(maChucVu);
	} 
}
