package model.bo;

import java.util.ArrayList;

import model.bean.NhanVien;
import model.dao.NhanVienDAO;

public class NhanVienBO {
	
	NhanVienDAO nhanVienDAO = new NhanVienDAO();
	
	public ArrayList<NhanVien> getListNhanVien(){
		return nhanVienDAO.getListNhanVien();
	}
	
	public int countRowNhanVien() {
		return nhanVienDAO.countRowNhanVien();
	}
	
	public int countRowNhanVienByMaKS(String maKS) {
		return nhanVienDAO.countRowNhanVienByMaKS(maKS);
	}
	
	public ArrayList<NhanVien> getListNhanVienPage(int pageht, int soLuong){
		return nhanVienDAO.getListNhanVienPage(pageht, soLuong);
	}
	
	public ArrayList<NhanVien> getListNhanVienPageByMaKS(int pageht, int soLuong, String maKS){
		return nhanVienDAO.getListNhanVienPageByMaKS(pageht, soLuong, maKS);
	}
	
	public boolean checkTrungNhanVien(String maNhanVien) {
		return nhanVienDAO.checkTrungNhanVien(maNhanVien);
	}
	
	public boolean themNhanVien(NhanVien nhanVien) {
		return nhanVienDAO.themNhanVien(nhanVien);
	}
	
	public boolean suaNhanVien (NhanVien nhanVien) {
		return nhanVienDAO.suaNhanVien(nhanVien);
	}
	
	public boolean xoaNhanVien (String maNhanVien) {
		return nhanVienDAO.xoaNhanVien(maNhanVien);
	}
	public NhanVien getNhanVienByID(String idNhanVien) {
		return nhanVienDAO.getNhanVienByID(idNhanVien);
	}
}
