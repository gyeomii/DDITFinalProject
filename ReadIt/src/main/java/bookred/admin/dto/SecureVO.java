package bookred.admin.dto;

import java.util.Date;

public class SecureVO {
	private int sc_no;
	private Date sc_in;
	private Date sc_out;
	private String sc_name;
	private String mem_id;
	private String mem_name;
	
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public int getSc_no() {
		return sc_no;
	}
	public void setSc_no(int sc_no) {
		this.sc_no = sc_no;
	}
	public Date getSc_in() {
		return sc_in;
	}
	public void setSc_in(Date sc_in) {
		this.sc_in = sc_in;
	}
	public Date getSc_out() {
		return sc_out;
	}
	public void setSc_out(Date sc_out) {
		this.sc_out = sc_out;
	}
	public String getSc_name() {
		return sc_name;
	}
	public void setSc_name(String sc_name) {
		this.sc_name = sc_name;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
}
