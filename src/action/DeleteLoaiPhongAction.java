package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.LoaiPhongForm;
import model.bo.LoaiPhongBO;

public class DeleteLoaiPhongAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		LoaiPhongForm loaiPhongForm = (LoaiPhongForm) form;
		LoaiPhongBO loaiPhongBO = new LoaiPhongBO();
		
		boolean kq = loaiPhongBO.deleteLoaiPhong(loaiPhongForm.getMaLoaiPhong());
		response.setContentType("text/html");
		if(kq) {
			PrintWriter out = response.getWriter();
			out.println("1");
			out.flush();
			return null;
		}else
		{
			PrintWriter out = response.getWriter();
			out.println("-1");
			out.flush();
			return null;
		}
		
	}
	
	

}
