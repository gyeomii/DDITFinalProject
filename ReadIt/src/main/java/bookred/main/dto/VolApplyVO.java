package bookred.main.dto;

import java.util.Date;

public class VolApplyVO {

	
	private int va_no;
	private String mem_id;
	private Date va_regdate;
	private String is_approved;
	private String is_join;
	private int vb_no;
	
	
	public int getVa_no() {
		return va_no;
	}
	public void setVa_no(int va_no) {
		this.va_no = va_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public Date getVa_regdate() {
		return va_regdate;
	}
	public void setVa_regdate(Date va_regdate) {
		this.va_regdate = va_regdate;
	}
	public String getIs_approved() {
		return is_approved;
	}
	public void setIs_approved(String is_approved) {
		this.is_approved = is_approved;
	}
	public String getIs_join() {
		return is_join;
	}
	public void setIs_join(String is_join) {
		this.is_join = is_join;
	}
	public int getVb_no() {
		return vb_no;
	}
	public void setVb_no(int vb_no) {
		this.vb_no = vb_no;
	}
	
	@Override
	public String toString() {
		return "VolApplyVO [va_no=" + va_no + ", mem_id=" + mem_id + ", va_regdate=" + va_regdate + ", is_approved="
				+ is_approved + ", is_join=" + is_join + ", vb_no=" + vb_no + "]";
	}
	
}
