package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.ChucVuForm;
import model.bean.ChucVu;
import model.bo.ChucVuBO;

public class ThemChucVuAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ChucVuForm chucVuForm = (ChucVuForm) form;
		ChucVuBO chucVuBO = new ChucVuBO();
		if(chucVuForm.getCheckMaChucVu() != null){
			boolean kq = chucVuBO.checkTrungMaChucVu(chucVuForm.getMaChucVu());
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
			ChucVu chucVu = new ChucVu();
			chucVu.setMaChucVu(chucVuForm.getMaChucVu());
			chucVu.setTenChucVu(chucVuForm.getTenChucVu());

			boolean kqthem = chucVuBO.themChucVu(chucVu);
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
