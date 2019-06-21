package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.BookingForm;
import model.bean.LoaiPhong;
import model.bo.LoaiPhongBO;


public class BookingStep3Action extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		BookingForm bookingForm =  (BookingForm) form;
		LoaiPhongBO loaiPhongBO = new LoaiPhongBO();
		String chuoi = bookingForm.getChuoi();
		String array[] = chuoi.split("-");
		ArrayList<LoaiPhong> listLoaiPhongDaChon= new ArrayList<>();
		/*
		 * for(int i = 0 ;i <array.length ;i++) { String soLuong = array[i]; String ma =
		 * array[i+1]; System.out.println(soLuong+"\t"+ma); }
		 */
		
		for(int i = 0 ;i <=array.length-2 ;i++) {
			String soLuong = array[i];
			String ma = array[i+1];
			i++;
			LoaiPhong loaiPhong = loaiPhongBO.getLoaiPhongByIDLoaiPhong(ma, soLuong);
			listLoaiPhongDaChon.add(loaiPhong);
			
		}
		bookingForm.setListLoaiPhongDaChon(listLoaiPhongDaChon);
		
		return mapping.findForward("booking-step3");
	}
	
	

}
