package bookred.member.service;

import java.sql.SQLException;
import java.util.List;

import bookred.member.dao.PointDAO;
import bookred.member.dto.PointVO;

public class PointServiceImpl implements PointService {
	
	private PointDAO pointDAO;
	public void setPointDAO(PointDAO pointDAO) {
		this.pointDAO = pointDAO;
	}
	
	@Override
	public List<PointVO> getPointListByMemberID(String mem_id) throws SQLException {
		List<PointVO> pointList = pointDAO.selectPointListByMemberID(mem_id);
		return pointList;
	}

	@Override
	public List<PointVO> getRecentPointListByMemberID(String mem_id) throws SQLException {
		List<PointVO> pointList = pointDAO.selectRecentPointListByMemberID(mem_id);
		return pointList;
	}

}
