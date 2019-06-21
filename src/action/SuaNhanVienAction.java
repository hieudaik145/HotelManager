package action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.json.simple.JSONObject;

import form.NhanVienForm;
import model.bean.NhanVien;
import model.bo.NhanVienBO;

public class SuaNhanVienAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		NhanVienForm nhanVienForm = (NhanVienForm)form;
		NhanVienBO nhanVienBO = new NhanVienBO();
		if(nhanVienForm.getLayNhanVien()!=null) {
			
			NhanVien nhanVien = nhanVienBO.getNhanVienByID(nhanVienForm.getMaNhanVien());
			JSONObject ojb = new JSONObject();
			ojb.put("manv", nhanVien.getMaNhanVien());
			ojb.put("tennv", nhanVien.getTenNhanVien());
			ojb.put("gioitinh", nhanVien.getGioiTinh());
			ojb.put("ngaysinh", nhanVien.getNgaySinh());
			ojb.put("sodt", nhanVien.getSoDienThoai());
			ojb.put("email", nhanVien.getEmail());
			ojb.put("diachi", nhanVien.getDiaChi());
			ojb.put("tenks", nhanVien.getTenKS());
			ojb.put("maks", nhanVien.getMaKS());
			ojb.put("tencv", nhanVien.getTenChucVu());
			ojb.put("macv", nhanVien.getMaChucVu());
			PrintWriter out = response.getWriter();
			out.println(ojb);
			out.flush();
			return null;
		}else {
		String maNhanVien = nhanVienForm.getMaNhanVien();
		String maKS = nhanVienForm.getMaKS();
		String maChucVu = nhanVienForm.getMaChucVu();
		String tenNhanVien = nhanVienForm.getTenNhanVien();
		String gioiTinh = nhanVienForm.getGioiTinh();
		String ngaySinh = nhanVienForm.getNgaySinh();
		String soDienThoai = nhanVienForm.getSoDienThoai();
		String email = nhanVienForm.getEmail();
		String diaChi = nhanVienForm.getDiaChi();
		
		NhanVien nhanVien = new NhanVien(maNhanVien, maKS, maChucVu, tenNhanVien, gioiTinh, ngaySinh, soDienThoai, email, diaChi);
		boolean kq = nhanVienBO.suaNhanVien(nhanVien);
		if(kq) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("1");
			out.flush();
			return null;
		} else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("2");
			out.flush();
			return null;
		}
		}
	}
	
}
