package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.KhachSan;
import model.bean.LoaiPhong;

public class BookingForm extends ActionForm {
	
	private String chuoi;
	private String tenKS;
	private String hoTenKH;
	private String soDT;
	private String email;
	private String ngayDen;
	private String ngayDi;
	private String maKS;
	private String command;
	private KhachSan khachSan;
	private long soDem;
	private int tongTien;
	/* private ArrayList<LoaiPhong>listLoaiPhongDay; */
	private ArrayList<LoaiPhong>listLoaiPhongTrong;
	private ArrayList<KhachSan>listKhachSan;
	private ArrayList<LoaiPhong>listLoaiPhongDaChon;
	
	
	
	public int getTongTien() {
		return tongTien;
	}
	public void setTongTien(int tongTien) {
		this.tongTien = tongTien;
	}
	public long getSoDem() {
		return soDem;
	}
	public void setSoDem(long soDem) {
		this.soDem = soDem;
	}
	public ArrayList<LoaiPhong> getListLoaiPhongDaChon() {
		return listLoaiPhongDaChon;
	}
	public void setListLoaiPhongDaChon(ArrayList<LoaiPhong> listLoaiPhongDaChon) {
		this.listLoaiPhongDaChon = listLoaiPhongDaChon;
	}
	public String getChuoi() {
		return chuoi;
	}
	public void setChuoi(String chuoi) {
		this.chuoi = chuoi;
	}
	public String getTenKS() {
		return tenKS;
	}
	public void setTenKS(String tenKS) {
		this.tenKS = tenKS;
	}

	/*
	 * public ArrayList<LoaiPhong> getListLoaiPhongDay() { return listLoaiPhongDay;
	 * } public void setListLoaiPhongDay(ArrayList<LoaiPhong> listLoaiPhongDay) {
	 * this.listLoaiPhongDay = listLoaiPhongDay; }
	 */
	public KhachSan getKhachSan() {
		return khachSan;
	}
	public void setKhachSan(KhachSan khachSan) {
		this.khachSan = khachSan;
	}
	public String getCommand() {
		return command;
	}
	public void setCommand(String command) {
		this.command = command;
	}
	public String getMaKS() {
		return maKS;
	}
	public void setMaKS(String maKS) {
		this.maKS = maKS;
	}
	public String getHoTenKH() {
		return hoTenKH;
	}
	public void setHoTenKH(String hoTenKH) {
		this.hoTenKH = hoTenKH;
	}
	public String getSoDT() {
		return soDT;
	}
	public void setSoDT(String soDT) {
		this.soDT = soDT;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNgayDen() {
		return ngayDen;
	}
	public void setNgayDen(String ngayDen) {
		this.ngayDen = ngayDen;
	}
	public String getNgayDi() {
		return ngayDi;
	}
	public void setNgayDi(String ngayDi) {
		this.ngayDi = ngayDi;
	}
	
	public ArrayList<LoaiPhong> getListLoaiPhongTrong() {
		return listLoaiPhongTrong;
	}
	public void setListLoaiPhongTrong(ArrayList<LoaiPhong> listLoaiPhongTrong) {
		this.listLoaiPhongTrong = listLoaiPhongTrong;
	}
	public ArrayList<KhachSan> getListKhachSan() {
		return listKhachSan;
	}
	public void setListKhachSan(ArrayList<KhachSan> listKhachSan) {
		this.listKhachSan = listKhachSan;
	}
	
	

}
