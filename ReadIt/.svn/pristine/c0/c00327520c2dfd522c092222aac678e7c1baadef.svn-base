package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.dto.SecureVO;

public class SecureDAOImpl implements SecureDAO {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public void insertSecure(SecureVO secure) throws SQLException {
		sqlSession.insert("Secure-Mapper.insertSecure", secure);
	}

	@Override
	public List<SecureVO> selectSecureList() throws SQLException {
		List<SecureVO> secureList = sqlSession.selectList("Secure-Mapper.selectSecureList");
		return secureList;
	}

	@Override
	public int selectSecureNotOut(String mem_id) throws SQLException {
		int count = sqlSession.selectOne("Secure-Mapper.selectSecureNotOut", mem_id);
		return count;
	}

	@Override
	public void updateSecureOut(String mem_id) throws SQLException {
		sqlSession.update("Secure-Mapper.updateSecureOut", mem_id);
	}

}
