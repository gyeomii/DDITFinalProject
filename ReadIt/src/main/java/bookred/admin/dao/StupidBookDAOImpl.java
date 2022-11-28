package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.dto.StupidBookVO;
import bookred.admin.dto.StupidCountVO;

public class StupidBookDAOImpl implements StupidBookDAO {
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void insertStupidBook(StupidBookVO stupid) throws SQLException {
		sqlSession.insert("Stupid-Mapper.insertStupidBook", stupid);
	}

	@Override
	public List<StupidBookVO> selectStupidBookList() throws SQLException {
		List<StupidBookVO> stupidList = sqlSession.selectList("Stupid-Mapper.selectStupidBookList");
		return stupidList;
	}

	@Override
	public List<StupidBookVO> selectStupidBookAlramList() throws SQLException {
		List<StupidBookVO> stupidList = sqlSession.selectList("Stupid-Mapper.selectStupidBookAlramList");
		return stupidList;
	}
	
	@Override
	public List<StupidBookVO> selectStupidBookDoneList() throws SQLException {
		List<StupidBookVO> stupidList = sqlSession.selectList("Stupid-Mapper.selectStupidBookDoneList");
		return stupidList;
	}

	@Override
	public void updateStupidBookCorrect(List<StupidBookVO> stupidList) throws SQLException {
		for (StupidBookVO stupidBookVO : stupidList) {
			sqlSession.update("Stupid-Mapper.updateStupidBookCorrect", stupidBookVO);
		}
	}

	@Override
	public List<Integer> selectstupidChartWeekList() throws SQLException {
		List<Integer> weekCountList = sqlSession.selectList("Stupid-Mapper.selectstupidChartWeekList");
		return weekCountList;
	}

	@Override
	public List<StupidCountVO> selectStupidChartKDCList() throws SQLException {
		List<StupidCountVO> weekCountList = sqlSession.selectList("Stupid-Mapper.selectStupidChartKDCList");
		return weekCountList;
	}

}
