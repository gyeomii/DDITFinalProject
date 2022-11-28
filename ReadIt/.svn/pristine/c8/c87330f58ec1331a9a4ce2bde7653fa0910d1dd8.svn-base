package bookred.member.command;

import java.util.Date;

import bookred.member.dto.MemberVO;

public class MemberModifyCommand {

	private String mem_id;
	private String mem_pwd;
	private String mem_name;
	private String mem_addr1;
	private String mem_addr2;
	private String mem_email;
	private int mem_interest;
	private String mbti1;
	private String mbti2;
	private String mbti3;
	private String mbti4;
	private String mem_car;
	private String mem_phone;
	private int mem_rank;
	private int mem_age;
	private Date mem_pwdUpdate;
	

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
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

	public String getMem_addr1() {
		return mem_addr1;
	}

	public void setMem_addr1(String mem_addr1) {
		this.mem_addr1 = mem_addr1;
	}

	public String getMem_addr2() {
		return mem_addr2;
	}

	public void setMem_addr2(String mem_addr2) {
		this.mem_addr2 = mem_addr2;
	}
	
	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public int getMem_interest() {
		return mem_interest;
	}

	public void setMem_interest(int mem_interest) {
		this.mem_interest = mem_interest;
	}

	public String getMbti1() {
		return mbti1;
	}

	public void setMbti1(String mbti1) {
		this.mbti1 = mbti1;
	}

	public String getMbti2() {
		return mbti2;
	}

	public void setMbti2(String mbti2) {
		this.mbti2 = mbti2;
	}

	public String getMbti3() {
		return mbti3;
	}

	public void setMbti3(String mbti3) {
		this.mbti3 = mbti3;
	}

	public String getMbti4() {
		return mbti4;
	}

	public void setMbti4(String mbti4) {
		this.mbti4 = mbti4;
	}

	public String getMem_car() {
		return mem_car;
	}

	public void setMem_car(String mem_car) {
		this.mem_car = mem_car;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	
	public int getMem_rank() {
		return mem_rank;
	}

	public void setMem_rank(int mem_rank) {
		this.mem_rank = mem_rank;
	}
	
	public int getMem_age() {
		return mem_age;
	}

	public void setMem_age(int mem_age) {
		this.mem_age = mem_age;
	}

	public Date getMem_pwdupdate() {
		return mem_pwdUpdate;
	}

	public void setMem_pwdupdate(Date mem_pwdupdate) {
		this.mem_pwdUpdate = mem_pwdupdate;
	}

	public MemberVO toMemberVO() {
		MemberVO member = new MemberVO();
		member.setMem_id(mem_id);
		member.setMem_pwd(mem_pwd);
		member.setMem_name(mem_name);
		member.setMem_addr(this.mem_addr1 + this.mem_addr1);
		member.setMem_email(mem_email);
		member.setMem_interest(mem_interest);
		member.setMem_car(mem_car);
		member.setMem_phone(mem_phone);
		member.setMem_mbti(this.mbti1 + this.mbti2 + this.mbti3 + this.mbti4);
		member.setMem_rank(mem_rank);
		member.setMem_age(mem_age);
		member.setMem_pwdUpdate(mem_pwdUpdate);
		
		return member;

	}
}
