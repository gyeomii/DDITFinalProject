package bookred.book.dto;

import java.util.Date;
import java.util.List;

public class BookVO {

	private int book_no;
	private String book_title;
	private String book_author;
	private String book_publisher;
	private int book_publishDate;
	private String book_isbn;
	private String book_imgURL;
	private int kdc_no;
	private int state_code=1;
	private Date book_regDate = new Date();
	private List<BookVO> sameBookList ;
	private String kdc_cri;
	
	
//	도서 이용가능 
	private int book_count;
	private int book_rentable;
	private int avg_rev;
		
//	도서 위치	
	
	private String room;
	private String sector;
	private String call_number;
	
	
	
	
	public String getRoom() {
		return room;
	}

	public void setRoom(String room) {
		this.room = room;
	}

	public String getSector() {
		return sector;
	}

	public void setSector(String sector) {
		this.sector = sector;
	}

	public String getCall_number() {
		return call_number;
	}

	public void setCall_number(String call_number) {
		this.call_number = call_number;
	}

	public int getAvg_rev() {
		return avg_rev;
	}

	public void setAvg_rev(int avg_rev) {
		this.avg_rev = avg_rev;
	}

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

	public String getKdc_cri() {
		return kdc_cri;
	}

	public void setKdc_cri(String kdc_cri) {
		this.kdc_cri = kdc_cri;
	}

	public List<BookVO> getSameBookList() {
		return sameBookList;
	}

	public void setSameBookList(List<BookVO> sameBookList) {
		this.sameBookList = sameBookList;
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

	public int getKdc_no() {
		return kdc_no;
	}

	public void setKdc_no(int kdc_no) {
		this.kdc_no = kdc_no;
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

}
