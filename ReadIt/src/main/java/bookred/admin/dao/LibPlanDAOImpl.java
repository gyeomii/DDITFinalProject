package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.dto.LibPlanVO;

public class LibPlanDAOImpl implements LibPlanDAO {
	
	private SqlSession session;

	public void setSqlSession(SqlSession session) {
		this.session = session;
	}
	
	@Override
	public List<LibPlanVO> selectAllPlan() throws SQLException {
		
		List<LibPlanVO> selectAllPlan = session.selectList("Calendar-Mapper.selectAllList");
		
		return selectAllPlan;
	}

	@Override
	public void insert(LibPlanVO vo) throws SQLException {
		session.insert("Calendar-Mapper.insertPlan", vo);
	}

	@Override
	public void delete(String lp_no) throws SQLException {
		session.delete("Calendar-Mapper.deletePlan", lp_no);
	}

	@Override
	public void update(LibPlanVO vo) throws SQLException {
		session.update("Calendar-Mapper.update", vo);
	}

}
