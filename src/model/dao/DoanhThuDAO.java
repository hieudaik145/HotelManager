package model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;import com.sun.xml.internal.bind.v2.runtime.reflect.Accessor.GetterSetterReflection;

import model.bean.DoanhThu;

public class DoanhThuDAO {
 
	public ArrayList<DoanhThu> getListDOanhThu(){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<DoanhThu>listDoanhThu = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DoanhThu.MaDoanhThu ,DoanhThu.BookingId, DoanhThu.TenKH,DoanhThu.NgayDen,DoanhThu.NgayDi,DoanhThu.SoDienThoai,DoanhThu.Email,DoanhThu.TongTien, DoanhThu.MaKS ,KhachSan.TenKS from DoanhThu left join KhachSan on DoanhThu.MaKS = KhachSan.MaKs");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				DoanhThu doanhThu = new DoanhThu();
				doanhThu.setMaDanhThu(rs.getString("MaDoanhThu"));
				doanhThu.setBookingId(rs.getString("BookingId"));
				doanhThu.setTenKH(rs.getString("TenKH"));
				doanhThu.setNgayDen(rs.getString("ngayDen"));
				doanhThu.setNgayDi(rs.getString("ngayDi"));
				doanhThu.setSoDienThoai(rs.getString("SoDienThoai"));
				doanhThu.setEmail(rs.getString("Email"));
				doanhThu.setTongTien(rs.getString("TongTien"));
				doanhThu.setMaKS(rs.getString("MaKS"));
				doanhThu.setTenKS(rs.getString("TenKS"));
				listDoanhThu.add(doanhThu);
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
		return listDoanhThu;
	}
	public ArrayList<DoanhThu> getListDoanhThuByDate(Date ngayDen, Date ngayDi){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<DoanhThu>listDoanhThu = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DoanhThu.MaDoanhThu ,DoanhThu.BookingId, DoanhThu.TenKH,DoanhThu.NgayDen,DoanhThu.NgayDi,DoanhThu.SoDienThoai,DoanhThu.Email,DoanhThu.TongTien, DoanhThu.MaKS ,KhachSan.TenKS from DoanhThu left join KhachSan on DoanhThu.MaKS = KhachSan.MaKs where NgayDen BETWEEN '"+ngayDen+"' and '"+ngayDi+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				DoanhThu doanhThu = new DoanhThu();
				doanhThu.setMaDanhThu(rs.getString("MaDoanhThu"));
				doanhThu.setBookingId(rs.getString("BookingId"));
				doanhThu.setTenKH(rs.getString("TenKH"));
				doanhThu.setNgayDen(rs.getString("ngayDen"));
				doanhThu.setNgayDi(rs.getString("ngayDi"));
				doanhThu.setSoDienThoai(rs.getString("SoDienThoai"));
				doanhThu.setEmail(rs.getString("Email"));
				doanhThu.setTongTien(rs.getString("TongTien"));
				doanhThu.setMaKS(rs.getString("MaKS"));
				doanhThu.setTenKS(rs.getString("TenKS"));
				listDoanhThu.add(doanhThu);
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
		return listDoanhThu;
	}
	public ArrayList<DoanhThu> getListDoanhThuByMaKS(String maKS){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<DoanhThu>listDoanhThu = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DoanhThu.MaDoanhThu ,DoanhThu.BookingId, DoanhThu.TenKH,DoanhThu.NgayDen,DoanhThu.NgayDi,DoanhThu.SoDienThoai,DoanhThu.Email,DoanhThu.TongTien, DoanhThu.MaKS ,KhachSan.TenKS from DoanhThu left join KhachSan on DoanhThu.MaKS = KhachSan.MaKs where DoanhThu.MaKS ='"+maKS+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				DoanhThu doanhThu = new DoanhThu();
				doanhThu.setMaDanhThu(rs.getString("MaDoanhThu"));
				doanhThu.setBookingId(rs.getString("BookingId"));
				doanhThu.setTenKH(rs.getString("TenKH"));
				doanhThu.setNgayDen(rs.getString("ngayDen"));
				doanhThu.setNgayDi(rs.getString("ngayDi"));
				doanhThu.setSoDienThoai(rs.getString("SoDienThoai"));
				doanhThu.setEmail(rs.getString("Email"));
				doanhThu.setTongTien(rs.getString("TongTien"));
				doanhThu.setMaKS(rs.getString("MaKS"));
				doanhThu.setTenKS(rs.getString("TenKS"));
				listDoanhThu.add(doanhThu);
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
		return listDoanhThu;
	}
	public ArrayList<DoanhThu> getListDoanhThuByMaKSByDate(String maKS,Date ngayDen, Date ngayDi){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<DoanhThu>listDoanhThu = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DoanhThu.MaDoanhThu ,DoanhThu.BookingId, DoanhThu.TenKH,DoanhThu.NgayDen,DoanhThu.NgayDi,DoanhThu.SoDienThoai,DoanhThu.Email,DoanhThu.TongTien, DoanhThu.MaKS ,KhachSan.TenKS from DoanhThu left join KhachSan on DoanhThu.MaKS = KhachSan.MaKs where DoanhThu.MaKS ='"+maKS+"' and NgayDen BETWEEN '"+ngayDen+"' and '"+ngayDi+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				DoanhThu doanhThu = new DoanhThu();
				doanhThu.setMaDanhThu(rs.getString("MaDoanhThu"));
				doanhThu.setBookingId(rs.getString("BookingId"));
				doanhThu.setTenKH(rs.getString("TenKH"));
				doanhThu.setNgayDen(rs.getString("ngayDen"));
				doanhThu.setNgayDi(rs.getString("ngayDi"));
				doanhThu.setSoDienThoai(rs.getString("SoDienThoai"));
				doanhThu.setEmail(rs.getString("Email"));
				doanhThu.setTongTien(rs.getString("TongTien"));
				doanhThu.setMaKS(rs.getString("MaKS"));
				doanhThu.setTenKS(rs.getString("TenKS"));
				listDoanhThu.add(doanhThu);
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
		return listDoanhThu;
	}
}
