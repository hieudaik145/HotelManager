package model.bo;

import java.util.ArrayList;

import model.bean.LoaiPhong;
import model.dao.LoaiPhongDAO;

public class LoaiPhongBO {

	LoaiPhongDAO loaiPhongDAO = new LoaiPhongDAO();
	
	
	public ArrayList<LoaiPhong> getListLoaiPhong(){
		return loaiPhongDAO.getListLoaiPhong();
	}
	public boolean deleteLoaiPhong(String maLoaiPhong) {
		return loaiPhongDAO.deleteLoaiPhong(maLoaiPhong);
	}
	public boolean updateLoaiPhong(LoaiPhong loaiPhong) {
		return loaiPhongDAO.updateLoaiPhong(loaiPhong);
	}
	public boolean checkTrungMaLoaiPhong(String maLoaiPhong) {
		return loaiPhongDAO.checkTrungMaLoaiPhong(maLoaiPhong);
	}
	public boolean themMoiLoaiPhong(LoaiPhong loaiPhong ) {
		return loaiPhongDAO.themMoiLoaiPhong(loaiPhong);
	}
	
	public ArrayList<LoaiPhong> getListLoaiPhongTrong(String maKS,String ngayDen,String ngayDi){
		return loaiPhongDAO.getListLoaiPhongTrong(maKS, ngayDen, ngayDi);
	}
	/*
	 * public ArrayList<LoaiPhong> getListLoaiPhongDay(String maKS,String
	 * ngayDen,String ngayDi){ return loaiPhongDAO.getListLoaiPhongDay(maKS,
	 * ngayDen, ngayDi); }
	 */
	
	public LoaiPhong getLoaiPhongByIDLoaiPhong(String idLoaiPhong, String soLuong) {
		return loaiPhongDAO.getLoaiPhongByIDLoaiPhong(idLoaiPhong, soLuong);
	}
	public LoaiPhong getLoaiPhongByID(String idLoaiPhong) {
		return loaiPhongDAO.getLoaiPhongByID(idLoaiPhong);
	}
}
