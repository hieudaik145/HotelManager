package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.ChucVu;

public class ChucVuDAO {
	
	public ArrayList<ChucVu> getListChucVu(){
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		ArrayList<ChucVu> listChucVu = new ArrayList<>();
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlSelect = "SELECT * FROM ChucVu";
			PreparedStatement ps = connection.prepareStatement(sqlSelect);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				ChucVu chucVu = new ChucVu();
				
				chucVu.setMaChucVu(rs.getString("MaChucVu"));
				chucVu.setTenChucVu(rs.getString("TenChucVu"));
				listChucVu.add(chucVu);
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
		return listChucVu; 
	}
	
	public boolean themChucVu(ChucVu chucVu) {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		int kq = 0;
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlInsert = "INSERT INTO ChucVu VALUES (?, ?)";
			PreparedStatement ps = connection.prepareStatement(sqlInsert);
			ps.setString(1, chucVu.getMaChucVu());
			ps.setString(2, chucVu.getTenChucVu());
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
	
	public boolean suaChucVu(ChucVu chucVu) {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		int kq = 0;
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlUpdate = "UPDATE ChucVu SET TenChucVu = ? WHERE MaChucVu = ?";
			PreparedStatement ps = connection.prepareStatement(sqlUpdate);
			ps.setString(1, chucVu.getTenChucVu());
			ps.setString(2, chucVu.getMaChucVu());
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
	
	public boolean xoaChucVu (String maChucVu) {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		int kq = 0;
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlDelete ="DELETE FROM ChucVu WHERE MaChucVu = ?";
			PreparedStatement ps = connection.prepareStatement(sqlDelete);
			ps.setString(1, maChucVu);
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
	
	public boolean checkTrungMaChucVu(String maChucVu) {
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		boolean kq = false;
		
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlSelect = "SELECT MaChucVu FROM ChucVu WHERE MaChucVu = ?";
			PreparedStatement ps = connection.prepareStatement(sqlSelect);
			ps.setString(1, maChucVu);
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
}
