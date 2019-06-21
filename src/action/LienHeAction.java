package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

import common.StringProcess;
import form.LienHeForm;
import model.bo.LienHeBO;

public class LienHeAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		LienHeForm lienHeForm=(LienHeForm) form;
		request.setCharacterEncoding("utf-8");
	        response.setCharacterEncoding("utf-8");
		if("Send Message".equals(lienHeForm.getSubmit())) {
			ActionErrors actionErrors=new ActionErrors();
			if(StringProcess.checkEmail(lienHeForm.getEmail()))
			{
				actionErrors.add("emailError",new ActionMessage("error.email.trong"));
			}
			if(StringProcess.notVaild(lienHeForm.getSdt()))
			{
				actionErrors.add("sdtError",new ActionMessage("error.sdt.trong"));
			}
			else if(StringProcess.checkSDT(lienHeForm.getSdt()))
			{
				actionErrors.add("sdtError",new ActionMessage("error.sdt.so"));
			}
			saveErrors(request, actionErrors);
			if(actionErrors.size()>0){
				return mapping.findForward("themerror");
				
		}
		}
		if("Send Message".equals(lienHeForm.getSubmit()))
		{
			String hoTen=lienHeForm.getHoTen();
			String email=lienHeForm.getEmail();
			String sdt=lienHeForm.getSdt();
			String message=lienHeForm.getMessage();
			LienHeBO lienHeBO=new LienHeBO();
			boolean kq = lienHeBO.them(hoTen, email, sdt, message);
			if(kq) {
				lienHeForm.setThongBaoLienHe("success");
			}else {
				lienHeForm.setThongBaoLienHe("fail");
			}
			
			return mapping.findForward("themxong");
		}
		else
		{
			return mapping.findForward("them");
		}
	
		
	
			
	}
}
	

