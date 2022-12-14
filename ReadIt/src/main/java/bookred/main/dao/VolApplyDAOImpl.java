package bookred.main.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.main.dto.VolApplyVO;

public class VolApplyDAOImpl implements VolApplyDAO {

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public List<VolApplyVO> selectVolApply(int vb_no) throws SQLException {
		List<VolApplyVO> volApplyList = sqlSession.selectList("VolApply-Mapper.selectVolApply",vb_no);
		return volApplyList;
	}
	
	@Override
	public VolApplyVO selectVolApplyByVaNo(int va_no) throws SQLException {
		VolApplyVO volApply = sqlSession.selectOne("VolApply-Mapper.selectVolApplyByVaNo", va_no);
		return volApply;
	}


	@Override
	public void updateVolApply(VolApplyVO volApply) throws SQLException {
		sqlSession.update("VolApply-Mapper.updateVolApply", volApply);
		
	}

	@Override
	public void deleteVolApply(int va_no) throws SQLException {
		sqlSession.update("VolApply-Mapper.deleteVolApply", va_no);
		
	}


}
