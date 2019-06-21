package action;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import common.Common;
import form.BookingForm;
import model.bean.Booking;
import model.bean.LoaiPhong;
import model.bo.BookingBO;
import model.bo.BookingDetailBO;
import model.bo.PhongBO;

public class BookingStep4Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html");
		BookingForm bookingForm = (BookingForm) form;
		
		if(bookingForm.getCommand()!=null) {
			if(bookingForm.getCommand().equals("huy")) {
				request.getSession(false).removeAttribute("bookingForm");
				PrintWriter out = response.getWriter();
				out.println("huythanhcong");
				out.flush();
				return null;
			}else {
			BookingBO bookingBO = new BookingBO();
			Booking booking = new Booking();
			BookingDetailBO bookingDetailBO = new BookingDetailBO();
			PhongBO phongBO = new PhongBO();
			String idbooking= String.valueOf(new Date().getTime());
			booking.setBookingID(idbooking);
			booking.setTenKH(bookingForm.getHoTenKH());
			booking.setEmail(bookingForm.getEmail());
			booking.setSdt(bookingForm.getSoDT());
			booking.setTongTien(bookingForm.getTongTien());
			boolean kqInsertBooking = bookingBO.InsertBooKing(booking);
			if(kqInsertBooking) {
				java.sql.Date dateNgayDen = Common.convertToDateSql(Common.convertToDate(bookingForm.getNgayDen()));
				java.sql.Date dateNgayDi =  Common.convertToDateSql(Common.convertToDate(bookingForm.getNgayDi()));
				for(int i=0; i<bookingForm.getListLoaiPhongDaChon().size();i++) {
					String maLoaiPhong = bookingForm.getListLoaiPhongDaChon().get(i).getMaLoaiPhong();
					String soLuong = bookingForm.getListLoaiPhongDaChon().get(i).getSoLuongDat();
					ArrayList<String> listMaPhong = phongBO.getListMaPhongTrong(maLoaiPhong, bookingForm.getMaKS(),Integer.parseInt(soLuong),dateNgayDen,dateNgayDi);
					for(int j=0;j<listMaPhong.size();j++) {
						boolean kq = bookingDetailBO.insertBookingDetail(idbooking, listMaPhong.get(j), dateNgayDen,dateNgayDi);
						if(kq==false) {
							PrintWriter out = response.getWriter();
							out.println("2");
							out.flush();
							return null;
						}
					}
				}
				request.getSession(false).removeAttribute("bookingForm");
				PrintWriter out = response.getWriter();
				out.println(idbooking);
				out.flush();
				return null;
				
			}else {
				PrintWriter out = response.getWriter();
				out.println("2");
				out.flush();
				return null;
			}
			}
		}else {
		int tongTien = 0;
		ArrayList<LoaiPhong> listLoaiPhongDat = bookingForm.getListLoaiPhongDaChon();
		for(int i=0; i< listLoaiPhongDat.size();i++) {
			int soLuong= Integer.parseInt(listLoaiPhongDat.get(i).getSoLuongDat());
			int giaTien = listLoaiPhongDat.get(i).getGiaTien();
			int soDem = (int)bookingForm.getSoDem();
			int tien= soLuong*giaTien*soDem;
			tongTien+=tien;
		}
		bookingForm.setTongTien(tongTien);
		return mapping.findForward("booking-step4");
		}
	}

	
}
