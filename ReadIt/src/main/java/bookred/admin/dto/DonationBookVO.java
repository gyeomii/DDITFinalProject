package bookred.admin.dto;

import java.util.Date;

public class DonationBookVO {
	
	private int book_no;
	private String book_isbn;
	private String book_title;
	private String book_publisher;
	private String book_author;
	private int book_publishdate;
	private String book_imgurl;
	private String book_keyword;
	private int state_code;
	private Date book_regDate = new Date();
	
	private String donator_id = "";
	private String donator_name  = "";
	
	private int nb_no;

	public int getBook_no() {
		return book_no;
	}

	public void setBook_no(int book_no) {
		this.book_no = book_no;
	}

	public String getBook_isbn() {
		return book_isbn;
	}

	public void setBook_isbn(String book_isbn) {
		this.book_isbn = book_isbn;
	}

	public String getBook_title() {
		return book_title;
	}

	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}

	public String getBook_publisher() {
		return book_publisher;
	}

	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}

	public String getBook_author() {
		return book_author;
	}

	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}

	public int getBook_publishdate() {
		return book_publishdate;
	}

	public void setBook_publishdate(int book_publishdate) {
		this.book_publishdate = book_publishdate;
	}

	public String getBook_imgurl() {
		return book_imgurl;
	}

	public void setBook_imgurl(String book_imgurl) {
		this.book_imgurl = book_imgurl;
	}

	public String getBook_keyword() {
		return book_keyword;
	}

	public void setBook_keyword(String book_keyword) {
		this.book_keyword = book_keyword;
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

	public int getNb_no() {
		return nb_no;
	}

	public void setNb_no(int nb_no) {
		this.nb_no = nb_no;
	}

	public String getDonator_id() {
		return donator_id;
	}

	public void setDonator_id(String donator_id) {
		this.donator_id = donator_id;
	}

	public String getDonator_name() {
		return donator_name;
	}

	public void setDonator_name(String donator_name) {
		this.donator_name = donator_name;
	}
	
	
	
	
	
	
	
	

}
