package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.TrangChuForm;
import model.bean.KhachSan;
import model.bean.LoaiPhong;
import model.bo.KhachSanBO;
import model.bo.LoaiPhongBO;

public class TrangChuAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		TrangChuForm trangChuForm = (TrangChuForm) form;
		KhachSanBO khachSanBO = new KhachSanBO();
		ArrayList<KhachSan> listKhachSan = khachSanBO.getListKhachSan();
		LoaiPhongBO loaiPhongBO = new LoaiPhongBO();
		ArrayList<LoaiPhong> listLoaiPhongs = loaiPhongBO.getListLoaiPhong();
		
		
		trangChuForm.setListLoaiPhong(listLoaiPhongs);
		trangChuForm.setListKhachSan(listKhachSan);
		
		
		return mapping.findForward("trangchu");
			
		
	}

	
}
