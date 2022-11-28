package bookred.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.common.dto.AttachVO;

public class AttachVDAOImpl implements AttachVDAO {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<AttachVO> selectAttachV(int vb_no) throws SQLException {
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		attachList = sqlSession.selectList("AttachV-Mapper.selectAttachV",vb_no);
		return attachList;
	}

	@Override
	public void insertAttachV(AttachVO attach) throws SQLException {
		sqlSession.insert("AttachV-Mapper.insertAttachV",attach);		
	}

	@Override
	public void deleteAllAttachV(int vb_no) throws SQLException {
		sqlSession.update("AttachV-Mapper.deleteAllAttachV",vb_no);
		
	}

}
