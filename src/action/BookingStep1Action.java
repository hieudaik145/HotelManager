package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.BookingForm;
import model.bean.KhachSan;
import model.bo.KhachSanBO;

public class BookingStep1Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		BookingForm bookingForm = (BookingForm) form;
		KhachSanBO khachSanBO = new KhachSanBO();
		ArrayList<KhachSan> listKhachSan = khachSanBO.getListKhachSan();
		bookingForm.setListKhachSan(listKhachSan);
		return mapping.findForward("booking-step1");
	}
	
	

}
