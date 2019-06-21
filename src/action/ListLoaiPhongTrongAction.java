package action;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import form.BookingForm;
import model.bean.KhachSan;
import model.bean.LoaiPhong;
import model.bo.KhachSanBO;
import model.bo.LoaiPhongBO;

public class ListLoaiPhongTrongAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setContentType("text/html");
		
		BookingForm bookingForm = (BookingForm) form;
		KhachSanBO khachSanBO = new KhachSanBO();
		LoaiPhongBO loaiPhongBO = new LoaiPhongBO();
		String maKS = bookingForm.getMaKS();
		String ngayDen = bookingForm.getNgayDen();
		String ngayDi = bookingForm.getNgayDi();
		KhachSan khachSan = khachSanBO.getKhachSanByMaKS(maKS);
		ArrayList<LoaiPhong> listLoaiPhongTrong = loaiPhongBO.getListLoaiPhongTrong(maKS, ngayDen, ngayDi);
		bookingForm.setKhachSan(khachSan);
		bookingForm.setListLoaiPhongTrong(listLoaiPhongTrong);
			JSONArray jsonArray = new JSONArray();
			JSONObject obj = new JSONObject();
			obj.put("khachsan",khachSan.getTenKS());
			PrintWriter out = response.getWriter();
			out.println(obj);
			out.flush();
			return null;
	}

	
}
