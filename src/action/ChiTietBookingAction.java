package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.BookingDetailForm;
import model.bean.Booking;
import model.bean.BookingDetail;
import model.bo.BookingBO;
import model.bo.BookingDetailBO;

public class ChiTietBookingAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		
		BookingDetailForm bookingDetailForm = (BookingDetailForm) form;
		BookingDetailBO bookingDetailBO = new BookingDetailBO();
		BookingBO bookingBO = new BookingBO();
		ArrayList<BookingDetail> listBookingDetails = bookingDetailBO.getListBookingDetaiByIDBooking(bookingDetailForm.getBookingID());
		Booking booking = bookingBO.getBookingByBookingID(bookingDetailForm.getBookingID());
		bookingDetailForm.setBooking(booking);
		bookingDetailForm.setListBookingDetails(listBookingDetails);
		return mapping.findForward("chiTietBooking");
	}

	
}
