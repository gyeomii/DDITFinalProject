package bookred.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.common.dto.AttachVO;


public class AttachDAOImpl implements AttachDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<AttachVO> selectAttachesByAno(int ano) throws SQLException {
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		attachList = sqlSession.selectList("Attach-Mapper.selectAttachByAno",ano);
		return attachList;
	}
	@Override
	public AttachVO selectAttachByAno(int ano) throws SQLException {
		AttachVO attach = new AttachVO();
		attach = sqlSession.selectOne("Attach-Mapper.selectAttachByAno",ano);
		return attach;
	}
	@Override
	public void insertAttach(AttachVO attach) throws SQLException {
		sqlSession.insert("Attach-Mapper.insertAttach",attach);
		
	}
	@Override
	public void deleteAttach(int ano) throws SQLException {
		sqlSession.update("Attach-Mapper.deleteAttach",ano);
		
	}
	@Override
	public void deleteAllAttach(int ano) throws SQLException {
		sqlSession.update("Attach-Mapper.deleteAllAttach",ano);
		
	}
	

	
}
