package bookred.common.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.common.dto.AttachVO;

public interface AttachLDAO {

	public List<AttachVO> selectAttachL(int lost_no) throws SQLException;
	
	public void insertAttachL(AttachVO attach) throws SQLException;
	
	public void deleteAttachL(int lost_no) throws SQLException;
	
}
