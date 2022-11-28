package bookred.member.dto;

import java.util.Date;


public class RMVO {
	
	private	int rm_no;
	private Date rm_date = new Date();
	private	Date want_date = new Date();
	private	String mem_id;
	private	int rent_code;
	private	int rent_status;
	private String hiredate;
	private String isbn;
	private String mem_name; //추가
	
	private int cnt_no;
	// 배송예정일
	private Date dv_date;
	
	// 차량번호
	private String dt_car_no;	
	
	// 사물함 번호
	private String locker_num;
	
	
	
	public Date getDv_date() {
		return dv_date;
	}
	public void setDv_date(Date dv_date) {
		this.dv_date = dv_date;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getHiredate() {
		return hiredate;
	}
	public void setHiredate(String hiredate) {
		this.hiredate = hiredate;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	// 예약 방법별 데이터

	
	public Date getRm_date() {
		return rm_date;
	}
	public void setRm_date(Date rm_date) {
		this.rm_date = rm_date;
	}
	public String getDt_car_no() {
		return dt_car_no;
	}
	public void setDt_car_no(String dt_car_no) {
		this.dt_car_no = dt_car_no;
	}
	public String getLocker_num() {
		return locker_num;
	}
	public void setLocker_num(String locker_num) {
		this.locker_num = locker_num;
	}
	public int getRent_status() {
		return rent_status;
	}
	public void setRent_status(int rent_status) {
		this.rent_status = rent_status;
	}
	public int getRm_no() {
		return rm_no;
	}
	public void setRm_no(int rm_no) {
		this.rm_no = rm_no;
	}
	public Date getWant_date() {
		return want_date;
	}
	public void setWant_date(Date want_date) {
		this.want_date = want_date;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getRent_code() {
		return rent_code;
	}
	public void setRent_code(int rent_code) {
		this.rent_code = rent_code;
		
	}
	public int getCnt_no() {
		return cnt_no;
	}
	public void setCnt_no(int cnt_no) {
		this.cnt_no = cnt_no;
	}
	@Override
	public String toString() {
		return "RMVO [rm_no=" + rm_no + ", rm_date=" + rm_date + ", want_date=" + want_date + ", mem_id=" + mem_id
				+ ", rent_code=" + rent_code + ", rent_status=" + rent_status + ", hiredate=" + hiredate + ", isbn="
				+ isbn + ", mem_name=" + mem_name + ", cnt_no=" + cnt_no + ", dv_date=" + dv_date + ", dt_car_no="
				+ dt_car_no + ", locker_num=" + locker_num + ", getDv_date()=" + getDv_date() + ", getIsbn()="
				+ getIsbn() + ", getHiredate()=" + getHiredate() + ", getMem_name()=" + getMem_name()
				+ ", getRm_date()=" + getRm_date() + ", getDt_car_no()=" + getDt_car_no() + ", getLocker_num()="
				+ getLocker_num() + ", getRent_status()=" + getRent_status() + ", getRm_no()=" + getRm_no()
				+ ", getWant_date()=" + getWant_date() + ", getMem_id()=" + getMem_id() + ", getRent_code()="
				+ getRent_code() + ", getCnt_no()=" + getCnt_no() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}
	

	
	
	

}
