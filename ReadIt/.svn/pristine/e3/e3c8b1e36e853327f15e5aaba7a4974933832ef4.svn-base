package bookred.common.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.common.dto.AttachVO;

public class AttachLDAOImpl implements AttachLDAO {

	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<AttachVO> selectAttachL(int lost_no) throws SQLException {
	
		List<AttachVO> attachList = new ArrayList<AttachVO>();
		attachList = sqlSession.selectList("AttachL-Mapper.selectAttachByL",lost_no);
		
		return attachList;
	}

	@Override
	public void insertAttachL(AttachVO attach) throws SQLException {
		sqlSession.insert("AttachL-Mapper.insertAttachL",attach);
	}

	@Override
	public void deleteAttachL(int lost_no) throws SQLException {
		sqlSession.delete("AttachL-Mapper.deleteAllAttachL",lost_no);
	}

}
