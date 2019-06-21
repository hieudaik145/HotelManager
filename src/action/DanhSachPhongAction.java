package action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import form.DanhSachPhongForm;
import model.bean.KhachSan;
import model.bean.LoaiPhong;
import model.bean.Phong;
import model.bo.KhachSanBO;
import model.bo.LoaiPhongBO;
import model.bo.PhongBO;

public class DanhSachPhongAction  extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		DanhSachPhongForm danhSachPhongForm = (DanhSachPhongForm) form;
		
		//list khach san
		KhachSanBO khachSanBO = new KhachSanBO();
		ArrayList<KhachSan> listKS = khachSanBO.getListKhachSan();
		danhSachPhongForm.setListKhachSan(listKS);
		LoaiPhongBO loaiPhongBO = new LoaiPhongBO();
		
		//list loai phong
		ArrayList<LoaiPhong> listLoaiPhong= loaiPhongBO.getListLoaiPhong();
		danhSachPhongForm.setListLoaiPhong(listLoaiPhong);
		ArrayList<Phong> listPhong = null ;
		PhongBO phongBO = new PhongBO();
		//phan trang
		int [] sopage;
		int pageht = 1;
		if(danhSachPhongForm.getMaKS()==null || danhSachPhongForm.getMaKS().length()==0) {
			int soLuong=5;
			int countRowPhong = phongBO.countRowPhong();
			int soLuongPage;
			if(countRowPhong%soLuong==0) {
				soLuongPage = countRowPhong/soLuong;
			}else {
				soLuongPage = (countRowPhong/soLuong) +1;
			}
			if(danhSachPhongForm.getPageHT()!=0) {
				pageht = danhSachPhongForm.getPageHT();
			}
			listPhong = phongBO.getLisMachinePage(pageht, soLuong);
			sopage = new int[soLuongPage];
			for(int i =0; i <sopage.length;i++) {
				sopage[i] = i+1;
			}
			danhSachPhongForm.setMaxPage(soLuongPage);
		}else {
			KhachSan khachSan = khachSanBO.getKhachSanByMaKS(danhSachPhongForm.getMaKS());
			danhSachPhongForm.setTenKS(khachSan.getTenKS());
			int soLuong=4;
			int countRowPhong = phongBO.countRowPhongByMaKS(danhSachPhongForm.getMaKS());
			int soLuongPage;
			if(countRowPhong%soLuong==0) {
				soLuongPage = countRowPhong/soLuong;
			}else {
				soLuongPage = (countRowPhong/soLuong) +1;
			}
			if(danhSachPhongForm.getPageHT()!=0) {
				pageht = danhSachPhongForm.getPageHT();
			}
			listPhong = phongBO.getLisMachinePageWhereMaKS(pageht, soLuong, danhSachPhongForm.getMaKS());
			sopage = new int[soLuongPage];
			for(int i =0; i <sopage.length;i++) {
				sopage[i] = i+1;
			}
			danhSachPhongForm.setMaxPage(soLuongPage);
		}
		danhSachPhongForm.setPageHT(pageht);
		danhSachPhongForm.setSoLuongPage(sopage);
		danhSachPhongForm.setListPhong(listPhong);
		return mapping.findForward("danhSachPhong");
		
		
	}

	
	
}
