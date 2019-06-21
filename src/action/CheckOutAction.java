package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.DoanhThuForm;
import model.bean.Booking;
import model.bean.BookingDetail;
import model.bo.BookingBO;
import model.bo.BookingDetailBO;

public class CheckOutAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		DoanhThuForm doanhThuForm = (DoanhThuForm) form;
		BookingBO bookingBO = new BookingBO();
		BookingDetailBO bookingDetailBO = new BookingDetailBO();
		String bookingID=doanhThuForm.getBookingID();
		Booking booking = bookingBO.getBookingByBookingID(bookingID);
		boolean kqDeleteBookingDetail = bookingDetailBO.deleteBookingDetailByBookingID(bookingID);
		if(kqDeleteBookingDetail) {
			boolean deleteBooking = bookingBO.deleteBookingByBookingId(bookingID);
			if(deleteBooking) {
				boolean kq = bookingBO.insertToDoanhThu(booking);
				if(kq) {
					PrintWriter out = response.getWriter();
					out.println("1");
					out.flush();
				}else {
					PrintWriter out = response.getWriter();
					out.println("-1");
					out.flush();
				}
			}else {
				PrintWriter out = response.getWriter();
				out.println("-1");
				out.flush();
			}
		}else {
			PrintWriter out = response.getWriter();
			out.println("-1");
			out.flush();
		}
		
		return super.execute(mapping, form, request, response);
	}
	
	

}
