package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.DanhSachChucVuForm;
import model.bean.ChucVu;
import model.bo.ChucVuBO;

public class DanhSachChucVuAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		DanhSachChucVuForm danhSachChucVuForm = (DanhSachChucVuForm) form;
		ChucVuBO chucVuBO = new ChucVuBO();
		
		ArrayList<ChucVu> listChucVu = chucVuBO.getListChucVu();
		danhSachChucVuForm.setListChucVu(listChucVu);
		return mapping.findForward("dsChucVu");
	}
	
}
