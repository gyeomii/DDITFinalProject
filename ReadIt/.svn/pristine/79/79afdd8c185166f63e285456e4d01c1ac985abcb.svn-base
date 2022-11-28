package bookred.main.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.command.Criteria;
import bookred.main.dto.LostVO;

public interface LostDAO {

	List<LostVO> selectLostList(Criteria cri) throws SQLException;
	
	int selectLostListCount(Criteria cri) throws SQLException;
	
	LostVO selectLostByLostNo(int lost_no) throws SQLException;
	
	int selectLosttSeqNext() throws SQLException;
	
	void insertLost(LostVO lost) throws SQLException;
	
	void updateLost(LostVO lost) throws SQLException;
	
	void deleteLost(int lost_no) throws SQLException;
}
