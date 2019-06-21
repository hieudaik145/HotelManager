package model.bo;

import java.sql.Date;
import java.util.ArrayList;

import model.bean.Phong;
import model.dao.PhongDAO;

public class PhongBO {

	PhongDAO phongDAO = new PhongDAO();
	
	public ArrayList<Phong> getListPhong(){
		return phongDAO.getListPhong();
	}
	
	public int countRowPhongByMaKS(String maKS) {
		return phongDAO.countRowPhongByMaKS(maKS);
	}
	
	public int countRowPhong() {
		return phongDAO.countRowPhong();
	}
	
	public ArrayList<Phong> getLisMachinePage(int pageht, int soluong){
		return phongDAO.getLisMachinePage(pageht, soluong);
	}
	
	public ArrayList<Phong> getLisMachinePageWhereMaKS(int pageht, int soluong,String maKS){
		return phongDAO.getLisMachinePageWhereMaKS(pageht, soluong, maKS);
	}

	public boolean deletePhongWhereMaPhong(String maPhong) {
		return phongDAO.deletePhongWhereMaPhong(maPhong);
	}
	
	public boolean checkTrungMaPhong(String maPhong) {
		return phongDAO.checkTrungMaPhong(maPhong);
	}
	public boolean themMoiPhong(String maPhong,String maKS, String maLP,String soPhong) {
		return phongDAO.themMoiPhong(maPhong, maKS, maLP,soPhong);
	}
	public boolean checkTrungSoPhong(String maKS,String soPhong) {
		return phongDAO.checkTrungSoPhong(maKS, soPhong);
	}
	public boolean updatePhong(String maPhong,String maLoaiPhong,String soPhong) {
		return phongDAO.updatePhong(maPhong, maLoaiPhong, soPhong);
	}
	public ArrayList<String> getListMaPhongTrong(String maLoaiPhong,String maKS,int soLuong,Date ngayDen, Date ngayDi){
		return phongDAO.getListMaPhongTrong(maLoaiPhong, maKS, soLuong,ngayDen,ngayDi);
	}
}
