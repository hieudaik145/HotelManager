package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.Common;
import model.bean.Booking;

public class BookingDAO {

	public ArrayList<Booking> getListBooking(){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<Booking>listBooking = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DISTINCT Booking.BookingID,KhachSan.MaKS,KhachSan.TenKS,Booking.HoTen,Booking.Email,Booking.SoDienThoai,Booking.TinhTrang, BookingDeatail.NgayDen,BookingDeatail.NgayDi,Booking.TongTien from Booking left join BookingDeatail on Booking.BookingID = BookingDeatail.BookingID left join Phong on Phong.MaPhong = BookingDeatail.MaPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS where Booking.TinhTrang = 0 " );
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Booking booking = new Booking();
				booking.setBookingID(rs.getString("BookingID"));
				booking.setTenKH(rs.getString("HoTen"));
				booking.setEmail(rs.getString("Email"));
				booking.setSdt(rs.getString("SoDienThoai"));
				booking.setNgayDen(rs.getString("NgayDen"));
				booking.setNgayDi(rs.getString("NgayDi"));
				booking.setMaKS(rs.getString("MaKS"));
				booking.setTenKS(rs.getString("TenKS"));
				booking.setTinhTrang(rs.getString("TinhTrang"));
				booking.setTongTien(rs.getInt("TongTien"));
				listBooking.add(booking);
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
		return listBooking;
	}
	
	public ArrayList<Booking> getListBookingByMaKS(String maKS){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<Booking>listBooking = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DISTINCT Booking.BookingID,KhachSan.MaKS,KhachSan.TenKS,Booking.HoTen,Booking.Email,Booking.SoDienThoai,Booking.TinhTrang, BookingDeatail.NgayDen,BookingDeatail.NgayDi,Booking.TongTien from Booking left join BookingDeatail on Booking.BookingID = BookingDeatail.BookingID left join Phong on Phong.MaPhong = BookingDeatail.MaPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS where KhachSan.MaKS ='"+maKS+"' and Booking.TinhTrang = 0 ");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Booking booking = new Booking();
				booking.setBookingID(rs.getString("BookingID"));
				booking.setTenKH(rs.getString("HoTen"));
				booking.setEmail(rs.getString("Email"));
				booking.setSdt(rs.getString("SoDienThoai"));
				booking.setNgayDen(rs.getString("NgayDen"));
				booking.setNgayDi(rs.getString("NgayDi"));
				booking.setMaKS(rs.getString("MaKS"));
				booking.setTenKS(rs.getString("TenKS"));
				booking.setTinhTrang(rs.getString("TinhTrang"));
				booking.setTongTien(rs.getInt("TongTien"));
				listBooking.add(booking);
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
		return listBooking;
	}
	
	public Booking getBookingByBookingID(String bookingID) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		Booking booking = null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DISTINCT Booking.BookingID,KhachSan.MaKS,KhachSan.TenKS,Booking.HoTen,Booking.Email,Booking.SoDienThoai,Booking.TinhTrang, BookingDeatail.NgayDen,BookingDeatail.NgayDi,Booking.TongTien from Booking left join BookingDeatail on Booking.BookingID = BookingDeatail.BookingID left join Phong on Phong.MaPhong = BookingDeatail.MaPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS where Booking.BookingID='"+bookingID+"'"  );
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				booking = new Booking();
				booking.setBookingID(rs.getString("BookingID"));
				booking.setTenKH(rs.getString("HoTen"));
				booking.setEmail(rs.getString("Email"));
				booking.setSdt(rs.getString("SoDienThoai"));
				booking.setNgayDen(rs.getString("NgayDen"));
				booking.setNgayDi(rs.getString("NgayDi"));
				booking.setMaKS(rs.getString("MaKS"));
				booking.setTenKS(rs.getString("TenKS"));
				booking.setTinhTrang(rs.getString("TinhTrang"));
				booking.setTongTien(rs.getInt("TongTien"));
				/*booking.setBookingID(rs.getString("BookingID"));
				booking.setTenKH(rs.getString("TenKH"));
				booking.setEmail(rs.getString("Email"));
				booking.setSdt(rs.getString("SDT"));
				booking.setNgayDen(rs.getString("NgayDen"));
				booking.setNgayDi(rs.getString("NgayDi"));
				booking.setTongTien(rs.getInt("TongTien"));
				booking.setMaKS(rs.getString("MaKS"));
				booking.setTenKS(rs.getString("TenKS"));
				booking.setTinhTrang(rs.getString("TinhTrang"));
				booking.setTienCoc(rs.getInt("TienCoc"));*/
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
		return booking;
	}
	public boolean UpdateCheckInBooking(String bookingID) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		int kq = 0;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("update Booking set TinhTrang = 1 where BookingID = '"+bookingID+"'");
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
	
	public ArrayList<Booking> getListCheckInBooking(){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<Booking>listBooking = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DISTINCT Booking.BookingID,KhachSan.MaKS,KhachSan.TenKS,Booking.HoTen,Booking.Email,Booking.SoDienThoai,Booking.TinhTrang, BookingDeatail.NgayDen,BookingDeatail.NgayDi,Booking.TongTien from Booking left join BookingDeatail on Booking.BookingID = BookingDeatail.BookingID left join Phong on Phong.MaPhong = BookingDeatail.MaPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS where TinhTrang = 1");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Booking booking = new Booking();
				booking.setBookingID(rs.getString("BookingID"));
				booking.setTenKH(rs.getString("HoTen"));
				booking.setEmail(rs.getString("Email"));
				booking.setSdt(rs.getString("SoDienThoai"));
				booking.setNgayDen(rs.getString("NgayDen"));
				booking.setNgayDi(rs.getString("NgayDi"));
				booking.setMaKS(rs.getString("MaKS"));
				booking.setTenKS(rs.getString("TenKS"));
				booking.setTinhTrang(rs.getString("TinhTrang"));
				booking.setTongTien(rs.getInt("TongTien"));
				listBooking.add(booking);
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
		return listBooking;
	}
	
	public ArrayList<Booking> getListCheckInBookingByMaKS(String maKS){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<Booking>listBooking = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DISTINCT Booking.BookingID,KhachSan.MaKS,KhachSan.TenKS,Booking.HoTen,Booking.Email,Booking.SoDienThoai,Booking.TinhTrang, BookingDeatail.NgayDen,BookingDeatail.NgayDi,Booking.TongTien from Booking left join BookingDeatail on Booking.BookingID = BookingDeatail.BookingID left join Phong on Phong.MaPhong = BookingDeatail.MaPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS where Phong.MaKS = '"+maKS+"' and TinhTrang=1 ");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Booking booking = new Booking();
				booking.setBookingID(rs.getString("BookingID"));
				booking.setTenKH(rs.getString("HoTen"));
				booking.setEmail(rs.getString("Email"));
				booking.setSdt(rs.getString("SoDienThoai"));
				booking.setNgayDen(rs.getString("NgayDen"));
				booking.setNgayDi(rs.getString("NgayDi"));
				booking.setMaKS(rs.getString("MaKS"));
				booking.setTenKS(rs.getString("TenKS"));
				booking.setTinhTrang(rs.getString("TinhTrang"));
				booking.setTongTien(rs.getInt("TongTien"));
				listBooking.add(booking);
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
		return listBooking;
	}
	public boolean deleteBookingByBookingId(String bookingID) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		int kq = 0;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("delete from Booking where BookingID = '"+bookingID+"'");
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
	public Booking getBookingSearch(String chuoiSearch){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		Booking booking =null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select DISTINCT Booking.BookingID,KhachSan.MaKS,KhachSan.TenKS,Booking.HoTen,Booking.Email,Booking.SoDienThoai,Booking.TinhTrang, BookingDeatail.NgayDen,BookingDeatail.NgayDi,Booking.TongTien from Booking left join BookingDeatail on Booking.BookingID = BookingDeatail.BookingID left join Phong on Phong.MaPhong = BookingDeatail.MaPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS where Booking.BookingID='"+chuoiSearch+"' or Booking.SoDienThoai ='"+chuoiSearch+"'");
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				booking = new Booking();
				booking.setBookingID(rs.getString("BookingID"));
				booking.setTenKH(rs.getString("HoTen"));
				booking.setEmail(rs.getString("Email"));
				booking.setSdt(rs.getString("SoDienThoai"));
				booking.setNgayDen(rs.getString("NgayDen"));
				booking.setNgayDi(rs.getString("NgayDi"));
				booking.setMaKS(rs.getString("MaKS"));
				booking.setTenKS(rs.getString("TenKS"));
				booking.setTinhTrang(rs.getString("TinhTrang"));
				booking.setTongTien(rs.getInt("TongTien"));
				return booking;
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
		return booking;
	}
	
	public boolean InsertBooKing(Booking booking) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		int kq = 0;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("insert into booking values(?,?,?,?,?,?)");
			ps.setString(1, booking.getBookingID());
			ps.setString(2, booking.getTenKH());
			ps.setString(3, booking.getSdt());
			ps.setString(4, booking.getEmail());
			ps.setString(5, "0");
			ps.setInt(6, booking.getTongTien());
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
	
	public boolean insertToDoanhThu(Booking booking) {
			ConnectDB connectDB = new ConnectDB();
			Connection conn = null;
			int kq = 0;
			try {
				conn = connectDB.getSQLServerConnection();
				PreparedStatement ps = conn.prepareStatement("insert into DoanhThu(BookingId,TenKH,NgayDen,NgayDi,SoDienThoai,Email,TongTien,MaKS) values(?,?,?,?,?,?,?,?)");
				ps.setString(1, booking.getBookingID());
				ps.setString(2, booking.getTenKH());
				ps.setDate(3, Common.convertToDateSql(Common.convertToDate(booking.getNgayDen())));
				ps.setDate(4, Common.convertToDateSql(Common.convertToDate(booking.getNgayDi())));
				ps.setString(5, booking.getSdt());
				ps.setString(6, booking.getEmail());
				ps.setInt(7, booking.getTongTien());
				ps.setString(8, booking.getMaKS());
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
