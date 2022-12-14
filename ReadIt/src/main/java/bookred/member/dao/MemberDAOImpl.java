package bookred.member.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
import bookred.admin.dto.SelectAdminVO;
import bookred.book.command.BookCriteria;
import bookred.member.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO {

	private SqlSession session;

	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<MemberVO> selectMemberList(BookCriteria cri) throws SQLException {
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum();

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		List<MemberVO> memberList = new ArrayList<MemberVO>();
		memberList = session.selectList("Member-Mapper.selectMemberList", dataParam);

		return memberList;
	}

	@Override
	public List<SelectAdminVO> selectAdminList(Criteria cri) throws SQLException {
		int offset = cri.getStartRowNum();
		int limit = cri.getPerPageNum();
		RowBounds rowBounds = new RowBounds(offset, limit);

		List<SelectAdminVO> adminList = session.selectList("Member-Mapper.selectAdminList", cri, rowBounds);
//		System.out.println(adminList.get(0).getDp_no());

		return adminList;
	}

	@Override
	public int selectAdminListCount(Criteria cri) throws SQLException {
		int count = session.selectOne("Member-Mapper.selectAdminListCount", cri);
		return count;
	}

	@Override
	public int selectMemberListCount(BookCriteria cri) throws SQLException {
		int count = session.selectOne("Member-Mapper.selectMemberListCount", cri);
		System.out.println(count);
		return count;
	}

	@Override
	public MemberVO selectMemberById(String id) throws SQLException {
		MemberVO member = session.selectOne("Member-Mapper.selectMemberById", id);
		return member;
	}

	@Override
	public void insertMember(MemberVO member) throws SQLException {
		session.insert("Member-Mapper.insertMember", member);

	}

	@Override
	public void updateMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.updateMember", member);

	}
	@Override
	public void updateMemberForAdmin(MemberVO member) throws SQLException {
		session.update("Member-Mapper.updateMemberForAdmin", member);
		
	}

	@Override
	public void deleteMember(String id) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public MemberVO selectMemberByPicture(String picture) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int selectMemberCountById(String id) throws SQLException {
		int count = session.selectOne("Member-Mapper.selectMemberCountById", id);
		return count;
	}

	@Override
	public void dropMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.dropMember", member);
		
	}

	@Override
	public List<MemberVO> selectMemberByName(String name) throws SQLException {
		 List<MemberVO> member = session.selectList("Member-Mapper.selectMemberByName", name);
		return member;
	}

	@Override
	public int selectMemberCount() throws SQLException {
		 int count = session.selectOne("Member-Mapper.selectMemberCount");
		return count;
	}

	@Override
	public int selectRankmemCount(int rank) throws SQLException {
		 int count = session.selectOne("Member-Mapper.selectRankmemCount",rank);
		return count;
	}

	@Override
	public int selectNewMemCountbyMonth() throws SQLException {
		 int count = session.selectOne("Member-Mapper.selectNewMemCountbyMonth");
		return count;
	}

	@Override
	public int selectXMemCount() throws SQLException {
		 int count = session.selectOne("Member-Mapper.selectXMemCount");
		return count;
	}


}
