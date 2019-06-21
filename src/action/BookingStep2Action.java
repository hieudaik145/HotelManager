package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import common.Common;
import form.BookingForm;
import model.bean.KhachSan;
import model.bean.LoaiPhong;
import model.bo.KhachSanBO;
import model.bo.LoaiPhongBO;

public class BookingStep2Action extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		BookingForm bookingForm = (BookingForm)form;
		
		if(bookingForm.getNgayDen()==null || bookingForm.getNgayDen().length()==0 || bookingForm.getNgayDi()==null || bookingForm.getNgayDi().length()==0) {
			KhachSanBO khachSanBO = new KhachSanBO();
			KhachSan khachSan = khachSanBO.getKhachSanByMaKS(bookingForm.getMaKS());
			bookingForm.setKhachSan(khachSan);
			return mapping.findForward("booking-step1");
		}
		else
			{
		
			KhachSanBO khachSanBO = new KhachSanBO();
			
			KhachSan khachSan = khachSanBO.getKhachSanByMaKS(bookingForm.getMaKS());
			bookingForm.setKhachSan(khachSan);
			
			LoaiPhongBO loaiPhongBO = new LoaiPhongBO();
			
			ArrayList<LoaiPhong> listLoaiPhongTrong = loaiPhongBO.getListLoaiPhongTrong(bookingForm.getMaKS(), bookingForm.getNgayDen(), bookingForm.getNgayDi());
			bookingForm.setListLoaiPhongTrong(listLoaiPhongTrong);
			
			/*
			 * ArrayList<LoaiPhong>listLoaiPhongNA =
			 * loaiPhongBO.getListLoaiPhongDay(bookingForm.getMaKS(),
			 * bookingForm.getNgayDen(), bookingForm.getNgayDi());
			 * bookingForm.setListLoaiPhongDay(listLoaiPhongNA);
			 */
			bookingForm.setTenKS(khachSan.getTenKS());
			
			if(bookingForm.getNgayDen().equals(bookingForm.getNgayDi())) {
				bookingForm.setSoDem(1);
			}else {
			long soDem = Common.tinhKhoangTime(bookingForm.getNgayDen(), bookingForm.getNgayDi());
			bookingForm.setSoDem(soDem);
			}
		
		
		return mapping.findForward("booking-step2");
			}
	}

	
}
