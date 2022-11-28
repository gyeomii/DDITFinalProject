package bookred.member.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.member.dto.PointVO;

public interface PointDAO {
	public List<PointVO> selectPointListByMemberID(String mem_id) throws SQLException;
	public void insertPointByMemberID(PointVO point) throws SQLException;
	public List<PointVO> selectRecentPointListByMemberID(String mem_id) throws SQLException;
}
