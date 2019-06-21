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

public class UpdateCheckInBookingAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		DanhSachBookingForm danhSachBookingForm = (DanhSachBookingForm)form;
		BookingBO bookingBO = new BookingBO();
		response.setContentType("text/html");
		boolean kqcheckin = bookingBO.UpdateCheckInBooking(danhSachBookingForm.getBookingID());
		if(kqcheckin) {
			PrintWriter out = response.getWriter();
			out.print("1");
			out.flush();
		}else {
			PrintWriter out = response.getWriter();
			out.print("-1");
			out.flush();
		}
		return null;
	}

	
}
