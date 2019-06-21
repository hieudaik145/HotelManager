package model.bo;

import java.util.ArrayList;

import model.bean.LienHe;
import model.dao.LienHeDAO;

public class LienHeBO {
 
	LienHeDAO lienHeDAO=new LienHeDAO();
	
	public boolean them(String hoTen, String email, String soDT, String message) {
		return lienHeDAO.them(hoTen, email, soDT, message);
	}
	public ArrayList<LienHe> getListLienHe(){
		return lienHeDAO.getListLienHe();
	}
}
