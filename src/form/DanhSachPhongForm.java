package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.KhachSan;
import model.bean.LoaiPhong;
import model.bean.Phong;

public class DanhSachPhongForm  extends ActionForm{

	private String maKS;
	private String maPhong;
	private String maLoaiPhong;
	private String tenKS;
	private int[] soLuongPage;
	private int maxPage;
	private int pageHT;
	private ArrayList<Phong> listPhong;
	private ArrayList<KhachSan> listKhachSan;
	private ArrayList<LoaiPhong> listLoaiPhong;
	
	
	
	public String getTenKS() {
		return tenKS;
	}
	public void setTenKS(String tenKS) {
		this.tenKS = tenKS;
	}
	public int[] getSoLuongPage() {
		return soLuongPage;
	}
	public void setSoLuongPage(int[] soLuongPage) {
		this.soLuongPage = soLuongPage;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	
	public int getPageHT() {
		return pageHT;
	}
	public void setPageHT(int pageHT) {
		this.pageHT = pageHT;
	}
	public String getMaKS() {
		return maKS;
	}
	public void setMaKS(String maKS) {
		this.maKS = maKS;
	}
	public String getMaPhong() {
		return maPhong;
	}
	public void setMaPhong(String maPhong) {
		this.maPhong = maPhong;
	}
	public String getMaLoaiPhong() {
		return maLoaiPhong;
	}
	public void setMaLoaiPhong(String maLoaiPhong) {
		this.maLoaiPhong = maLoaiPhong;
	}
	public ArrayList<Phong> getListPhong() {
		return listPhong;
	}
	public void setListPhong(ArrayList<Phong> listPhong) {
		this.listPhong = listPhong;
	}
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
