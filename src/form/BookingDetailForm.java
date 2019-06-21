package form;

import java.util.ArrayList;

import org.apache.struts.action.ActionForm;

import model.bean.Booking;
import model.bean.BookingDetail;

public class BookingDetailForm extends ActionForm {

	private String command;
	private String bookingID;
	private Booking booking;
	private ArrayList<BookingDetail>listBookingDetails;
	
	public String getCommand() {
		return command;
	}
	public void setCommand(String command) {
		this.command = command;
	}
	public Booking getBooking() {
		return booking;
	}
	public void setBooking(Booking booking) {
		this.booking = booking;
	}
	public String getBookingID() {
		return bookingID;
	}
	public void setBookingID(String bookingID) {
		this.bookingID = bookingID;
	}
	
	public ArrayList<BookingDetail> getListBookingDetails() {
		return listBookingDetails;
	}
	public void setListBookingDetails(ArrayList<BookingDetail> listBookingDetails) {
		this.listBookingDetails = listBookingDetails;
	}
	
}
