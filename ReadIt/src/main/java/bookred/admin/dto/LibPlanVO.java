package bookred.admin.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

public class LibPlanVO {
	private int lp_no;
	private String lp_start;
	private String lp_end;
	private String lp_isclosed;
	private String lp_isshow;
	private String lp_name;
	private String mem_id;
	
	
	
	public String getLp_name() {
		return lp_name;
	}
	public void setLp_name(String lp_name) {
		this.lp_name = lp_name;
	}
	public int getLp_no() {
		return lp_no;
	}
	public void setLp_no(int lp_no) {
		this.lp_no = lp_no;
	}
	public String getLp_start() {
		return lp_start;
	}	
	public void setLp_start(String lp_start) {
		this.lp_start = lp_start;
	}
	public String getLp_end() {
		return lp_end;
	}
	public void setLp_end(String lp_end) {
		this.lp_end = lp_end;
	}
	public String getLp_isclosed() {
		return lp_isclosed;
	}
	public void setLp_isclosed(String lp_isclosed) {
		this.lp_isclosed = lp_isclosed;
	}
	public String getLp_isshow() {
		return lp_isshow;
	}
	public void setLp_isshow(String lp_isshow) {
		this.lp_isshow = lp_isshow;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	
	

}
