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

public class ChinhSuaPhongAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		PhongForm phongForm = (PhongForm) form;
		PhongBO phongBO = new PhongBO();
		response.setContentType("text/html");
		
		if(phongForm.getCheckMaPhong()!=null) {
			boolean kqcheck = phongBO.checkTrungSoPhong(phongForm.getMaKS(), phongForm.getSoPhong());
			if(kqcheck) {
				PrintWriter out = response.getWriter();
				out.println("2");
				out.flush();
			}
			return null;
		}
		else {
			boolean kqsua = phongBO.updatePhong(phongForm.getMaPhong(), phongForm.getMaLoaiPhong(), phongForm.getSoPhong());
			PrintWriter out = response.getWriter();
			out.println("1");
			out.flush();
			return null;
		}
	}
	
	

}
