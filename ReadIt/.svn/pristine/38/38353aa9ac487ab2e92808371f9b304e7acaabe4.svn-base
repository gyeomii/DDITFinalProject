package bookred.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.common.dto.AttachVO;


public class AttachODAOImpl implements AttachODAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<AttachVO> selectAttachO(int oq_no) throws SQLException {
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		System.out.println("dao : " + oq_no);
		attachList = sqlSession.selectList("AttachO-Mapper.selectAttachO",oq_no);
		return attachList;
	}
	@Override
	public void insertAttachO(AttachVO attach) throws SQLException {
		sqlSession.insert("AttachO-Mapper.insertAttachO",attach);
		
	}
	@Override
	public void deleteAllAttachO(int oq_no) throws SQLException {
		sqlSession.update("AttachO-Mapper.deleteAllAttachO",oq_no);
		
	}
	

	
}
