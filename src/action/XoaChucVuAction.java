package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.ChucVuForm;
import model.bo.ChucVuBO;

public class XoaChucVuAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ChucVuForm chucVuForm = (ChucVuForm) form;
		ChucVuBO chucVuBO = new ChucVuBO();
		boolean kq = chucVuBO.xoaChucVu(chucVuForm.getMaChucVu());
		if(kq) {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("1");
			out.flush();
			return null;
		} else {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("-1");
			out.flush();
			return null;
		}
	}
	
}
