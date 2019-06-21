package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.ChucVu;
import model.bean.KhachSan;
import model.bean.NhanVien;

public class DanhSachNhanVienForm extends ActionForm{
	
	private String maNhanVien;
	private String maKS;
	private String maChucVu;
	private String tenKS;
	private String tenNhanVien;
	private String gioiTinh;
	private String ngaySinh;
	private String soDienThoai;
	private String email;
	private String diaChi;
	private String tenChucVu;
	private int[] soLuongPage;
	private int maxPage;
	private int pageHT;
	private String submit;
	private ArrayList<NhanVien> listNhanVien;
	private ArrayList<KhachSan> listKhachSan;
	private ArrayList<ChucVu> listChucVu;
	
	public String getMaNhanVien() {
		return maNhanVien;
	}
	public void setMaNhanVien(String maNhanVien) {
		this.maNhanVien = maNhanVien;
	}
	public String getMaKS() {
		return maKS;
	}
	public void setMaKS(String maKS) {
		this.maKS = maKS;
	}
	public String getMaChucVu() {
		return maChucVu;
	}
	public void setMaChucVu(String maChucVu) {
		this.maChucVu = maChucVu;
	}
	public String getTenNhanVien() {
		return tenNhanVien;
	}
	public void setTenNhanVien(String tenNhanVien) {
		this.tenNhanVien = tenNhanVien;
	}
	public String getGioiTinh() {
		return gioiTinh;
	}
	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}
	public String getNgaySinh() {
		return ngaySinh;
	}
	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}
	public String getSoDienThoai() {
		return soDienThoai;
	}
	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}
	public ArrayList<NhanVien> getListNhanVien() {
		return listNhanVien;
	}
	public void setListNhanVien(ArrayList<NhanVien> listNhanVien) {
		this.listNhanVien = listNhanVien;
	}
	public ArrayList<KhachSan> getListKhachSan() {
		return listKhachSan;
	}
	public void setListKhachSan(ArrayList<KhachSan> listKhachSan) {
		this.listKhachSan = listKhachSan;
	}
	public ArrayList<ChucVu> getListChucVu() {
		return listChucVu;
	}
	public void setListChucVu(ArrayList<ChucVu> listChucVu) {
		this.listChucVu = listChucVu;
	}
	public String getTenChucVu() {
		return tenChucVu;
	}
	public void setTenChucVu(String tenChucVu) {
		this.tenChucVu = tenChucVu;
	}
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
	public String getSubmit() {
		return submit;
	}
	public void setSubmit(String submit) {
		this.submit = submit;
	}
	
}