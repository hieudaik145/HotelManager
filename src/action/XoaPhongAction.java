package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.validator.DynaValidatorForm;
import org.json.simple.JSONObject;

import form.DanhSachPhongForm;
import model.bo.PhongBO;

public class XoaPhongAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/html");
		PhongBO phongBO = new PhongBO();
		DanhSachPhongForm danhSachPhongForm = (DanhSachPhongForm) form;
		boolean kq = phongBO.deletePhongWhereMaPhong(danhSachPhongForm.getMaPhong());
		if (kq) {
			PrintWriter out = response.getWriter();
			out.println("1");
			out.flush();
			return null;
		} else {
			PrintWriter out = response.getWriter();
			out.println("-1");
			out.flush();
			return null;
		}

	}

}
