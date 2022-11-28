package bookred.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.common.dto.AttachVO;


public class AttachNDAOImpl implements AttachNDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<AttachVO> selectAttachN(int notice_no) throws SQLException {
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		attachList = sqlSession.selectList("AttachN-Mapper.selectAttachN",notice_no);
		return attachList;
	}
	@Override
	public void insertAttachN(AttachVO attach) throws SQLException {
		sqlSession.insert("AttachN-Mapper.insertAttachN",attach);
		
	}
	@Override
	public void deleteAllAttachN(int notice_no) throws SQLException {
		sqlSession.update("AttachN-Mapper.deleteAllAttachN",notice_no);
		
	}
	

	
}
