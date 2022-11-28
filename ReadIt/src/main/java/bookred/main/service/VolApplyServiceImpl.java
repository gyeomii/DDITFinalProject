package bookred.main.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.main.dao.VolApplyDAO;
import bookred.main.dto.VolApplyVO;

public class VolApplyServiceImpl implements VolApplyService{

	private VolApplyDAO volApplyDAO;
	
	public void setVolApplyDAO(VolApplyDAO volApplyDAO) {
		this.volApplyDAO = volApplyDAO;
	}
	
	@Override
	public List<VolApplyVO> getVolApplyList(int vb_no) throws SQLException {
		
		List<VolApplyVO> volApplyList = volApplyDAO.selectVolApply(vb_no);

		return volApplyList;
	}

	@Override
	public VolApplyVO getVolApply(int va_no) throws SQLException {
		VolApplyVO volApply = volApplyDAO.selectVolApplyByVaNo(va_no);
		
		return volApply;
	}


	@Override
	public void modify(VolApplyVO volApply) throws SQLException {
		volApplyDAO.updateVolApply(volApply);
	}

	@Override
	public void remove(int va_no) throws SQLException {
		volApplyDAO.deleteVolApply(va_no);
	}

}
