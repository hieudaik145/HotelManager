package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.PhongForm;
import model.bo.PhongBO;

public class ThemPhongAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		PhongForm phongForm = (PhongForm)form;
		PhongBO phongBO = new PhongBO();
		if(phongForm.getCheckMaPhong()!=null) {
			boolean kq = phongBO.checkTrungMaPhong(phongForm.getMaPhong());
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
			boolean kq = phongBO.themMoiPhong(phongForm.getMaPhong(), phongForm.getMaKS(), phongForm.getMaLoaiPhong(),phongForm.getSoPhong());
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
		}
		
	}

	
}
