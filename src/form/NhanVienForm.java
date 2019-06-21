package form;

import org.apache.struts.action.ActionForm;

import model.bean.NhanVien;

public class NhanVienForm extends ActionForm{
	private String maNhanVien;
	private String maKS;
	private String maChucVu;
	private String tenNhanVien;
	private String gioiTinh;
	private String ngaySinh;
	private String soDienThoai;
	private String email;
	private String diaChi;
	private String checkMaNhanVien;
	private String submit;
	private NhanVien nhanVien;
	private String thongBao;
	private String layNhanVien;
	
	
	public String getLayNhanVien() {
		return layNhanVien;
	}
	public void setLayNhanVien(String layNhanVien) {
		this.layNhanVien = layNhanVien;
	}
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
	public String getCheckMaNhanVien() {
		return checkMaNhanVien;
	}
	public void setCheckMaNhanVien(String checkMaNhanVien) {
		this.checkMaNhanVien = checkMaNhanVien;
	}
	public String getSubmit() {
		return submit;
	}
	public void setSubmit(String submit) {
		this.submit = submit;
	}
	public NhanVien getNhanVien() {
		return nhanVien;
	}
	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}
	public String getThongBao() {
		return thongBao;
	}
	public void setThongBao(String thongBao) {
		this.thongBao = thongBao;
	}
	
}
