package model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Booking;
import model.bean.BookingDetail;

public class BookingDetailDAO {

	public ArrayList<BookingDetail> getListBookingDetaiByIDBooking(String bookingID){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<BookingDetail>listBookingDetail = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select BookingDeatail.BookingDetaiID,BookingDeatail.BookingID,BookingDeatail.MaPhong,BookingDeatail.NgayDen,BookingDeatail.NgayDi, Phong.SoPhong, LoaiPhong.TenLoaiPhong,LoaiPhong.GiaTien,LoaiPhong.MaLoaiPhong from BookingDeatail left join Phong on BookingDeatail.MaPhong = Phong.MaPhong left join LoaiPhong on Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong  where BookingDeatail.BookingID = '"+bookingID+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
			BookingDetail bookingDetail = new BookingDetail();
			bookingDetail.setBookingDetailID(rs.getString("BookingDetaiID"));
			bookingDetail.setBookingID(rs.getString("BookingID"));
			bookingDetail.setMaPhong(rs.getString("MaPhong"));
			bookingDetail.setNgayDen(rs.getString("NgayDen"));
			bookingDetail.setNgayDi(rs.getString("NgayDi"));
			bookingDetail.setGiaTien(rs.getInt("GiaTien"));
			bookingDetail.setMaLoaiPhong(rs.getString("MaLoaiPhong"));
			bookingDetail.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
			bookingDetail.setSoPhong(rs.getString("SoPhong"));
			listBookingDetail.add(bookingDetail);
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
		return listBookingDetail;
	}
	
	public boolean deleteBookingDetailByBookingID(String bookingID) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		int kq = 0;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("delete from BookingDeatail where BookingID = '"+bookingID+"'");
			kq = ps.executeUpdate();
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
		if(kq>0) {
			return true;
		}else {
			return false;
		}
	}
	public boolean insertBookingDetail(String bookingID,String maPhong,Date ngayDen, Date ngayDi) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		int kq = 0;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("insert into BookingDeatail(BookingID,MaPhong,NgayDen,NgayDi) values(?,?,?,?)");
			ps.setString(1,bookingID);
			ps.setString(2, maPhong);
			ps.setDate(3, ngayDen);
			ps.setDate(4, ngayDi);
			kq = ps.executeUpdate();
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
		if(kq>0) {
			return true;
		}else {
			return false;
		}
	}
	
	
	
}
