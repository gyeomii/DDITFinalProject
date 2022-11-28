package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dao.SecureDAO;
import bookred.admin.dto.SecureVO;

public class SecureServiceImpl implements SecureService {
	
	private SecureDAO secureDAO;
	public void setSecureDAO(SecureDAO secureDAO) {
		this.secureDAO = secureDAO;
	}
	
	@Override
	public void enterSecure(String mem_id) throws SQLException {
		int count = secureDAO.selectSecureNotOut(mem_id);
		if(count == 0) {
			SecureVO secure = new SecureVO();
			secure.setMem_id(mem_id);
			secure.setSc_name("고서실");
			secureDAO.insertSecure(secure);
		}else {
			secureDAO.updateSecureOut(mem_id);
		}
	}

	@Override
	public List<SecureVO> getSecureLogList() throws SQLException {
		List<SecureVO> logList = secureDAO.selectSecureList();
		return logList;
	}

}
