package bookred.member.dto;

import java.util.Date;

public class MemberVO {
	private String mem_id; // 아이디
	private String authority; // 권한
	private String mem_pwd; // 패스워드
	private String mem_name = "---"; // 이름
	private int mem_age;
	private String mem_birth; //
	private String mem_phone; // 전화번호
	private String mem_addr; // 주소
	private String mem_img; // 사진
	private String mem_email; // 이메일
	private int mem_rank;//
	private String mem_cardCode; // 사진파일 경로/파일명
	private Date mem_joinDate;
	private Date mem_pwdUpdate;
	private String mem_isDrop; // 탈퇴여부
	private int mem_interest; // 
	private String mem_mbti; // 
	private String mem_car; // 
	private String mem_gender; //
	
	private int enabled; // 사용여부
	
	private int joincheck;
	
	private int RentBookCount;
	
	

	public int getRentBookCount() {
		return RentBookCount;
	}

	public void setRentBookCount(int rentBookCount) {
		RentBookCount = rentBookCount;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getMem_pwd() {
		return mem_pwd;
	}

	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public int getMem_age() {
		return mem_age;
	}

	public void setMem_age(int mem_age) {
		this.mem_age = mem_age;
	}

	public String getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(String mem_birth) {
		this.mem_birth = mem_birth;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public String getMem_addr() {
		return mem_addr;
	}

	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}

	public String getMem_img() {
		return mem_img;
	}

	public void setMem_img(String mem_img) {
		this.mem_img = mem_img;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public int getMem_rank() {
		return mem_rank;
	}

	public void setMem_rank(int mem_rank) {
		this.mem_rank = mem_rank;
	}

	public String getMem_cardCode() {
		return mem_cardCode;
	}

	public void setMem_cardCode(String mem_cardCode) {
		this.mem_cardCode = mem_cardCode;
	}

	public Date getMem_joinDate() {
		return mem_joinDate;
	}

	public void setMem_joinDate(Date mem_joinDate) {
		this.mem_joinDate = mem_joinDate;
	}

	public Date getMem_pwdUpdate() {
		return mem_pwdUpdate;
	}

	public void setMem_pwdUpdate(Date mem_pwdUpdate) {
		this.mem_pwdUpdate = mem_pwdUpdate;
	}

	public String getMem_isDrop() {
		return mem_isDrop;
	}

	public void setMem_isDrop(String mem_isDrop) {
		this.mem_isDrop = mem_isDrop;
	}

	public int getMem_interest() {
		return mem_interest;
	}

	public void setMem_interest(int mem_interest) {
		this.mem_interest = mem_interest;
	}

	public String getMem_mbti() {
		return mem_mbti;
	}

	public void setMem_mbti(String mem_mbti) {
		this.mem_mbti = mem_mbti;
	}

	public String getMem_car() {
		return mem_car;
	}

	public void setMem_car(String mem_car) {
		this.mem_car = mem_car;
	}

	public String getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public int getJoincheck() {
		return joincheck;
	}

	public void setJoincheck(int joincheck) {
		this.joincheck = joincheck;
	}

	@Override
	public String toString() {
		return "MemberVO [mem_id=" + mem_id + ", authority=" + authority + ", mem_pwd=" + mem_pwd + ", mem_name="
				+ mem_name + ", mem_age=" + mem_age + ", mem_birth=" + mem_birth + ", mem_phone=" + mem_phone
				+ ", mem_addr=" + mem_addr + ", mem_img=" + mem_img + ", mem_email=" + mem_email + ", mem_rank="
				+ mem_rank + ", mem_cardCode=" + mem_cardCode + ", mem_joinDate=" + mem_joinDate + ", mem_pwdUpdate="
				+ mem_pwdUpdate + ", mem_isDrop=" + mem_isDrop + ", mem_interest=" + mem_interest + ", mem_mbti="
				+ mem_mbti + ", mem_car=" + mem_car + ", mem_gender=" + mem_gender + ", enabled=" + enabled
				+ ", joincheck=" + joincheck + ", RentBookCount=" + RentBookCount + "]";
	}

	/*
	 * @Override public String toString() { return "MemberVO [mem_id=" + mem_id +
	 * ", authority=" + authority + ", mem_pwd=" + mem_pwd + ", mem_name=" +
	 * mem_name + ", mem_age=" + mem_age + ", mem_birth=" + mem_birth +
	 * ", mem_phone=" + mem_phone + ", mem_addr=" + mem_addr + ", mem_img=" +
	 * mem_img + ", mem_email=" + mem_email + ", mem_rank=" + mem_rank +
	 * ", mem_cardCode=" + mem_cardCode + ", mem_joinDate=" + mem_joinDate +
	 * ", mem_pwdUpdate=" + mem_pwdUpdate + ", mem_isDrop=" + mem_isDrop +
	 * ", mem_interest=" + mem_interest + ", mem_mbti=" + mem_mbti + ", mem_car=" +
	 * mem_car + ", mem_gender=" + mem_gender + ", enabled=" + enabled +
	 * ", getMem_id()=" + getMem_id() + ", getAuthority()=" + getAuthority() +
	 * ", getMem_pwd()=" + getMem_pwd() + ", getMem_name()=" + getMem_name() +
	 * ", getMem_age()=" + getMem_age() + ", getMem_birth()=" + getMem_birth() +
	 * ", getMem_phone()=" + getMem_phone() + ", getMem_addr()=" + getMem_addr() +
	 * ", getMem_img()=" + getMem_img() + ", getMem_email()=" + getMem_email() +
	 * ", getMem_rank()=" + getMem_rank() + ", getMem_cardCode()=" +
	 * getMem_cardCode() + ", getMem_joinDate()=" + getMem_joinDate() +
	 * ", getMem_pwdUpdate()=" + getMem_pwdUpdate() + ", getMem_isDrop()=" +
	 * getMem_isDrop() + ", getMem_interest()=" + getMem_interest() +
	 * ", getMem_mbti()=" + getMem_mbti() + ", getMem_car()=" + getMem_car() +
	 * ", getMem_gender()=" + getMem_gender() + ", getEnabled()=" + getEnabled() +
	 * ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
	 * + super.toString() + "]"; }
	 */
	
	
	

}
