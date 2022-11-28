package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dto.SecureVO;

public interface SecureService {
	public void enterSecure(String mem_id) throws SQLException;
	public List<SecureVO> getSecureLogList() throws SQLException;
}
