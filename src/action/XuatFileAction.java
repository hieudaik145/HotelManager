package action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.XuatFileForm;
import model.bean.DoanhThu;

public class XuatFileAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
			XuatFileForm xuatFileForm = new XuatFileForm();
			ArrayList<DoanhThu> listDoanhThuXuat = xuatFileForm.getListDoanhThu();
			
			PrintWriter out = response.getWriter();
			out.println("1");
			out.flush();
			return null;
			
	}

	
}
