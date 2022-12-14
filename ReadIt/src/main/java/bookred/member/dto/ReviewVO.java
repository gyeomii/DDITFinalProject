package bookred.member.dto;

import java.util.Date;

public class ReviewVO {
	
	private	int rent_no;
	private	int rent_no_1;
	private	int book_no;
	private	String mem_id;
	private	String book_title;
	private	String book_author;
	private	String book_imgurl;
	private	String book_isbn;
	private	String book_publisher;
	private	String is_return;
	private	int rev_no;
	private	int rev_grade;
	private	String rev_content;
	private	Date rev_regdate = new Date();
	private	Date rev_updatedate ;
	private	Date rent_date = new Date();
	private	String keyword;
	private	Date return_date  = new Date();
	private	int rm_no;
	
	//isbn별 평점
	private int avg_rev;
	
	
	
	public String getBook_publisher() {
		return book_publisher;
	}
	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	public Date getRent_date() {
		return rent_date;
	}
	public void setRent_date(Date rent_date) {
		this.rent_date = rent_date;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public int getRent_no() {
		return rent_no;
	}
	public void setRent_no(int rent_no) {
		this.rent_no = rent_no;
	}
	public int getRent_no_1() {
		return rent_no_1;
	}
	public void setRent_no_1(int rent_no_1) {
		this.rent_no_1 = rent_no_1;
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
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public String getBook_imgurl() {
		return book_imgurl;
	}
	public void setBook_imgurl(String book_imgurl) {
		this.book_imgurl = book_imgurl;
	}
	public String getIs_return() {
		return is_return;
	}
	public void setIs_return(String is_return) {
		this.is_return = is_return;
	}
	public int getRev_no() {
		return rev_no;
	}
	public void setRev_no(int rev_no) {
		this.rev_no = rev_no;
	}
	public int getRev_grade() {
		return rev_grade;
	}
	public void setRev_grade(int rev_grade) {
		this.rev_grade = rev_grade;
	}
	public String getRev_content() {
		return rev_content;
	}
	public void setRev_content(String rev_content) {
		this.rev_content = rev_content;
	}
	public Date getRev_regdate() {
		return rev_regdate;
	}
	public void setRev_regdate(Date rev_regdate) {
		this.rev_regdate = rev_regdate;
	}
	public Date getRev_updatedate() {
		return rev_updatedate;
	}
	public void setRev_updatedate(Date rev_updatedate) {
		this.rev_updatedate = rev_updatedate;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
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
	public int getAvg_rev() {
		return avg_rev;
	}
	public void setAvg_rev(int avg_rev) {
		this.avg_rev = avg_rev;
	}
	
	
	
	
	

}
