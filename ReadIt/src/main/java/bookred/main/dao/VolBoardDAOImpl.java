package bookred.main.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
import bookred.main.dto.VolApplyVO;
import bookred.main.dto.VolBoardVO;
import bookred.member.dto.MemberVO;

public class VolBoardDAOImpl implements VolBoardDAO {

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<VolBoardVO> selectVolBoardList(Criteria cri) throws SQLException {
		int startRow = cri.getStartRowNum() + 1;
		int endRow = startRow + cri.getPerPageNum();

		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());

		List<VolBoardVO> volBoardList = new ArrayList<VolBoardVO>();
		volBoardList = sqlSession.selectList("VolBoard-Mapper.selectVolBoardList", dataParam);

		return volBoardList;
	}

	@Override
	public int selectVolBoardListCount(Criteria cri) throws SQLException {
		int count = sqlSession.selectOne("VolBoard-Mapper.selectVolBoardListCount", cri);
		return count;
	}

	@Override
	public VolBoardVO selectVolBoardByVbNo(int vb_no) throws SQLException {
		VolBoardVO volBoard = sqlSession.selectOne("VolBoard-Mapper.selectVolBoardByVbNo", vb_no);
		return volBoard;
	}


	@Override
	public int selectVolBoardSeqNext() throws SQLException {
		int seq_num = sqlSession.selectOne("VolBoard-Mapper.selectVolBoardSeqNext");
		return seq_num;
	}

	@Override
	public void insertVolBoard(VolBoardVO volBoard) throws SQLException {
		sqlSession.insert("VolBoard-Mapper.insertVolBoard", volBoard);

	}

	@Override
	public void updateVolBoard(VolBoardVO volBoard) throws SQLException {
		sqlSession.update("VolBoard-Mapper.updateVolBoard", volBoard);
		
	}

	@Override
	public void deleteVolBoard(int vb_no) throws SQLException {
		sqlSession.update("VolBoard-Mapper.deleteVolBoard", vb_no);
		
	}

	@Override
	public void insertVolApply(VolApplyVO volApply) throws SQLException {
		sqlSession.insert("VolBoard-Mapper.insertVolApply",volApply);
		
	}

	@Override
	public int getVolBoardDuplicateChack(int vb_no, MemberVO loginUser) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("vb_no", vb_no);
		map.put("mem_id", loginUser.getMem_id());
		
		int seq_num = sqlSession.selectOne("VolBoard-Mapper.getVolBoardDuplicateChack", map);
		
		return seq_num;
	}

	@Override
	public List<VolBoardVO> selectRecentVol() throws SQLException {
		List<VolBoardVO> recentVol = sqlSession.selectList("VolBoard-Mapper.selectRecentVol");
		return recentVol;
	}

}
