package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dao.LibPlanDAO;
import bookred.admin.dto.LibPlanVO;

public class LibPlanServiceImpl implements LibPlanService {
	
	private LibPlanDAO libPlanDAO;
	
	public void setLibPlanDAO(LibPlanDAO libPlanDAO) {
		this.libPlanDAO = libPlanDAO;
	}
	
	@Override
	public List<LibPlanVO> getAllPlanList() throws SQLException {
		List<LibPlanVO> getAllPlanList = libPlanDAO.selectAllPlan();
		return getAllPlanList;
	}

	@Override
	public void insert(LibPlanVO vo) throws SQLException {
		libPlanDAO.insert(vo);
		
	}

	@Override
	public void delete(String lp_no) throws SQLException {
		libPlanDAO.delete(lp_no);
	}

	@Override
	public void update(LibPlanVO vo) throws SQLException {
		libPlanDAO.update(vo);
	}
	

}
