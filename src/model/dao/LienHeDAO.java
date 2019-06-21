package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.bean.LienHe;

public class LienHeDAO {

	public boolean them(String hoTen,String email,String soDT,String message)
	{
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		try {
			conn = connectDB.getSQLServerConnection();
			String sql=	String.format("INSERT INTO LienHe(HoTen,Email,SoDT,Message) "+
					" VALUES ( N'%s',N'%s',N'%s',N'%s' )", hoTen, email, soDT, message);
			Statement stmt = conn.createStatement();
			stmt.executeUpdate(sql);
			return true;
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		return false;
	}
	public ArrayList<LienHe> getListLienHe(){
		ConnectDB connectDB = new ConnectDB();
		Connection connection = null;
		ArrayList<LienHe> listLienHe = new ArrayList<>();
		
		try {
			connection = connectDB.getSQLServerConnection();
			String sqlSelect = "SELECT * FROM LienHe";
			PreparedStatement ps = connection.prepareStatement(sqlSelect);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				LienHe lienHe = new LienHe();
				
				lienHe.setMaLienHe(rs.getString("MaLienHe"));
				lienHe.setHoTen(rs.getString("HoTen"));
				lienHe.setEmail(rs.getString("Email"));
				lienHe.setSdt(rs.getString("SoDT"));
				lienHe.setMessage(rs.getString("Message"));
				lienHe.setTinhTrang(rs.getString("TinhTrang"));
				listLienHe.add(lienHe);
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
		return listLienHe;
	}
}
