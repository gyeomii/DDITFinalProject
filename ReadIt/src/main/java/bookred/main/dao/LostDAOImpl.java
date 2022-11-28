package bookred.main.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
import bookred.main.dto.LostVO;

public class LostDAOImpl implements LostDAO{
	
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<LostVO> selectLostList(Criteria cri) throws SQLException {

		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum(); 
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		List<LostVO> lostList = new ArrayList<LostVO>();
		lostList = sqlSession.selectList("Lost-Mapper.selectLostList", dataParam);
		
		return lostList;
	}

	@Override
	public int selectLostListCount(Criteria cri) throws SQLException {
		int count = sqlSession.selectOne("Lost-Mapper.selectLostListCount", cri);
		return count;
	}

	@Override
	public LostVO selectLostByLostNo(int lost_no) throws SQLException {
		LostVO lost = sqlSession.selectOne("Lost-Mapper.selectLostByLostNo", lost_no);
		return lost;
	}

	@Override
	public int selectLosttSeqNext() throws SQLException {
		int seq_num = sqlSession.selectOne("Lost-Mapper.selectLostSeqNext");
		return seq_num;
	}

	@Override
	public void insertLost(LostVO lost) throws SQLException {
		sqlSession.insert("Lost-Mapper.insertLost", lost);
		
	}

	@Override
	public void updateLost(LostVO lost) throws SQLException {
		sqlSession.update("Lost-Mapper.updateLost", lost);
		
	}

	@Override
	public void deleteLost(int lost_no) throws SQLException {
		sqlSession.update("Lost-Mapper.deleteLost", lost_no);
		System.out.println("다오"+lost_no);
		
	}

	

}
