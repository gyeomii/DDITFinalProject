package bookred.admin.service;

import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.dto.FacilityManagementVO;

public interface FacilityManagementService {

	List<FacilityManagementVO> profile(FacilityManagementVO facilityManagerment)throws Exception;

	List<String> count() throws Exception;

	List<String> selectCount(FacilityManagementVO facilityManagement)throws Exception;

	Map<String, Object> getMeetingRoomList(Criteria cri)throws Exception;

	void getRemove(int fr_no)throws Exception;
}
