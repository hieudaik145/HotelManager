package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.DanhSachLoaiPhongForm;
import model.bean.LoaiPhong;
import model.bo.LoaiPhongBO;

public class DanhSachLoaiPhongAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		DanhSachLoaiPhongForm danhSachLoaiPhongForm = (DanhSachLoaiPhongForm)form;
		
		LoaiPhongBO loaiPhongBO = new LoaiPhongBO();
		ArrayList<LoaiPhong> listLoaiPhong = loaiPhongBO.getListLoaiPhong();
		danhSachLoaiPhongForm.setListLoaiPhong(listLoaiPhong);
		return mapping.findForward("danhSachLoaiPhong");
	}
	
	

}
