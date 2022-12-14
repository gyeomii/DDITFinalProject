package bookred.member.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.book.command.BookCriteria;
import bookred.exception.InvalidPasswordException;
import bookred.exception.NotFoundIdException;
import bookred.member.dto.MemberVO;


public interface MemberService {
	//login
	void login(String id, String pwd)throws NotFoundIdException,InvalidPasswordException,
											SQLException;
	
	//회원목록조회
	Map<String,Object> getMemberList(BookCriteria cri)throws SQLException;
	
	//관리자 목록 조회
	Map<String,Object> getAdminList(Criteria cri)throws SQLException;
	
	//관리자 회원 조회용
	Map<String, Object> getMemberDetail(String mem_id) throws SQLException;
	
	//회원상세조회
	MemberVO getMember(String id)throws SQLException;	
	
	List<MemberVO> getMemberName(String mem_name)throws SQLException;	

	//회원등록
	public void regist(MemberVO member) throws Exception;
	
	//회원수정
	public void modify(MemberVO member)throws Exception;

	public void modifyByAdmin(MemberVO member)throws Exception;
	
	//회원탈퇴 delete 하면 안돼,,,, 다 꼬여,,,
	public void remove(String id)throws Exception; 
	
	// 이걸로 할꼬야ㅕ,,!!
	public void drop(MemberVO member) throws Exception;
	
	public int getMemberCount(String id) throws SQLException;
	
	
}
