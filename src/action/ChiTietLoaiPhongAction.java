package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.json.simple.JSONObject;

import form.ChiTietLoaiPhongForm;
import model.bean.LoaiPhong;
import model.bo.LoaiPhongBO;

public class ChiTietLoaiPhongAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ChiTietLoaiPhongForm chiTietLoaiPhongForm = (ChiTietLoaiPhongForm) form;
		LoaiPhongBO loaiPhongBO = new LoaiPhongBO();
		if(chiTietLoaiPhongForm.getMaLoaiPhong()!=null) {
			
		
		LoaiPhong loaiPhong = loaiPhongBO.getLoaiPhongByID(chiTietLoaiPhongForm.getMaLoaiPhong());
		JSONObject ojb = new JSONObject();
		ojb.put("tenloaiphhong", loaiPhong.getTenLoaiPhong());
		ojb.put("giatien", loaiPhong.getGiaTien());
		ojb.put("image", loaiPhong.getImage());
		ojb.put("mota", loaiPhong.getMoTa());
		ojb.put("tomtat", loaiPhong.getTomTat());
		PrintWriter out = response.getWriter();
		out.println(ojb);
		out.flush();
		}
		return null;
		
	}

	
	
}
