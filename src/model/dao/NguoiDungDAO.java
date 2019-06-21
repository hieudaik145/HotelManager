package model.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class NguoiDungDAO {
	public boolean checkLogin(String tenDangNhap, String matKhau) {
		ConnectDB connectDB = new ConnectDB();
		Connection connect = null;
		String sql=	String.format("SELECT TenDangNhap FROM NguoiDung WHERE TenDangNhap = '%s' AND MatKhau = '%s'", tenDangNhap, matKhau);
		ResultSet rs = null;
		Statement statement=null;
		try {
			connect = connectDB.getSQLServerConnection();
			statement = connect.createStatement();
			rs=statement.executeQuery(sql);
			if(rs.next()==true) {
				return true;
			}else {
				return false;
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		finally {
			try {
				statement.close();
				rs.close();
				connect.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
		return false;
	}
}
		

