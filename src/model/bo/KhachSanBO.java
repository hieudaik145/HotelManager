package model.bo;

import java.util.ArrayList;

import model.bean.KhachSan;
import model.dao.KhachSanDAO;

public class KhachSanBO {

	KhachSanDAO khachSanDAO = new KhachSanDAO();
	
	public ArrayList<KhachSan> getListKhachSan(){
	 return khachSanDAO.getListKhachSan();
	}
	
	public KhachSan getKhachSanByMaKS(String maKS) {
		return khachSanDAO.getKhachSanByMaKS(maKS);
	}
}
