package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.DanhSachBookingForm;
import model.bo.BookingBO;
import model.bo.BookingDetailBO;

public class XoaBookingAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		response.setContentType("text/html");
		DanhSachBookingForm danhSachBookingForm = (DanhSachBookingForm) form;
		BookingBO bookingBO = new BookingBO();
		BookingDetailBO bookingDetailBO = new BookingDetailBO();
		boolean kq = bookingDetailBO.deleteBookingDetailByBookingID(danhSachBookingForm.getBookingID());
		if(kq) {
			bookingBO.deleteBookingByBookingId(danhSachBookingForm.getBookingID());
			PrintWriter out = response.getWriter();
			out.println("1");
			out.flush();
			return null;
		}else {
			PrintWriter out = response.getWriter();
			out.println("-1");
			out.flush();
			return null;
		}
	
	}
	

}
