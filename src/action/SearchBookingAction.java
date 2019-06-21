package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.DanhSachBookingForm;
import model.bean.Booking;
import model.bo.BookingBO;

public class SearchBookingAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		DanhSachBookingForm danhSachBookingForm = (DanhSachBookingForm) form;
		BookingBO bookingBO = new BookingBO();
		
		Booking booking = bookingBO.getBookingSearch(danhSachBookingForm.getChuoiSearch());
		ArrayList<Booking> listSearch = new ArrayList<>();
		listSearch.add(booking);
		danhSachBookingForm.setListBooking(listSearch);
		if(booking.getTinhTrang().equals("0")) {
			return mapping.findForward("searchBooking");
		}else {
			return mapping.findForward("searchCheckIn");
		}
	}
	
	

}
