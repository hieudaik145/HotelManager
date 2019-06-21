package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.DanhSachLienHeForm;
import model.bean.LienHe;
import model.bo.LienHeBO;

public class DanhSachLienHeAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		DanhSachLienHeForm danhSachLienHeForm = (DanhSachLienHeForm) form;
		LienHeBO lienHeBO = new LienHeBO();
		ArrayList<LienHe> listLienHe = lienHeBO.getListLienHe();
		danhSachLienHeForm.setListLienHe(listLienHe);
		return mapping.findForward("dsLienHe");
	}
	
}
