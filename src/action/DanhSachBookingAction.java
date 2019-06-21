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
import model.bean.KhachSan;
import model.bo.BookingBO;
import model.bo.KhachSanBO;

public class DanhSachBookingAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		DanhSachBookingForm danhSachBookingForm = (DanhSachBookingForm)form;
		
		
		KhachSanBO khachSanBO = new KhachSanBO();
		ArrayList<KhachSan> listKS = khachSanBO.getListKhachSan();
		danhSachBookingForm.setListKhachSans(listKS);
		
		BookingBO bookingBO = new BookingBO();
		if(danhSachBookingForm.getChuoiSearch()!=null) {
			Booking booking = bookingBO.getBookingSearch(danhSachBookingForm.getChuoiSearch());
			ArrayList<Booking> listSearch = null;
			if(booking!=null) {
				listSearch = new ArrayList<>();
				listSearch.add(booking);
				danhSachBookingForm.setListBooking(listSearch);
				if(booking.getTinhTrang().equals("0")) {
					return mapping.findForward("searchBooking");
				}else{
					return mapping.findForward("searchCheckIn");
				}
			}else {
				listSearch = new ArrayList<>();
				danhSachBookingForm.setListBooking(listSearch);
				if(danhSachBookingForm.getBookorcheck().equals("book")) {

					return mapping.findForward("danhSachBooking");
				}else {
					return mapping.findForward("danhSachCheckIn");
				}
				
			}
		}else {
			if(danhSachBookingForm.getCommand()==null) {
				ArrayList<Booking> listBooking = null;
				if(danhSachBookingForm.getMaKS()==null) {
					listBooking = bookingBO.getListBooking();
				}else {
					KhachSan khachSan = khachSanBO.getKhachSanByMaKS(danhSachBookingForm.getMaKS());
					danhSachBookingForm.setTenKS(khachSan.getTenKS());
					listBooking = bookingBO.getListBookingByMaKS(danhSachBookingForm.getMaKS());
				}
				danhSachBookingForm.setListBooking(listBooking);
				return mapping.findForward("danhSachBooking");
			}else {
				ArrayList<Booking> listBooking = null;
				if(danhSachBookingForm.getMaKS()==null) {
					listBooking = bookingBO.getListCheckInBooking();
				}else {
					KhachSan khachSan = khachSanBO.getKhachSanByMaKS(danhSachBookingForm.getMaKS());
					danhSachBookingForm.setTenKS(khachSan.getTenKS());
					listBooking = bookingBO.getListCheckInBookingByMaKS(danhSachBookingForm.getMaKS());
				}
				danhSachBookingForm.setListBooking(listBooking);
				return mapping.findForward("danhSachCheckIn");
				
			}
		}
		
		
		
		

	}
	
}
