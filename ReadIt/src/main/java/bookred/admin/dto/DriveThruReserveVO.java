package bookred.admin.dto;

import java.util.Date;

public class DriveThruReserveVO {
	
	//드라이브스루. 준비완료된 도서 정보 조회 전용 VO
	
	private int book_no;
	private String book_title;
	private String book_author;
	private String book_publisher;
	private Date rm_date;
	private Date want_date;
	
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
	public Date getRm_date() {
		return rm_date;
	}
	public void setRm_date(Date rm_date) {
		this.rm_date = rm_date;
	}
	public Date getWant_date() {
		return want_date;
	}
	public void setWant_date(Date want_date) {
		this.want_date = want_date;
	}
	@Override
	public String toString() {
		return "DriveThruReserveVO [book_no=" + book_no + ", book_title=" + book_title + ", book_author=" + book_author
				+ ", book_publisher=" + book_publisher + ", rm_date=" + rm_date + ", want_date=" + want_date + "]";
	}
	

}
