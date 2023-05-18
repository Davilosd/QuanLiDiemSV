package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.entity.*;

@Controller
@Transactional
@RequestMapping("login/")
public class LoginController {
	@Autowired
	SessionFactory factory;
	@RequestMapping("form")
	public String showForm() {
		return "login/loginn";
	}
	@RequestMapping("loginn")
		public String loginn(HttpServletRequest request) {
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			Session session=factory.getCurrentSession();
			String hql="From TKSVE where TK =:id and MK =:pw";
	    	String hql1="From TKGVE where TK =:id and MK =:pw";
	    	Query query =session.createQuery(hql);
	    	Query query1 =session.createQuery(hql1);
	    	query.setParameter("id",id);
	    	query.setParameter("pw",pw);
	    	query1.setParameter("id",id);
	    	query1.setParameter("pw",pw);
	    	List<TKSVE> list= query.list();
	    	List<TKGVE> list1= query1.list();
			if(list.isEmpty()) { 
				if(list1.isEmpty()) {
					request.setAttribute("message2", list);
					request.setAttribute("message", "Sai thong tin dang nhap");
					return "login/loginn";
				}
				//request.setAttribute("info", list);
				request.setAttribute("uid", id);
				request.setAttribute("info", this.getGV(id));
				return "login/thongtin_gv";
			}
			request.setAttribute("message2", list);
			//request.setAttribute("info", list);
			request.setAttribute("uid", id);
			request.setAttribute("pwd", pw);
			request.setAttribute("info", this.getsv(id));
			request.setAttribute("info_d", this.getDiem(id));
			return "login/info";
		}
	public SinhVienE getsv(String maSV ) {
    	Session currentsession=factory.getCurrentSession();
    	String hql="From SinhVienE where MaSV =:maSV";
    	Query query=currentsession.createQuery(hql);
    	query.setParameter("maSV",maSV);
    	SinhVienE list= (SinhVienE) query.list().get(0); 
    	return list;
    }
	public List<DangKiLTCE> getDiem(String maSV ) {
    	Session currentsession=factory.getCurrentSession();
    	String hql="From DangKiLTCE where MaSV =:maSV and HuyDK ='False'";
    	Query query=currentsession.createQuery(hql);
    	query.setParameter("maSV",maSV);
    	List<DangKiLTCE> list= query.list(); 
    	return list;
    }
	public GiangVienE getGV(String maGV ) {
    	Session currentsession=factory.getCurrentSession();
    	String hql="From GiangVienE where MaGV =:maGV";
    	Query query=currentsession.createQuery(hql);
    	query.setParameter("maGV",maGV);
    	GiangVienE list= (GiangVienE) query.list().get(0); 
    	return list;
    }
}
