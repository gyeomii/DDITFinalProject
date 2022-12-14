package bookred.book.dto;

import java.util.Date;

public class WishBookVO {
	private int wb_no;
	private String mem_id;
	private String wish_title;
	private String wish_author;
	private String wish_publisher;
	private String isbn;
	private int publishdate;
	private Date wish_regdate = new Date();
	private int wish_state = 0;
	private String book_imgurl;
	
	private String book_isbn;
	
	
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	public int getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(int publishdate) {
		this.publishdate = publishdate;
	}
	public int getWish_state() {
		return wish_state;
	}
	public void setWish_state(int wish_state) {
		this.wish_state = wish_state;
	}
	public int getWb_no() {
		return wb_no;
	}
	public void setWb_no(int wb_no) {
		this.wb_no = wb_no;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getWish_title() {
		return wish_title;
	}
	public void setWish_title(String wish_title) {
		this.wish_title = wish_title;
	}
	public String getWish_author() {
		return wish_author;
	}
	public void setWish_author(String wish_author) {
		this.wish_author = wish_author;
	}
	public String getWish_publisher() {
		return wish_publisher;
	}
	public void setWish_publisher(String wish_publisher) {
		this.wish_publisher = wish_publisher;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public Date getWish_regdate() {
		return wish_regdate;
	}
	public void setWish_regdate(Date wish_regdate) {
		this.wish_regdate = wish_regdate;
	}
	public String getBook_imgurl() {
		return book_imgurl;
	}
	public void setBook_imgurl(String book_imgurl) {
		this.book_imgurl = book_imgurl;
	}
	
	
	
}
