package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.LoaiPhongForm;
import model.bean.LoaiPhong;
import model.bo.LoaiPhongBO;

public class ThemLoaiPhongAction  extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		LoaiPhongForm loaiPhongForm = (LoaiPhongForm) form;
		LoaiPhongBO loaiPhongBO = new LoaiPhongBO();
		if(loaiPhongForm.getCheckMaLoaiPhong()!=null){
			boolean kq = loaiPhongBO.checkTrungMaLoaiPhong(loaiPhongForm.getMaLoaiPhong());
			if(kq) {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("1");
				out.flush();
			}else {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("0");
				out.flush();
			}
			return null;
		}else {
			LoaiPhong loaiPhong = new LoaiPhong();
			loaiPhong.setMaLoaiPhong(loaiPhongForm.getMaLoaiPhong());
			loaiPhong.setTenLoaiPhong(loaiPhongForm.getTenLoaiPhong());
			loaiPhong.setGiaTien(loaiPhongForm.getGiaTien());
			loaiPhong.setImage(loaiPhongForm.getImage());
			loaiPhong.setMoTa(loaiPhongForm.getMoTa());
			loaiPhong.setTomTat(loaiPhongForm.getTomTat());
			boolean kqthem = loaiPhongBO.themMoiLoaiPhong(loaiPhong);
			if(kqthem) {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("1");
				out.flush();
			}else {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("0");
				out.flush();
			}
			return null;
		}
		
	}
	
	

}
