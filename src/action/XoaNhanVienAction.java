package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.DanhSachNhanVienForm;
import model.bo.NhanVienBO;

public class XoaNhanVienAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		DanhSachNhanVienForm danhSachNhanVienForm = (DanhSachNhanVienForm)form;
		NhanVienBO nhanVienBO = new NhanVienBO();
		boolean kq = nhanVienBO.xoaNhanVien(danhSachNhanVienForm.getMaNhanVien());
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
