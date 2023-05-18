package ptithcm.entity;

import java.util.Collection;
import java.sql.Date;

import javax.persistence.*;


@Entity
@Table(name="TKGV")
public class TKGVE {
	@Id
	@Column(name="TK")
	private String TK;
	@Column(name="MK")
	private String MK;
	
	@OneToOne
	@PrimaryKeyJoinColumn(name = "TK")
	private GiangVienE GiangVienE;


	public String getTK() {
		return TK;
	}

	public void setTK(String tK) {
		TK = tK;
	}

	public String getMK() {
		return MK;
	}

	public void setMK(String mK) {
		MK = mK;
	}

	public GiangVienE getGiangVienE() {
		return GiangVienE;
	}

	public void setGiangVienE(GiangVienE giangVienE) {
		GiangVienE = giangVienE;
	}


}
