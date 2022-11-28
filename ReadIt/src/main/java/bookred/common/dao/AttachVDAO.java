package bookred.common.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.common.dto.AttachVO;

public interface AttachVDAO {

	public List<AttachVO> selectAttachV(int vb_no) throws SQLException;
	
	public void insertAttachV(AttachVO attach) throws SQLException;

	public void deleteAllAttachV(int vb_no) throws SQLException;
	
}
