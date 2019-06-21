package model.bo;

import java.sql.Date;
import java.util.ArrayList;

import model.bean.DoanhThu;
import model.dao.DoanhThuDAO;

public class DoanhThuBO {
	DoanhThuDAO doanhThuDAO = new DoanhThuDAO();
	public ArrayList<DoanhThu> getListDOanhThu(){
		return doanhThuDAO.getListDOanhThu();
	}
	
	public ArrayList<DoanhThu> getListDoanhThuByMaKS(String maKS){
		return doanhThuDAO.getListDoanhThuByMaKS(maKS);
	}
	public ArrayList<DoanhThu> getListDoanhThuByMaKSByDate(String maKS,Date ngayDen, Date ngayDi){
	return doanhThuDAO.getListDoanhThuByMaKSByDate(maKS, ngayDen, ngayDi);
	}
	public ArrayList<DoanhThu> getListDoanhThuByDate(Date ngayDen, Date ngayDi){
		return doanhThuDAO.getListDoanhThuByDate(ngayDen, ngayDi);
	}
}
