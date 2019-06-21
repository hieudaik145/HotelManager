package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.DanhSachNhanVienForm;
import model.bean.ChucVu;
import model.bean.KhachSan;
import model.bean.NhanVien;
import model.bo.ChucVuBO;
import model.bo.KhachSanBO;
import model.bo.NhanVienBO;



public class DanhSachNhanVienAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		DanhSachNhanVienForm danhSachNhanVienForm = (DanhSachNhanVienForm) form;
		
		// Lay danh sach cac khach san
		KhachSanBO khachSanBO = new KhachSanBO();
		ArrayList<KhachSan> listKhachSan = khachSanBO.getListKhachSan();
		danhSachNhanVienForm.setListKhachSan(listKhachSan);
		
		// Lay danh sach cac chuc vu
		ChucVuBO chucVuBO = new ChucVuBO();
		ArrayList<ChucVu> listChucVu = chucVuBO.getListChucVu();
		danhSachNhanVienForm.setListChucVu(listChucVu);
		
		// Lay danh sach cac nhan vien
		ArrayList<NhanVien > listNhanVien = null;
		NhanVienBO nhanVienBO = new NhanVienBO();
		String maKhachSan = danhSachNhanVienForm.getMaKS();
		
		// Phan trang
		int [] sopage;
		int pageht = 1;
		if(maKhachSan == null || maKhachSan.length() == 0) {
			int soLuong = 5;
			int countRowNhanVien = nhanVienBO.countRowNhanVien();
			int soLuongPage;
			if(countRowNhanVien % soLuong == 0) {
				soLuongPage = countRowNhanVien / soLuong;
			} else {
				soLuongPage = (countRowNhanVien / soLuong) + 1;
			}
			if(danhSachNhanVienForm.getPageHT() != 0) {
				pageht = danhSachNhanVienForm.getPageHT();
			}
			listNhanVien = nhanVienBO.getListNhanVienPage(pageht, soLuong);
			sopage = new int[soLuongPage];
			for(int i = 0; i < sopage.length; i++) {
				sopage[i] = i + 1;
			}
			danhSachNhanVienForm.setMaxPage(soLuongPage);
		} else {
			KhachSan khachSan = khachSanBO.getKhachSanByMaKS(danhSachNhanVienForm.getMaKS());
			danhSachNhanVienForm.setTenKS(khachSan.getTenKS());
			int soLuong=4;
			int countRowPhong = nhanVienBO.countRowNhanVienByMaKS(danhSachNhanVienForm.getMaKS());
			int soLuongPage;
			if(countRowPhong%soLuong==0) {
				soLuongPage = countRowPhong/soLuong;
			}else {
				soLuongPage = (countRowPhong/soLuong) +1;
			}
			if(danhSachNhanVienForm.getPageHT()!=0) {
				pageht = danhSachNhanVienForm.getPageHT();
			}
			listNhanVien = nhanVienBO.getListNhanVienPageByMaKS(pageht, soLuong, danhSachNhanVienForm.getMaKS());
			sopage = new int[soLuongPage];
			for(int i =0; i <sopage.length;i++) {
				sopage[i] = i+1;
			}
			danhSachNhanVienForm.setMaxPage(soLuongPage);
		}
		danhSachNhanVienForm.setPageHT(pageht);
		danhSachNhanVienForm.setSoLuongPage(sopage);
		danhSachNhanVienForm.setListNhanVien(listNhanVien);
		return mapping.findForward("dsNhanVien");
	}
}
