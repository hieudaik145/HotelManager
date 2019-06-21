package action;

/*import java.io.PrintWriter;*/

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.NhanVienForm;
import model.bean.NhanVien;
import model.bo.NhanVienBO;

public class ThemNhanVienAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
			NhanVienForm nhanVienForm = (NhanVienForm) form;
		
			String maNhanVien = nhanVienForm.getMaNhanVien();
			String maKS = nhanVienForm.getMaKS();
			String maChucVu = nhanVienForm.getMaChucVu();
			String tenNhanVien = nhanVienForm.getTenNhanVien();
			String gioiTinh = nhanVienForm.getGioiTinh();
			String ngaySinh = nhanVienForm.getNgaySinh();
			String soDienThoai = nhanVienForm.getSoDienThoai();
			String email = nhanVienForm.getEmail();
			String diaChi = nhanVienForm.getDiaChi();
			
			NhanVienBO nhanVienBO = new NhanVienBO();
			NhanVien nhanVien = new NhanVien(maNhanVien, maKS, maChucVu, tenNhanVien, gioiTinh, ngaySinh, soDienThoai, email, diaChi);
			boolean kq = nhanVienBO.themNhanVien(nhanVien);
			if(kq) {
				System.out.println("Thêm nhân viên thành công!");
				return mapping.findForward("themSuccess");
			} else {
				System.out.println("Thêm nhân viên thất bại!");
				return mapping.findForward("themFail");
			}
		
		/*if(nhanVienForm.getCheckMaNhanVien() != null) {
			boolean kq = nhanVienBO.checkTrungNhanVien(nhanVienForm.getMaNhanVien());
			if(kq) {
				response.setContentType("test/html");
				PrintWriter out = response.getWriter();
				out.println("1");
				out.flush();
			} else {
				response.setContentType("test/html");
				PrintWriter out = response.getWriter();
				out.println("0");
				out.flush();
			}
			return null;
		} else {
			NhanVien nhanVien = new NhanVien();
			boolean kq = nhanVienBO.themNhanVien(nhanVien);
			if(kq) {
				response.setContentType("test/html");
				PrintWriter out = response.getWriter();
				out.println("1");
				out.flush();
			} else {
				response.setContentType("test/html");
				PrintWriter out = response.getWriter();
				out.println("0");
				out.flush();
			}
			return null;
		}*/
	}
}
