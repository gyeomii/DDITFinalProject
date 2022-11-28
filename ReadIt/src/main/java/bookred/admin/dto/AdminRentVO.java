package bookred.admin.dto;

import java.util.Date;
import java.util.List;

public class AdminRentVO {
	private int rm_no;
	private int rent_code;
	private String mem_id;
	private String isbn;
	private Date want_date;
	private int rent_status;
	private String etc;
	private String book_title;
	private String location;
	private int book_no;
	
	public int getBook_no() {
		return book_no;
	}
	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public int getRm_no() {
		return rm_no;
	}
	public void setRm_no(int rm_no) {
		this.rm_no = rm_no;
	}
	public int getRent_code() {
		return rent_code;
	}
	public void setRent_code(int rent_code) {
		this.rent_code = rent_code;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public Date getWant_date() {
		return want_date;
	}
	public void setWant_date(Date want_date) {
		this.want_date = want_date;
	}
	public int getRent_status() {
		return rent_status;
	}
	public void setRent_status(int rent_status) {
		this.rent_status = rent_status;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	
	
}
