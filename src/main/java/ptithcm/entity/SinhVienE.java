package ptithcm.entity;

import java.util.Collection;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="SINHVIEN")
public class SinhVienE {
	@Id
	@Column(name="MaSV")
	private String MaSV ;
	@Column(name="HoSV")
	private String HoSV;
	@Column(name="TenSV")
	private String TenSV;
	@Column(name="Phai")
	private boolean Phai;
	@Column(name="DiaChi")
	private String DiaChi;
	@Column(name="NgaySinh")
	private Date NgaySinh;
	@Column(name="KhoaHoc")
	private String KhoaHoc;
	@Column(name="MaLop")
	private String MaLop;
	
	@ManyToOne
	@JoinColumn(name="MaLop",insertable=false, updatable=false)
	private LopE LopE;
	
	@OneToMany(mappedBy = "MaSV", fetch = FetchType.EAGER)
	private Collection<DangKiLTCE> DangKiLTCE;
	public String getMaSV() {
		return MaSV;
	}
	public void setMaSV(String maSV) {
		MaSV = maSV;
	}
	public String getHoSV() {
		return HoSV;
	}
	public void setHoSV(String hoSV) {
		HoSV = hoSV;
	}
	public String getTenSV() {
		return TenSV;
	}
	public void setTenSV(String tenSV) {
		TenSV = tenSV;
	}
	public boolean isPhai() {
		return Phai;
	}
	public void setPhai(boolean phai) {
		Phai = phai;
	}
	public Collection<DangKiLTCE> getDangKiLTCE() {
		return DangKiLTCE;
	}
	public void setDangKiLTCE(Collection<DangKiLTCE> dangKiLTCE) {
		DangKiLTCE = dangKiLTCE;
	}
	public String getDiaChi() {
		return DiaChi;
	}
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	public Date getNgaySinh() {
		return NgaySinh;
	}
	public void setNgaySinh(Date ngaySinh) {
		NgaySinh = ngaySinh;
	}
	public String getKhoaHoc() {
		return KhoaHoc;
	}
	public void setKhoaHoc(String khoaHoc) {
		KhoaHoc = khoaHoc;
	}
	public String getMaLop() {
		return MaLop;
	}
	public void setMaLop(String maLop) {
		MaLop = maLop;
	}
	public LopE getLopE() {
		return LopE;
	}
	public void setLopE(LopE lopE) {
		LopE = lopE;
	}
	
}
