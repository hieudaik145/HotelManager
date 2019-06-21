package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.Booking;
import model.bean.BookingDetail;
import model.bean.KhachSan;

public class DanhSachBookingForm extends ActionForm {
	
	private String bookorcheck;
	private String chuoiSearch;
	private String bookingID;
	private String tenKS;
	private String maKS;
	private String command;
	private ArrayList<Booking> listBooking;
	private ArrayList<KhachSan> listKhachSan;
	
	
	
	
	
	public String getBookorcheck() {
		return bookorcheck;
	}
	public void setBookorcheck(String bookorcheck) {
		this.bookorcheck = bookorcheck;
	}
	public String getChuoiSearch() {
		return chuoiSearch;
	}
	public void setChuoiSearch(String chuoiSearch) {
		this.chuoiSearch = chuoiSearch;
	}
	public String getCommand() {
		return command;
	}
	public void setCommand(String command) {
		this.command = command;
	}
	public String getMaKS() {
		return maKS;
	}
	public void setMaKS(String maKS) {
		this.maKS = maKS;
	}
	public ArrayList<KhachSan> getListKhachSan() {
		return listKhachSan;
	}
	public void setListKhachSan(ArrayList<KhachSan> listKhachSan) {
		this.listKhachSan = listKhachSan;
	}
	public String getTenKS() {
		return tenKS;
	}
	public void setTenKS(String tenKS) {
		this.tenKS = tenKS;
	}
	public ArrayList<KhachSan> getListKhachSans() {
		return listKhachSan;
	}
	public void setListKhachSans(ArrayList<KhachSan> listKhachSans) {
		this.listKhachSan = listKhachSans;
	}
	public String getBookingID() {
		return bookingID;
	}
	public void setBookingID(String bookingID) {
		this.bookingID = bookingID;
	}
	public ArrayList<Booking> getListBooking() {
		return listBooking;
	}
	public void setListBooking(ArrayList<Booking> listBooking) {
		this.listBooking = listBooking;
	}

	
	

}
