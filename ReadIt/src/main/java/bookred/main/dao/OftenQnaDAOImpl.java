package bookred.main.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
import bookred.main.dto.OftenQnaVO;

public class OftenQnaDAOImpl implements OftenQnaDAO {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	
	@Override
	public List<OftenQnaVO> selectOftenQnaList(Criteria cri) throws SQLException {
		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum(); // 질문
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		List<OftenQnaVO> oftenQnaList = new ArrayList<OftenQnaVO>();
		oftenQnaList = sqlSession.selectList("OftenQna-Mapper.selectOftenQnaList", dataParam);
		return oftenQnaList;
	}

	@Override
	public int selectOftenQnaListCount(Criteria cri) throws SQLException {
		int count = sqlSession.selectOne("OftenQna-Mapper.selectOftenQnaListCount", cri);
		return count;
	}

	@Override
	public OftenQnaVO selectOftenQnaByOq_No(int oq_no) throws SQLException {
		OftenQnaVO oftenQna = sqlSession.selectOne("OftenQna-Mapper.selectOftenQnaByOqNo",oq_no);
		return oftenQna;
	}

	@Override
	public void increaseViewCount(int oq_no) throws SQLException {
		sqlSession.update("OftenQna-Mapper.increaseViewCount",oq_no);
	}

	@Override
	public int selectOftenQnaSeqNextValue() throws SQLException {
	 int seq_num = sqlSession.selectOne("OftenQna-Mapper.selectOftenQnaSeqNextValue");
		return seq_num;
	}

	@Override
	public void insertOftenQna(OftenQnaVO oftenQna) throws SQLException {
		sqlSession.insert("OftenQna-Mapper.insertOftenQna",oftenQna);
		
	}

	@Override
	public void updateOftenQna(OftenQnaVO oftenQna) throws SQLException {
		sqlSession.update("OftenQna-Mapper.updateOftenQna",oftenQna);
		
	}

	@Override
	public void deleteOftenQna(int oq_no) throws SQLException {
		sqlSession.update("OftenQna-Mapper.deleteOftenQna",oq_no);
		
	}

	

}
