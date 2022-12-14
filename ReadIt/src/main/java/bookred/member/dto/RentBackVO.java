package bookred.member.dto;

import java.util.Date;

public class RentBackVO {
	
	private	int rent_no;
	private	Date rent_date = new Date();
	private	Date due_date;
	private	int is_delay;
	private	String is_return;
	private	Date return_date;
	private	int rm_no;
	private	int book_no;
	private	String mem_id;
	private String isbn;
	private	String book_title;
	private	String book_author;
	private	String book_isbn;
	private	String book_imgurl;
	private int kdc_no;
	
	private	String book_publisher;
	private	int book_publishdate;
	private	String state_code;
	
	private int book_rentable;
	private String is_overdue;
	
	
	
	public String getIs_overdue() {
		return is_overdue;
	}
	public void setIs_overdue(String is_overdue) {
		this.is_overdue = is_overdue;
	}
	public int getKdc_no() {
		return kdc_no;
	}
	public void setKdc_no(int kdc_no) {
		this.kdc_no = kdc_no;
	}
	public int getBook_rentable() {
		return book_rentable;
	}
	public void setBook_rentable(int book_rentable) {
		this.book_rentable = book_rentable;
	}
	public String getBook_publisher() {
		return book_publisher;
	}
	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}
	public int getBook_publishdate() {
		return book_publishdate;
	}
	public void setBook_publishdate(int book_publishdate) {
		this.book_publishdate = book_publishdate;
	}
	public String getState_code() {
		return state_code;
	}
	public void setState_code(String state_code) {
		this.state_code = state_code;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	public String getBook_imgurl() {
		return book_imgurl;
	}
	public void setBook_imgurl(String book_imgurl) {
		this.book_imgurl = book_imgurl;
	}
	public int getRent_no() {
		return rent_no;
	}
	public void setRent_no(int rent_no) {
		this.rent_no = rent_no;
	}
	public Date getRent_date() {
		return rent_date;
	}
	public void setRent_date(Date rent_date) {
		this.rent_date = rent_date;
	}
	public Date getDue_date() {
		return due_date;
	}
	public void setDue_date(Date due_date) {
		this.due_date = due_date;
	}
	public int getIs_delay() {
		return is_delay;
	}
	public void setIs_delay(int is_delay) {
		this.is_delay = is_delay;
	}
	public String getIs_return() {
		return is_return;
	}
	public void setIs_return(String is_return) {
		this.is_return = is_return;
	}
	public Date getReturn_date() {
		return return_date;
	}
	public void setReturn_date(Date return_date) {
		this.return_date = return_date;
	}
	public int getRm_no() {
		return rm_no;
	}
	public void setRm_no(int rm_no) {
		this.rm_no = rm_no;
	}
	public int getBook_no() {
		return book_no;
	}
	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	

	

}
