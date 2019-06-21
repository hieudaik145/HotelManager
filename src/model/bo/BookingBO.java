package model.bo;

import java.util.ArrayList;

import model.bean.Booking;
import model.dao.BookingDAO;

public class BookingBO {

	BookingDAO bookingDAO = new BookingDAO();
	
	public ArrayList<Booking> getListBooking(){
		return bookingDAO.getListBooking();
	}
	
	public ArrayList<Booking> getListBookingByMaKS(String maKS){
		return bookingDAO.getListBookingByMaKS(maKS);
	}
	public Booking getBookingByBookingID(String bookingID) {
		return bookingDAO.getBookingByBookingID(bookingID);
	}
	public boolean UpdateCheckInBooking(String bookingID) {
		return bookingDAO.UpdateCheckInBooking(bookingID);
	}
	
	public ArrayList<Booking> getListCheckInBookingByMaKS(String maKS){
		return bookingDAO.getListCheckInBookingByMaKS(maKS);
	}
	
	public ArrayList<Booking> getListCheckInBooking(){
		return bookingDAO.getListCheckInBooking();
	}
	public boolean deleteBookingByBookingId(String bookingID) {
		return bookingDAO.deleteBookingByBookingId(bookingID);
	}
	public Booking getBookingSearch(String chuoiSearch){
		return bookingDAO.getBookingSearch(chuoiSearch);
	}
	public boolean InsertBooKing(Booking booking) {
		return bookingDAO.InsertBooKing(booking);
	}
	public boolean insertToDoanhThu(Booking booking) {
		return bookingDAO.insertToDoanhThu(booking);
	}
}
