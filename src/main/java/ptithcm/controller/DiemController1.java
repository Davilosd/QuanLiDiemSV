package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.*;

@Controller
@Transactional
@RequestMapping("nhapdiem/")
public class DiemController1 {
	@Autowired
	SessionFactory factory;
	@RequestMapping("dsltc_a")// neu la quyen admin
	public String showFormSV() {
		return "nhapdiem/danhsach";
	}
	@RequestMapping("danhsach")
		public String SSV(HttpServletRequest request, ModelMap model) {
		String searchInput = request.getParameter("searchInput");
			Session session=factory.getCurrentSession();
	    	String hql="From LopTinChiE where MaLTC =:searchInput";
	    	Query query =session.createQuery(hql);
	    	query.setParameter("searchInput",searchInput);
	    	List<LopTinChiE> list= query.list();
		
	    		if(list.isEmpty()) {
				request.setAttribute("message", "Khong tim thay");
				return "nhapdiem/danhsach";
			}

	    	model.addAttribute("searchltc",list);
			return "nhapdiem/danhsach";
		}
	
	
	
    @RequestMapping(value = "nhap")
    public String update1(HttpServletRequest request, ModelMap model) {
    	String searchInput = request.getParameter("searchInput");
		/*Session session=factory.getCurrentSession();
    	String hql="From DangKiLTCE where MaLTC =:searchInput";
    	Query query =session.createQuery(hql);
    	query.setParameter("searchInput",searchInput);
    	List<LopTinChiE> list= query.list();
		if(list.isEmpty()) {
			request.setAttribute("message", "Khong tim thay");
			return "nhapdiem/nhap";
		}*/
		
    	model.addAttribute("users",this.getltc(searchInput));
    	return "nhapdiem/nhap";
    }
    
    
    @RequestMapping(value ="nhap/{MaLTC}.htm",params="linkEdit")
    public String  edit(ModelMap model,@ModelAttribute("user") DangKiLTCE user,@PathVariable("MaLTC") String MaLTC) {
    	model.addAttribute("user",this.getltc(MaLTC));
    	return "nhapdiem/nhap";
    }
    
    @RequestMapping(value = "nhap.htm",params = "btnUpdate")
    public String update(ModelMap model,@ModelAttribute("user") DangKiLTCE user,HttpServletRequest request) {
    	
  /*  	String maltc = request.getParameter("maltc");
    	String masv = request.getParameter("masv");
    	String dcc = request.getParameter("dcc");
    	String dgk = request.getParameter("dgk");
    	String dthi = request.getParameter("dthi");
    	String huydk = request.getParameter("huydk");*/
    	
    	String[] maltc = request.getParameterValues("maltc");
    	String[] masv = request.getParameterValues("masv");
    	String[] dcc = request.getParameterValues("dcc");
    	String[] dgk = request.getParameterValues("dgk");
    	String[] dthi = request.getParameterValues("dthi");
    	String[] huydk = request.getParameterValues("huydk");
    	for (int i=0; i<masv.length;i++) {
    		DangKiLTCE sv = new DangKiLTCE();
    		sv.setMaLTC(maltc[i]);
        	sv.setMaSV(masv[i]);
    		sv.setDCC(Float.parseFloat(dcc[i]));
    		sv.setDGK(Float.parseFloat(dgk[i]));
    		sv.setDThi(Float.parseFloat(dthi[i]));
    		sv.setHuyDK(Boolean.parseBoolean(huydk[i]));
        	updateSV(sv,model);
    	}

    	//sv =user;
    	
    		//	sv = getsv(maltc,masv);
    		//	model.addAttribute("message2",dcc);
		
    	
    	model.addAttribute("users",this.getltc(maltc[0]));
    	return "nhapdiem/nhap";
    }
    
    public Integer updateSV(DangKiLTCE sv,ModelMap model) {
    	
    	Session session = factory.openSession();
    	Transaction t = session.beginTransaction();
    	try {
			session.update(sv);;
			t.commit();
			model.addAttribute("message","update thanh cong");
		} catch (Exception e) {
			// TODO: handle exception
			t.rollback();
			model.addAttribute("message","them moi that bai");
		}finally {
			session.close();
		}
    	return 1;
    }
    @RequestMapping(value = "update",params = "btnUpdate")
    public String update2(HttpServletRequest request) {
    	DangKiLTCE dangKiLTCE = new DangKiLTCE();
    	String[] MaLTC = request.getParameterValues("maltc");
    	String[] MaSV = request.getParameterValues("masv");
    	String[] dcc = request.getParameterValues("dcc");
    	String[] dgk = request.getParameterValues("dgk");
    	for(int i = 0; i < MaLTC.length;i++) {



    	}
    	return "nhapdiem/nhap";
    }
    public List<DangKiLTCE> getltc(String maLTC) {
    	Session currentsession=factory.getCurrentSession();
    	String hql="From DangKiLTCE where MaLTC =:maLTC";
    	Query query=currentsession.createQuery(hql);
    	query.setParameter("maLTC",maLTC);
    	List<DangKiLTCE> list= query.list();
    	return list;
    }
    public List<DangKiLTCE> getltc0() {
    	Session currentsession=factory.getCurrentSession();
    	String hql="FROM DangKiLTCE";
    	Query query=currentsession.createQuery(hql);
    	List<DangKiLTCE> list=query.list();
    	return list;
    }
    public DangKiLTCE getsv(String maLTC, String maSV ) {
    	Session currentsession=factory.getCurrentSession();
    	String hql="From DangKiLTCE where MaSV =:maSV and MaLTC =:maLTC";
    	Query query=currentsession.createQuery(hql);
    	query.setParameter("maSV",maSV);
    	query.setParameter("maLTC",maLTC);
    	DangKiLTCE list= (DangKiLTCE) query.list().get(0); 
    	return list;
    }
}
