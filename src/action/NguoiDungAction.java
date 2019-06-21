package action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bo.NguoiDungBO;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.NguoiDungForm;



public class NguoiDungAction extends Action{
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		NguoiDungForm nguoiDungForm = (NguoiDungForm) form;
		NguoiDungBO nguoiDungBO = new NguoiDungBO();
		String tenDangNhap = nguoiDungForm.getTenDangNhap();
		String matKhau = nguoiDungForm.getMatKhau();
		
		
		if(nguoiDungBO.checkLogin(tenDangNhap, matKhau)){
			HttpSession session = request.getSession();
			session.setAttribute("tenDangNhap", tenDangNhap);
			return mapping.findForward("thanhCong"); 
				
		} else {
			request.setAttribute("thongBao","dang nhap khong thanh cong!");
			return mapping.findForward("thatBai");
			}
			/*chan vao action can session  HttpSession session = request.getSession();
			if(session.getAttribute("tenDangNhap")==null){
				return mapping.findForward("thatBai");
			}*/
	}
}	
		
	
	
	


