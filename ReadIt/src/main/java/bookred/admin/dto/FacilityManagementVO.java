package bookred.admin.dto;

public class FacilityManagementVO {

	
	private int fr_no;
	private String mem_id;
	private String fac_code;
	private String fr_day;
	private int fr_hour;
	private int fr_seat;
	private String fr_text;
	private String fr_capability;
	private String mem_phone;
	private String mem_name;
	private String roomNum;

	private int fr_hour_end;

	public int getFr_no() {
		return fr_no;
	}

	public void setFr_no(int fr_no) {
		this.fr_no = fr_no;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getFac_code() {
		return fac_code;
	}

	public void setFac_code(String fac_code) {
		this.fac_code = fac_code;
	}

	public String getFr_day() {
		return fr_day;
	}

	public void setFr_day(String fr_day) {
		this.fr_day = fr_day;
	}

	public int getFr_hour() {
		return fr_hour;
	}

	public void setFr_hour(int fr_hour) {
		this.fr_hour = fr_hour;
	}

	public int getFr_seat() {
		return fr_seat;
	}

	public void setFr_seat(int fr_seat) {
		this.fr_seat = fr_seat;
	}

	public String getFr_text() {
		return fr_text;
	}

	public void setFr_text(String fr_text) {
		this.fr_text = fr_text;
	}

	public String getFr_capability() {
		return fr_capability;
	}

	public void setFr_capability(String fr_capability) {
		this.fr_capability = fr_capability;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public int getFr_hour_end() {
		return fr_hour_end;
	}

	public void setFr_hour_end(int fr_hour_end) {
		this.fr_hour_end = fr_hour_end;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getRoomNum() {
		return roomNum;
	}

	public void setRoomNum(String roomNum) {
		this.roomNum = roomNum;
	}

	@Override
	public String toString() {
		return "FacilityManagementVO [fr_no=" + fr_no + ", mem_id=" + mem_id + ", fac_code=" + fac_code + ", fr_day="
				+ fr_day + ", fr_hour=" + fr_hour + ", fr_seat=" + fr_seat + ", fr_text=" + fr_text + ", fr_capability="
				+ fr_capability + ", mem_phone=" + mem_phone + ", mem_name=" + mem_name + ", roomNum=" + roomNum
				+ ", fr_hour_end=" + fr_hour_end + "]";
	}

	
	
}
