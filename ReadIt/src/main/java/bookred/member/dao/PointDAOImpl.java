package bookred.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.member.dto.PointVO;

public class PointDAOImpl implements PointDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<PointVO> selectPointListByMemberID(String mem_id) throws SQLException {
		List<PointVO> pointList = sqlSession.selectList("Point-Mapper.selectPointListByMemberID",mem_id);
		return pointList;
	}

	@Override
	public void insertPointByMemberID(PointVO point) throws SQLException {
		sqlSession.insert("Point-Mapper.insertPointByMemberID",point);
	}

	@Override
	public List<PointVO> selectRecentPointListByMemberID(String mem_id) throws SQLException {
		List<PointVO> pointList = sqlSession.selectList("Point-Mapper.selectRecentPointListByMemberID", mem_id);
		return pointList;
	}

}
