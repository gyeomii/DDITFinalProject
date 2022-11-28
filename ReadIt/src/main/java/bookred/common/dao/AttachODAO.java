package bookred.common.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.common.dto.AttachVO;

public interface AttachODAO {
	
	public List<AttachVO> selectAttachO(int oq_no) throws SQLException;

	public void insertAttachO(AttachVO attach) throws SQLException;

	public void deleteAllAttachO(int oq_no) throws SQLException;
	
}
