package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.command.FacilityManagermentCommand;
import bookred.admin.dto.FacilityManagementVO;
import bookred.main.dto.MultiOneVO;

public interface FacilityManagementDAO {

	List<MultiOneVO> selectPlace() throws SQLException;

	List<FacilityManagementVO> getProfile(FacilityManagementVO facilityManagerment) throws SQLException;

	int getCount(String roomNum) throws SQLException;
	
	int getSelectCount(FacilityManagementVO FacilityManagement) throws SQLException;

	List<FacilityManagementVO> selectfacilityManagement(Criteria cri) throws SQLException ;

	int selectListCount(Criteria cri)throws SQLException;

	void remove(int fr_no);
	
}
