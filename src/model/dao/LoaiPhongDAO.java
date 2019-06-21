package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.LoaiPhong;
import model.bean.Phong;

public class LoaiPhongDAO {
	
	

	public ArrayList<LoaiPhong> getListLoaiPhong(){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<LoaiPhong>listLoaiPhong = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select * from LoaiPhong");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				LoaiPhong loaiPhong = new LoaiPhong();
				loaiPhong.setMaLoaiPhong(rs.getString("MaLoaiPhong"));
				loaiPhong.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
				loaiPhong.setGiaTien(rs.getInt("GiaTien"));
				loaiPhong.setImage(rs.getString("Image"));
				loaiPhong.setMoTa(rs.getString("MoTa"));
				loaiPhong.setTomTat(rs.getString("TomTat"));
				listLoaiPhong.add(loaiPhong);
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
		return listLoaiPhong;
	}
	
	public boolean deleteLoaiPhong(String maLoaiPhong) {
		ConnectDB connectDB = new ConnectDB();
		int kq = 0;
		Connection conn= null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("delete from LoaiPhong where MaLoaiPhong = ? ");
			ps.setString(1, maLoaiPhong);
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
	public boolean updateLoaiPhong(LoaiPhong loaiPhong) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		int kq=0;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("update LoaiPhong set  TenLoaiPhong=?,GiaTien =?,Image=?,MoTa=?,TomTat=? where MaLoaiPhong =?");
			ps.setString(1, loaiPhong.getTenLoaiPhong());
			ps.setInt(2, loaiPhong.getGiaTien());
			ps.setString(3, loaiPhong.getImage());
			ps.setString(4, loaiPhong.getMoTa());
			ps.setString(5, loaiPhong.getTomTat());
			ps.setString(6, loaiPhong.getMaLoaiPhong());
			kq = ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		System.out.println(kq);
		if(kq>0) {
			return true;
		}else
		{
			return false;
		}
	}
	
	public boolean checkTrungMaLoaiPhong(String maLoaiPhong) {
		ConnectDB connectDB = new ConnectDB();
		boolean kq = false ;
		Connection conn= null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select MaLoaiPhong from LoaiPhong where MaLoaiPhong = ? ");
			ps.setString(1, maLoaiPhong);
			ResultSet rs = ps.executeQuery();
			kq = rs.next();
			
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
		return kq;
	}
	
	public boolean themMoiLoaiPhong(LoaiPhong loaiPhong ) {
		ConnectDB connectDB = new ConnectDB();
		int kq = 0;
		Connection conn= null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("insert into LoaiPhong values(?,?,?,?,?,?)");
			ps.setString(1, loaiPhong.getMaLoaiPhong());
			ps.setString(2, loaiPhong.getTenLoaiPhong());
			ps.setInt(3, loaiPhong.getGiaTien());
			ps.setString(4, loaiPhong.getImage());
			ps.setString(5, loaiPhong.getMoTa());
			ps.setString(6, loaiPhong.getTomTat());
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
	
	public ArrayList<LoaiPhong> getListLoaiPhongTrong(String maKS,String ngayDen,String ngayDi){
		
			ConnectDB connectDB = new ConnectDB();
			Connection conn = null;
			ArrayList<LoaiPhong>listLoaiPhongTrong = new ArrayList<>();
			try {
				conn = connectDB.getSQLServerConnection();
				PreparedStatement ps = conn.prepareStatement("select LoaiPhong.MaLoaiPhong , count(LoaiPhong.MaLoaiPhong) as"
						+ " SoLuongPhong, LoaiPhong.TenLoaiPhong,LoaiPhong.GiaTien,LoaiPhong.Image,LoaiPhong.MoTa,LoaiPhong.TomTat"
						+ " from Phong left join LoaiPhong on Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong where Phong.MaKS ='"+maKS+"' "
								+ "and Phong.MaPhong not in(select BookingDeatail.MaPhong from BookingDeatail left join "
								+ "Phong on BookingDeatail.MaPhong = Phong.MaPhong where Phong.MaKS='"+maKS+"' and BookingDeatail.NgayDen BETWEEN '"+ngayDen+"' and '"+ngayDi+"'  or NgayDi <= '"+ngayDi+"' and NgayDi>='"+ngayDen+"' or NgayDi >='"+ngayDi+"' and NgayDen<= '"+ngayDen+"')"
										+ " group by LoaiPhong.MaLoaiPhong,LoaiPhong.TenLoaiPhong,LoaiPhong.GiaTien,LoaiPhong.Image,LoaiPhong.MoTa,LoaiPhong.TomTat");
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
					LoaiPhong loaiPhong = new LoaiPhong();
					loaiPhong.setMaLoaiPhong(rs.getString("MaLoaiPhong"));
					loaiPhong.setSoLuongTrong(rs.getString("SoLuongPhong"));
					loaiPhong.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
					loaiPhong.setGiaTien(rs.getInt("GiaTien"));
					loaiPhong.setImage(rs.getString("Image"));
					loaiPhong.setMoTa(rs.getString("MoTa"));
					loaiPhong.setTomTat(rs.getString("TomTat"));
					listLoaiPhongTrong.add(loaiPhong);
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
			return listLoaiPhongTrong;
	}
	
	/*
	 * public ArrayList<LoaiPhong> getListLoaiPhongDay(String maKS,String
	 * ngayDen,String ngayDi){ ConnectDB connectDB = new ConnectDB(); Connection
	 * conn = null; ArrayList<LoaiPhong>listLoaiPhongTrong = new ArrayList<>(); try
	 * { conn = connectDB.getSQLServerConnection(); PreparedStatement ps = conn.
	 * prepareStatement("select LoaiPhong.MaLoaiPhong , LoaiPhong.TenLoaiPhong,LoaiPhong.GiaTien,LoaiPhong.Image,LoaiPhong.MoTa,LoaiPhong.TomTat from Phong left join LoaiPhong on Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong where Phong.MaKS ='"
	 * +maKS+"'  group by LoaiPhong.MaLoaiPhong,LoaiPhong.TenLoaiPhong,LoaiPhong.GiaTien,LoaiPhong.Image,LoaiPhong.MoTa,LoaiPhong.TomTat\r\n"
	 * + "except\r\n" +
	 * "select LoaiPhong.MaLoaiPhong  , LoaiPhong.TenLoaiPhong,LoaiPhong.GiaTien,LoaiPhong.Image,LoaiPhong.MoTa,LoaiPhong.TomTat from Phong left join LoaiPhong on Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong where Phong.MaKS ='"
	 * +maKS+"' and Phong.MaPhong  in(select BookingDeatail.MaPhong from BookingDeatail left join Phong on BookingDeatail.MaPhong = Phong.MaPhong where Phong.MaKS='DN01' and BookingDeatail.NgayDen BETWEEN '"
	 * +ngayDen+"' and  '"
	 * +ngayDi+"') group by LoaiPhong.MaLoaiPhong,LoaiPhong.TenLoaiPhong,LoaiPhong.GiaTien,LoaiPhong.Image,LoaiPhong.MoTa,LoaiPhong.TomTat\r\n"
	 * + ""); ResultSet rs = ps.executeQuery(); while(rs.next()) { LoaiPhong
	 * loaiPhong = new LoaiPhong();
	 * loaiPhong.setMaLoaiPhong(rs.getString("MaLoaiPhong"));
	 * loaiPhong.setSoLuongTrong("N/A");
	 * loaiPhong.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
	 * loaiPhong.setGiaTien(rs.getInt("GiaTien"));
	 * loaiPhong.setImage(rs.getString("Image"));
	 * loaiPhong.setMoTa(rs.getString("MoTa"));
	 * loaiPhong.setTomTat(rs.getString("TomTat"));
	 * listLoaiPhongTrong.add(loaiPhong); } } catch (ClassNotFoundException e) { //
	 * TODO Auto-generated catch block e.printStackTrace(); } catch (SQLException e)
	 * { // TODO Auto-generated catch block e.printStackTrace(); }finally { try {
	 * conn.close(); } catch (SQLException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } } return listLoaiPhongTrong; }
	 */
	
	public LoaiPhong getLoaiPhongByIDLoaiPhong(String idLoaiPhong, String soLuong) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		LoaiPhong loaiPhong = null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select * from LoaiPhong where MaLoaiPhong = '"+idLoaiPhong+"' ");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				loaiPhong = new LoaiPhong();
				loaiPhong.setMaLoaiPhong(rs.getString("MaLoaiPhong"));
				loaiPhong.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
				loaiPhong.setGiaTien(rs.getInt("GiaTien"));
				loaiPhong.setImage(rs.getString("Image"));
				loaiPhong.setMoTa(rs.getString("MoTa"));
				loaiPhong.setTomTat(rs.getString("TomTat"));
				loaiPhong.setSoLuongDat(soLuong);
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
		return loaiPhong;
	}
	public LoaiPhong getLoaiPhongByID(String idLoaiPhong) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		LoaiPhong loaiPhong = null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select * from LoaiPhong where MaLoaiPhong = '"+idLoaiPhong+"' ");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				loaiPhong = new LoaiPhong();
				loaiPhong.setMaLoaiPhong(rs.getString("MaLoaiPhong"));
				loaiPhong.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
				loaiPhong.setGiaTien(rs.getInt("GiaTien"));
				loaiPhong.setImage(rs.getString("Image"));
				loaiPhong.setMoTa(rs.getString("MoTa"));
				loaiPhong.setTomTat(rs.getString("TomTat"));
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
		return loaiPhong;
	}
	
}
