package bookred.member.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.command.Criteria;
import bookred.admin.dto.SelectAdminVO;
import bookred.book.command.BookCriteria;
import bookred.member.dto.MemberVO;

public interface MemberDAO {
	List<MemberVO> selectMemberList(BookCriteria cri) throws SQLException;

	int selectMemberListCount(BookCriteria cri) throws SQLException;
	
	int selectAdminListCount(Criteria cri) throws SQLException;
	
	//관리자 리스트
	List<SelectAdminVO> selectAdminList(Criteria cri) throws SQLException;

	MemberVO selectMemberById(String id) throws SQLException;
	
	List<MemberVO> selectMemberByName(String name) throws SQLException;

	// 회원 추가
	public void insertMember(MemberVO member) throws SQLException;

	// 회원 수정
	public void updateMember(MemberVO member) throws SQLException;
	public void updateMemberForAdmin(MemberVO member) throws SQLException;

	// 회원정보 삭제
	void deleteMember(String id) throws SQLException;

	MemberVO selectMemberByPicture(String picture) throws SQLException;

	int selectMemberCountById(String id) throws SQLException;
	
	public void dropMember(MemberVO member) throws SQLException;
	
	/* List<MemberVO> selectFacRsvList(String id) throws SQLException; */
	
	int selectMemberCount () throws SQLException;
	int selectRankmemCount (int rank) throws SQLException;
	int selectNewMemCountbyMonth () throws SQLException;
	int selectXMemCount () throws SQLException;
	
	
}
