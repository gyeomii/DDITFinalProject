package bookred.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.common.dto.AttachVO;


public class AttachEDAOImpl implements AttachEDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<AttachVO> selectAttachE(int ev_no) throws SQLException {
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		attachList = sqlSession.selectList("AttachE-Mapper.selectAttachE",ev_no);
		return attachList;
	}
	@Override
	public void insertAttachE(AttachVO attach) throws SQLException {
		sqlSession.insert("AttachE-Mapper.insertAttachE",attach);
		
	}
	@Override
	public void deleteAllAttachE(int ev_no) throws SQLException {
		sqlSession.update("AttachE-Mapper.deleteAllAttachE",ev_no);
		
	}
	

	
}
