package bookred.admin.dto;

import java.util.Date;

public class StupidBookVO {
	private int sb_no;
	private String ad_id;
	private String sb_location;
	private String move_location;
	private int sb_isdone;
	private Date sb_regdate;
	private int book_kdc;
	
	public String getMove_location() {
		return move_location;
	}
	public void setMove_location(String move_location) {
		this.move_location = move_location;
	}
	public int getSb_no() {
		return sb_no;
	}
	public void setSb_no(int sb_no) {
		this.sb_no = sb_no;
	}
	public String getAd_id() {
		return ad_id;
	}
	public void setAd_id(String ad_id) {
		this.ad_id = ad_id;
	}
	public String getSb_location() {
		return sb_location;
	}
	public void setSb_location(String sb_location) {
		this.sb_location = sb_location;
	}
	public int getSb_isdone() {
		return sb_isdone;
	}
	public void setSb_isdone(int sb_isdone) {
		this.sb_isdone = sb_isdone;
	}
	public Date getSb_regdate() {
		return sb_regdate;
	}
	public void setSb_regdate(Date sb_regdate) {
		this.sb_regdate = sb_regdate;
	}
	public int getBook_kdc() {
		return book_kdc;
	}
	public void setBook_kdc(int book_kdc) {
		this.book_kdc = book_kdc;
	}
	
	
}
