package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.KhachSan;


public class KhachSanDAO {

	public ArrayList<KhachSan> getListKhachSan(){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<KhachSan>listKhachSan = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select * from KhachSan");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				KhachSan khachSan = new KhachSan();
				khachSan.setMaKS(rs.getString("MaKS"));
				khachSan.setTenTP(rs.getString("TenTP"));
				khachSan.setTenKS(rs.getString("TenKS"));
				khachSan.setDiaChi(rs.getString("DiaChi"));
				khachSan.setSoDT(rs.getString("SoDienThoai"));
				listKhachSan.add(khachSan);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return listKhachSan;
	}
	
	public KhachSan getKhachSanByMaKS(String maKS) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		KhachSan khachSan = new KhachSan();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select * from KhachSan where MaKS = '"+maKS+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				khachSan.setMaKS(rs.getString("MaKS"));
				khachSan.setTenTP(rs.getString("TenTP"));
				khachSan.setTenKS(rs.getString("TenKS"));
				khachSan.setDiaChi(rs.getString("DiaChi"));
				khachSan.setSoDT(rs.getString("SoDienThoai"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return khachSan;
	}
	
	
}
