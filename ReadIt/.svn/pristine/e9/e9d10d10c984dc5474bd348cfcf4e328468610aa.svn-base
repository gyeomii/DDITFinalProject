package bookred.member.dto;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class RentBookVO {
	
	private String mem_id;
	private int book_no;
	private int rent_no;
	private int rm_no;
	private	Date rent_date = new Date();
	private	Date return_date = new Date();
	private	String due_date;
	
	private	String is_return;
	private	String book_title;
	private	String book_author;
	private	String book_isbn;
	private	String book_imgurl;
	private	int book_publishdate;
	private	String book_publisher;
	
	private String is_overdue;

	
	public String getIs_overdue() {
		return is_overdue;
	}
	public void setIs_overdue(String is_overdue) {
		this.is_overdue = is_overdue;
	}
	public int getBook_publishdate() {
		return book_publishdate;
	}
	public void setBook_publishdate(int book_publishdate) {
		this.book_publishdate = book_publishdate;
	}
	public String getBook_publisher() {
		return book_publisher;
	}
	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}
	public String getDue_date() {
		return due_date;
	}
	public void setDue_date(String due_date) {
		this.due_date = due_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getBook_no() {
		return book_no;
	}
	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}
	public int getRent_no() {
		return rent_no;
	}
	public void setRent_no(int rent_no) {
		this.rent_no = rent_no;
	}
	public int getRm_no() {
		return rm_no;
	}
	public void setRm_no(int rm_no) {
		this.rm_no = rm_no;
	}
	public Date getRent_date() {
		return rent_date;
	}
	public void setRent_date(Date rent_date) {
		this.rent_date = rent_date;
	}
	public Date getReturn_date() {
		return return_date;
	}
	public void setReturn_date(Date return_date) {
		this.return_date = return_date;
	}
	public String getIs_return() {
		return is_return;
	}
	public void setIs_return(String is_return) {
		this.is_return = is_return;
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
	
	public RentBackVO toRentBackVO() throws ParseException {
		RentBackVO rentBack = new RentBackVO();
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		rentBack.setDue_date(format.parse(this.due_date));
		
		
		return rentBack;
	}
	
}






