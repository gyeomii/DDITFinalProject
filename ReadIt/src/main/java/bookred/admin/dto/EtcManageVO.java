package bookred.admin.dto;

import java.util.Date;

public class EtcManageVO {
	private int state_code;
	private String state_name;
	private String book_imgurl;
	private String book_title;
	private String book_author;
	
	private String book_isbn;


	public int getState_code() {
		return state_code;
	}

	public void setState_code(int state_code) {
		this.state_code = state_code;
	}

	public String getState_name() {
		return state_name;
	}

	public void setState_name(String state_name) {
		this.state_name = state_name;
	}

	public String getBook_imgurl() {
		return book_imgurl;
	}

	public void setBook_imgurl(String book_imgurl) {
		this.book_imgurl = book_imgurl;
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
	
	

}
