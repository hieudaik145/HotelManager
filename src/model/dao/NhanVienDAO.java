package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.NhanVien;

public class NhanVienDAO {
	public NhanVien getNhanVienByID(String idNhanVien) {
		ConnectDB connectDB = new ConnectDB();
		Connection connect = null;
		NhanVien nhanVien = null;
		try {
			connect = connectDB.getSQLServerConnection();
			String sqlSelect = "SELECT NhanVien.MaNhanVien,NhanVien.NgaySinh,NhanVien.DiaChi ,KhachSan.TenKS,NhanVien.MaKS,NhanVien.MaChucVu ,NhanVien.TenNhanVien,"
					+ "NhanVien.GioiTinh, ChucVu.TenChucVu, NhanVien.SoDienThoai, NhanVien.Email FROM NhanVien "
					+ "INNER JOIN KhachSan ON NhanVien.MaKS = KhachSan.MaKS "
					+ "INNER JOIN ChucVu ON NhanVien.MaChucVu = ChucVu.MaChucVu where NhanVien.MaNhanVien = '"+idNhanVien+"'" ;
			PreparedStatement ps = connect.prepareStatement(sqlSelect);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				nhanVien = new NhanVien();
				nhanVien.setMaNhanVien(rs.getString("MaNhanVien"));
				nhanVien.setTenKS(rs.getString("TenKS"));
				nhanVien.setTenNhanVien(rs.getString("TenNhanVien"));
				nhanVien.setGioiTinh(rs.getString("GioiTinh"));
				nhanVien.setTenChucVu(rs.getString("TenChucVu"));
				nhanVien.setSoDienThoai(rs.getString("SoDienThoai"));
				nhanVien.setEmail(rs.getString("Email"));
				nhanVien.setNgaySinh(rs.getString("NgaySinh"));
				nhanVien.setDiaChi(rs.getString("DiaChi"));
				nhanVien.setMaKS(rs.getString("MaKS"));
				nhanVien.setMaChucVu(rs.getString("MaChucVu"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connect.close();
			} catch (SQLException e) {
				// TODO: handle exception
			}
		}
		return nhanVien;
	}
	public ArrayList<NhanVien> getListNhanVien(){
		ConnectDB connectDB = new ConnectDB();
		Connection connect = null;
		ArrayList<NhanVien> listNhanVien = new ArrayList<>();
		
		try {
			connect = connectDB.getSQLServerConnection();
			String sqlSelect = "SELECT NhanVien.MaNhanVien, KhachSan.TenKS, NhanVien.TenNhanVien,"
					+ "NhanVien.GioiTinh, ChucVu.TenChucVu, NhanVien.SoDienThoai, NhanVien.Email FROM NhanVien "
					+ "INNER JOIN KhachSan ON NhanVien.MaKS = KhachSan.MaKS "
					+ "INNER JOIN ChucVu ON NhanVien.MaChucVu = ChucVu.MaChucVu";
			PreparedStatement ps = connect.prepareStatement(sqlSelect);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				NhanVien nhanVien = new NhanVien();
				
				nhanVien.setMaNhanVien(rs.getString("MaNhanVien"));
				nhanVien.setTenKS(rs.getString("TenKS"));
				nhanVien.setTenNhanVien(rs.getString("TenNhanVien"));
				nhanVien.setGioiTinh(rs.getString("GioiTinh"));
				nhanVien.setTenChucVu(rs.getString("TenChucVu"));
				nhanVien.setSoDienThoai(rs.getString("SoDienThoai"));
				nhanVien.setEmail(rs.getString("Email"));
				listNhanVien.add(nhanVien);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connect.close();
			} catch (SQLException e) {
				// TODO: handle exception
			}
		}
		return listNhanVien;
	}
	
	public int countRowNhanVien() {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		int kq = 0;
		
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlCount = "SELECT COUNT(MaNhanVien) AS COUNT FROM NhanVien ";
			PreparedStatement ps = connection.prepareStatement(sqlCount);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				kq = rs.getInt("COUNT");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return kq;
	}
	
	public int countRowNhanVienByMaKS(String maKS) {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		int kq = 0;
		
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlCount = "SELECT COUNT(MaNhanVien) AS COUNT FROM NhanVien "
					+ "WHERE MaKS = '"+ maKS +"' ";
			PreparedStatement ps = connection.prepareStatement(sqlCount);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				kq = rs.getInt("COUNT");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return kq;
	}
	
	public ArrayList<NhanVien> getListNhanVienPage(int pageht, int soLuong){
		int max = pageht * soLuong;
		int min = (pageht - 1) * soLuong;
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		ArrayList<NhanVien> listNhanVien = new ArrayList<>();
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlSelectTop = "SELECT TOP (?) NhanVien.MaNhanVien, NhanVien.MaKS, NhanVien.MaChucVu,"
					+ "KhachSan.TenKS, NhanVien.TenNhanVien, NhanVien.GioiTinh, ChucVu.TenChucVu,"
					+ "NhanVien.SoDienThoai, NhanVien.Email FROM NhanVien "
					+ "LEFT JOIN KhachSan ON NhanVien.MaKS = KhachSan.MaKS "
					+ "LEFT JOIN ChucVu ON NhanVien.MaChucVu = ChucVu.MaChucVu "
					+ "EXCEPT SELECT TOP (?) NhanVien.MaNhanVien, NhanVien.MaKS, NhanVien.MaChucVu,"
					+ "KhachSan.TenKS, NhanVien.TenNhanVien, NhanVien.GioiTinh, ChucVu.TenChucVu,"
					+ "NhanVien.SoDienThoai, NhanVien.Email FROM NhanVien "
					+ "LEFT JOIN KhachSan ON NhanVien.MaKS = KhachSan.MaKS "
					+ "LEFT JOIN ChucVu ON NhanVien.MaChucVu = ChucVu.MaChucVu";
			PreparedStatement ps = connection.prepareStatement(sqlSelectTop);
			ps.setInt(1, max);
			ps.setInt(2, min);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				NhanVien nhanVien = new NhanVien();
				
				nhanVien.setMaNhanVien(rs.getString("MaNhanVien"));
				nhanVien.setMaKS(rs.getString("MaKS"));
				nhanVien.setMaChucVu(rs.getString("MaChucVu"));
				nhanVien.setTenKS(rs.getString("TenKS"));
				nhanVien.setTenNhanVien(rs.getString("TenNhanVien"));
				nhanVien.setGioiTinh(rs.getString("GioiTinh"));
				nhanVien.setTenChucVu(rs.getString("TenChucVu"));
				nhanVien.setSoDienThoai(rs.getString("SoDienThoai"));
				nhanVien.setEmail(rs.getString("Email"));
				listNhanVien.add(nhanVien);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listNhanVien;
	}
	
	public ArrayList<NhanVien> getListNhanVienPageByMaKS(int pageht, int soLuong, String maKS){
		int max = pageht * soLuong;
		int min = (pageht - 1) * soLuong;
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		ArrayList<NhanVien> listNhanVien = new ArrayList<>();
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlSelectTop = "SELECT TOP (?) NhanVien.MaNhanVien, NhanVien.MaKS, NhanVien.MaChucVu,KhachSan.TenKS, NhanVien.TenNhanVien, NhanVien.GioiTinh, ChucVu.TenChucVu,\r\n" + 
					"					 NhanVien.SoDienThoai, NhanVien.Email FROM NhanVien \r\n" + 
					"					LEFT JOIN KhachSan ON NhanVien.MaKS = KhachSan.MaKS \r\n" + 
					"				LEFT JOIN ChucVu ON NhanVien.MaChucVu = ChucVu.MaChucVu where  KhachSan.MaKS='"+maKS+"'\r\n" + 
					"					 EXCEPT SELECT TOP (?) NhanVien.MaNhanVien, NhanVien.MaKS, NhanVien.MaChucVu,\r\n" + 
					"					KhachSan.TenKS, NhanVien.TenNhanVien, NhanVien.GioiTinh, ChucVu.TenChucVu,\r\n" + 
					"					 NhanVien.SoDienThoai, NhanVien.Email FROM NhanVien \r\n" + 
					"					 LEFT JOIN KhachSan ON NhanVien.MaKS = KhachSan.MaKS \r\n" + 
					"					 LEFT JOIN ChucVu ON NhanVien.MaChucVu = ChucVu.MaChucVu where KhachSan.MaKS='"+maKS+"'";
			PreparedStatement ps = connection.prepareStatement(sqlSelectTop);
			ps.setInt(1, max);
			ps.setInt(2, min);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				NhanVien nhanVien = new NhanVien();
				
				nhanVien.setMaNhanVien(rs.getString("MaNhanVien"));
				nhanVien.setMaKS(rs.getString("MaKS"));
				nhanVien.setMaChucVu(rs.getString("MaChucVu"));
				nhanVien.setTenKS(rs.getString("TenKS"));
				nhanVien.setTenNhanVien(rs.getString("TenNhanVien"));
				nhanVien.setGioiTinh(rs.getString("GioiTinh"));
				nhanVien.setTenChucVu(rs.getString("TenChucVu"));
				nhanVien.setSoDienThoai(rs.getString("SoDienThoai"));
				nhanVien.setEmail(rs.getString("Email"));
				listNhanVien.add(nhanVien);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listNhanVien;
	}
	
	public boolean checkTrungNhanVien(String maNhanVien) {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		boolean kq = false;
		
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlSelect = "SELECT MaNhanVien FROM NhanVien WHERE MaNhanVien = ?";
			PreparedStatement ps = connection.prepareStatement(sqlSelect);
			ps.setString(1, maNhanVien);
			ResultSet rs = ps.executeQuery();
			kq = rs.next();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return kq;
	}
	
	public boolean themNhanVien(NhanVien nhanVien) {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		int kq = 0;
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlInsert = "INSERT INTO NhanVien VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = connection.prepareStatement(sqlInsert);
			ps.setString(1, nhanVien.getMaNhanVien());
			ps.setString(2, nhanVien.getMaKS());
			ps.setString(3, nhanVien.getMaChucVu());
			ps.setString(4, nhanVien.getTenNhanVien());
			ps.setString(5, nhanVien.getGioiTinh());
			ps.setString(6, nhanVien.getNgaySinh());
			ps.setString(7, nhanVien.getSoDienThoai());
			ps.setString(8, nhanVien.getEmail());
			ps.setString(9, nhanVien.getDiaChi());
			kq = ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(kq > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean suaNhanVien(NhanVien nhanVien) {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		int kq = 0;
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlUpdate = "UPDATE NhanVien SET MaKS = ?, MaChucVu = ?, TenNhanVien = ?, GioiTinh = ?, NgaySinh = ?, "
					+ "SoDienThoai = ?, Email = ?, DiaChi = ? WHERE MaNhanVien =?";
			PreparedStatement ps = connection.prepareStatement(sqlUpdate);
			ps.setString(1, nhanVien.getMaKS());
			ps.setString(2, nhanVien.getMaChucVu());
			ps.setString(3, nhanVien.getTenNhanVien());
			ps.setString(4, nhanVien.getGioiTinh());
			ps.setString(5, nhanVien.getNgaySinh());
			ps.setString(6, nhanVien.getSoDienThoai());
			ps.setString(7, nhanVien.getEmail());
			ps.setString(8, nhanVien.getDiaChi());
			ps.setString(9, nhanVien.getMaNhanVien());
			kq = ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(kq > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	public boolean xoaNhanVien (String maNhanVien) {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		int kq = 0;
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlDelete ="DELETE FROM NhanVien WHERE MaNhanVien = ?";
			PreparedStatement ps = connection.prepareStatement(sqlDelete);
			ps.setString(1, maNhanVien);
			kq = ps.executeUpdate();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(kq > 0) {
			return true;
		} else {
			return false;
		}
	}
}
