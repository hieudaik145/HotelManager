package model.bo;

import java.sql.Date;
import java.util.ArrayList;

import model.bean.Booking;
import model.bean.BookingDetail;
import model.dao.BookingDetailDAO;

public class BookingDetailBO {

	BookingDetailDAO bookingDetailDAO = new BookingDetailDAO();
	public ArrayList<BookingDetail> getListBookingDetaiByIDBooking(String bookingID){
		return bookingDetailDAO.getListBookingDetaiByIDBooking(bookingID);
	}
	public boolean deleteBookingDetailByBookingID(String bookingID) {
		return bookingDetailDAO.deleteBookingDetailByBookingID(bookingID);
	}
	public boolean insertBookingDetail(String bookingID,String maPhong,Date ngayDen, Date ngayDi) {
		
		return bookingDetailDAO.insertBookingDetail(bookingID, maPhong, ngayDen, ngayDi);
	}
}
