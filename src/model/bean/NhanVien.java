package model.bean;

public class NhanVien {
	
	private String maNhanVien;
	private String maKS;
	private String maChucVu;
	private String tenNhanVien;
	private String gioiTinh;
	private String ngaySinh;
	private String soDienThoai;
	private String email;
	private String diaChi;
	private String tenKS;
	private String tenChucVu;
	
	public NhanVien() {
	}

	public NhanVien(String maNhanVien, String maKS, String maChucVu, String tenNhanVien, String gioiTinh,
			String ngaySinh, String soDienThoai, String email, String diaChi) {
		this.maNhanVien = maNhanVien;
		this.maKS = maKS;
		this.maChucVu = maChucVu;
		this.tenNhanVien = tenNhanVien;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.diaChi = diaChi;
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


	public String getTenKS() {
		return tenKS;
	}


	public void setTenKS(String tenKS) {
		this.tenKS = tenKS;
	}


	public String getTenChucVu() {
		return tenChucVu;
	}


	public void setTenChucVu(String tenChucVu) {
		this.tenChucVu = tenChucVu;
	}
	
}
