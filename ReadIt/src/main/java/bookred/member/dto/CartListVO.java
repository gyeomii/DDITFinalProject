package bookred.member.dto;

import java.util.Date;

public class CartListVO {
	
	private int cart_no;
	private String mem_id;
	private int book_no;
	private String book_title = "";
	private String book_author = "";
	private String book_publisher = "";
	private int book_publishDate = 0;
	private String book_isbn = "";
	private String book_imgURL = "";
	private int kdc_no = 0;
	private int state_code = 1;
	private int book_count;
	private int book_rentable;
	
	

	public int getBook_count() {
		return book_count;
	}
	public void setBook_count(int book_count) {
		this.book_count = book_count;
	}
	public int getBook_rentable() {
		return book_rentable;
	}
	public void setBook_rentable(int book_rentable) {
		this.book_rentable = book_rentable;
	}
	private Date book_regDate = new Date();
	
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
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
	public String getBook_publisher() {
		return book_publisher;
	}
	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}
	public int getBook_publishDate() {
		return book_publishDate;
	}
	public void setBook_publishDate(int book_publishDate) {
		this.book_publishDate = book_publishDate;
	}
	public String getBook_isbn() {
		return book_isbn;
	}
	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}
	public String getBook_imgURL() {
		return book_imgURL;
	}
	public void setBook_imgURL(String book_imgURL) {
		this.book_imgURL = book_imgURL;
	}
	public int getKdc_no() {
		return kdc_no;
	}
	public void setKdc_no(int kdc_no) {
		this.kdc_no = kdc_no;
	}
	public int getState_code() {
		return state_code;
	}
	public void setState_code(int state_code) {
		this.state_code = state_code;
	}
	public Date getBook_regDate() {
		return book_regDate;
	}
	public void setBook_regDate(Date book_regDate) {
		this.book_regDate = book_regDate;
	}
	@Override
	public String toString() {
		return "CartListVO [cart_no=" + cart_no + ", mem_id=" + mem_id + ", book_no=" + book_no + ", book_title="
				+ book_title + ", book_author=" + book_author + ", book_publisher=" + book_publisher
				+ ", book_publishDate=" + book_publishDate + ", book_isbn=" + book_isbn + ", book_imgURL=" + book_imgURL
				+ ", kdc_no=" + kdc_no + ", state_code=" + state_code + ", book_regDate=" + book_regDate + "]";
	}

	

	

}
