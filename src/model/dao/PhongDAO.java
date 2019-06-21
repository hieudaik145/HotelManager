package model.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Phong;

public class PhongDAO {
	
	public ArrayList<Phong> getListPhong(){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<Phong>listPhong = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select LoaiPhong.GiaTien, Phong.MaPhong, Phong.MaKS, Phong.MaLoaiPhong, KhachSan.TenKS, LoaiPhong.TenLoaiPhong from Phong inner join LoaiPhong on Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong inner join KhachSan on Phong.MaKS = KhachSan.MaKS");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Phong phong = new Phong();
				phong.setMaPhong(rs.getString("MaPhong"));
				phong.setMaKS(rs.getString("MaKS"));
				phong.setMaLoaiPhong(rs.getString("MaLoaiPhong"));
				phong.setTenKS(rs.getString("TenKS"));
				phong.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
				phong.setGiaTien(rs.getInt("GiaTien"));
				listPhong.add(phong);
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
		return listPhong;
	}
	public int countRowPhongByMaKS(String maKS) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		int kq=0;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select count(MaPhong) as count from Phong where MaKS = '"+maKS+"'");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				kq = rs.getInt("count");
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
		return kq;
	}
	
	public int countRowPhong() {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		int kq=0;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select count(MaPhong) as count from Phong");
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				kq = rs.getInt("count");
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
		return kq;
	}
	
	public ArrayList<Phong> getLisMachinePage(int pageht, int soluong){
		int max = pageht*soluong;
		int min = (pageht-1)*soluong;
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<Phong>listPhong = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement(""
			+ "select top (?)   LoaiPhong.GiaTien,Phong.SoPhong, Phong.MaPhong, Phong.MaKS, Phong.MaLoaiPhong, KhachSan.TenKS, LoaiPhong.TenLoaiPhong from Phong left join LoaiPhong on Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS except select top (?)  LoaiPhong.GiaTien,Phong.SoPhong ,Phong.MaPhong, Phong.MaKS, Phong.MaLoaiPhong, KhachSan.TenKS, LoaiPhong.TenLoaiPhong from Phong left join LoaiPhong on Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS" );
			ps.setInt(1, max);
			ps.setInt(2, min);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Phong phong = new Phong();
				phong.setMaPhong(rs.getString("MaPhong"));
				phong.setMaKS(rs.getString("MaKS"));
				phong.setMaLoaiPhong(rs.getString("MaLoaiPhong"));
				phong.setTenKS(rs.getString("TenKS"));
				phong.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
				phong.setGiaTien(rs.getInt("GiaTien"));
				phong.setSoPhong(rs.getString("SoPhong"));
				listPhong.add(phong);
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
		return listPhong;
	}
	
	public ArrayList<Phong> getLisMachinePageWhereMaKS(int pageht, int soluong,String maKS){
		int max = pageht*soluong;
		int min = (pageht-1)*soluong;
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<Phong>listPhong = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement(""
			+ "select top (?)  LoaiPhong.GiaTien,Phong.SoPhong, Phong.MaPhong, Phong.MaKS, Phong.MaLoaiPhong, KhachSan.TenKS, LoaiPhong.TenLoaiPhong from Phong left join LoaiPhong on Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS where KhachSan.MaKS= '"+maKS+"' except select top (?)  LoaiPhong.GiaTien,Phong.SoPhong ,Phong.MaPhong, Phong.MaKS, Phong.MaLoaiPhong, KhachSan.TenKS, LoaiPhong.TenLoaiPhong from Phong left join LoaiPhong on Phong.MaLoaiPhong = LoaiPhong.MaLoaiPhong left join KhachSan on Phong.MaKS = KhachSan.MaKS where KhachSan.MaKS = '"+maKS+"'" );
			ps.setInt(1, max);
			ps.setInt(2, min);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				Phong phong = new Phong();
				phong.setMaPhong(rs.getString("MaPhong"));
				phong.setMaKS(rs.getString("MaKS"));
				phong.setMaLoaiPhong(rs.getString("MaLoaiPhong"));
				phong.setTenKS(rs.getString("TenKS"));
				phong.setTenLoaiPhong(rs.getString("TenLoaiPhong"));
				phong.setGiaTien(rs.getInt("GiaTien"));
				phong.setSoPhong(rs.getString("SoPhong"));
				listPhong.add(phong);
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
		return listPhong;
	}
	
	public boolean deletePhongWhereMaPhong(String maPhong) {
		ConnectDB connectDB = new ConnectDB();
		int kq = 0;
		Connection conn= null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("delete from Phong where MaPhong = ? ");
			ps.setString(1, maPhong);
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
	
	public boolean checkTrungMaPhong(String maPhong) {
		ConnectDB connectDB = new ConnectDB();
		boolean kq = false ;
		Connection conn= null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select MaPhong from Phong where MaPhong = ? ");
			ps.setString(1, maPhong);
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
	public boolean themMoiPhong(String maPhong,String maKS, String maLP,String soPhong) {
		ConnectDB connectDB = new ConnectDB();
		int kq = 0;
		Connection conn= null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("insert into Phong values(?,?,?,?)");
			ps.setString(1, maPhong);
			ps.setString(2, maKS);
			ps.setString(3, maLP);
			ps.setString(4, soPhong);
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
	public boolean checkTrungSoPhong(String maKS,String soPhong) {
		ConnectDB connectDB = new ConnectDB();
		boolean kq = false ;
		Connection conn= null;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("select MaPhong from Phong where MaKS = '"+maKS+"' and SoPhong='"+soPhong+"'");
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
	
	public boolean updatePhong(String maPhong,String maLoaiPhong,String soPhong) {
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		int kq=0;
		try {
			conn = connectDB.getSQLServerConnection();
			PreparedStatement ps = conn.prepareStatement("update Phong set  MaLoaiPhong=?,SoPhong =? where MaPhong =?");
			ps.setString(1, maLoaiPhong);
			ps.setString(2, soPhong);
			ps.setString(3, maPhong);
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
	
	
	public ArrayList<String> getListMaPhongTrong(String maLoaiPhong,String maKS,int soLuong,Date ngayDen, Date ngayDi){
		ConnectDB connectDB = new ConnectDB();
		Connection conn = null;
		ArrayList<String>listMaPhongTrong = new ArrayList<>();
		try {
			conn = connectDB.getSQLServerConnection();
			String sql =" select top ("+soLuong+") MaPhong from Phong where MaKS='"+maKS+"' and MaLoaiPhong='"+maLoaiPhong+"' and Phong.MaPhong \r\n" + 
					" not in(select BookingDeatail.MaPhong from BookingDeatail where BookingDeatail.NgayDen BETWEEN '"+ngayDen+"'  and '"+ngayDi+"'   or NgayDi <= '"+ngayDi+"' and NgayDi>='"+ngayDen+"' or NgayDi >='"+ngayDi+"' and NgayDen<= '"+ngayDen+"')";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				listMaPhongTrong.add(rs.getString("MaPhong"));
			}
			
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
		return listMaPhongTrong;
	}
	 
}
