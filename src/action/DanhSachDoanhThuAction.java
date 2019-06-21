package action;

import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import common.Common;
import form.DanhSachDoanhThuForm;
import model.bean.DoanhThu;
import model.bean.KhachSan;
import model.bo.DoanhThuBO;
import model.bo.KhachSanBO;

public class DanhSachDoanhThuAction extends Action {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		DanhSachDoanhThuForm danhSachDoanhThuForm = (DanhSachDoanhThuForm) form;
		KhachSanBO khachSanBO = new KhachSanBO();
		ArrayList<KhachSan> listKS = khachSanBO.getListKhachSan();
		DoanhThuBO doanhThuBO = new DoanhThuBO();
		ArrayList<DoanhThu> listDoanhThu = null;
		
		
		if(danhSachDoanhThuForm.getMaKS()==null || danhSachDoanhThuForm.getMaKS().length()==0) {
			
			if(danhSachDoanhThuForm.getNgayDenChon()!=null &&danhSachDoanhThuForm.getNgayDiChon()!=null) {
				Date ngayDenChon = Common.convertToDateSql(Common.convertToDate(danhSachDoanhThuForm.getNgayDenChon()));
				Date ngayDiChon = Common.convertToDateSql(Common.convertToDate(danhSachDoanhThuForm.getNgayDiChon()));
				listDoanhThu = doanhThuBO.getListDoanhThuByDate(ngayDenChon, ngayDiChon);
			}else {
				listDoanhThu = doanhThuBO.getListDOanhThu();
			}
		}else {
			
			if(danhSachDoanhThuForm.getNgayDenChon()!=null &&danhSachDoanhThuForm.getNgayDiChon()!=null) {
				Date ngayDenChon = Common.convertToDateSql(Common.convertToDate(danhSachDoanhThuForm.getNgayDenChon()));
				Date ngayDiChon = Common.convertToDateSql(Common.convertToDate(danhSachDoanhThuForm.getNgayDiChon()));
				listDoanhThu = doanhThuBO.getListDoanhThuByMaKSByDate(danhSachDoanhThuForm.getMaKS(), ngayDenChon, ngayDiChon);
			}else {
				listDoanhThu = doanhThuBO.getListDoanhThuByMaKS(danhSachDoanhThuForm.getMaKS());
				
			}
			KhachSan khachSan = khachSanBO.getKhachSanByMaKS(danhSachDoanhThuForm.getMaKS());
			danhSachDoanhThuForm.setTenKS(khachSan.getTenKS());
		}
		danhSachDoanhThuForm.setListDoanhThu(listDoanhThu);
		danhSachDoanhThuForm.setListKhachSan(listKS);
		
		return mapping.findForward("dsDoanhThu");
	}

	
	
}
