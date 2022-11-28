package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dto.SecureVO;

public interface SecureDAO {
	public void insertSecure(SecureVO secure) throws SQLException;
	public List<SecureVO> selectSecureList() throws SQLException;
	public int selectSecureNotOut(String mem_id) throws SQLException;
	public void updateSecureOut(String mem_id) throws SQLException;
}
