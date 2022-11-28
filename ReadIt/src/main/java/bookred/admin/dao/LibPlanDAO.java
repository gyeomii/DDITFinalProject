package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dto.LibPlanVO;

public interface LibPlanDAO {
	
	List<LibPlanVO> selectAllPlan() throws SQLException;
	
	void insert(LibPlanVO vo) throws SQLException;
	
	void delete(String lp_no) throws SQLException;
	
	void update(LibPlanVO vo) throws SQLException;

}
