package bookred.admin.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.command.PageMaker;
import bookred.admin.dao.FacilityManagementDAO;
import bookred.admin.dto.FacilityManagementVO;

public class FacilityManagementServiceImpl implements FacilityManagementService {

	private FacilityManagementDAO facilityManagementDAO;

	public void setFacilityManagementDAO(FacilityManagementDAO facilityManagementDAO) {
		this.facilityManagementDAO = facilityManagementDAO;
	}

	@Override
	public List<FacilityManagementVO> profile(FacilityManagementVO facilityManagerment) throws Exception {

		List<FacilityManagementVO> list = facilityManagementDAO.getProfile(facilityManagerment);
		return list;
	}

	@Override
	public List<String> count() throws Exception {
		String[] m1RoomList= {"101","102","103","104","201","202","203","204","301","302","303","304","401","402","403","404"};
		List<String> rsvStatus = new ArrayList<String>();
		for(String roomNum : m1RoomList) {
			int cnt = facilityManagementDAO.getCount(roomNum);
			String	data = Integer.toString(cnt);
			rsvStatus.add(data);
		}
		
		return rsvStatus;
	}

	@Override
	public List<String> selectCount(FacilityManagementVO facilityManagement) throws Exception {
		String[] m1RoomList= {"101","102","103","104","201","202","203","204","301","302","303","304","401","402","403","404"};
		List<String> rsvStatus = new ArrayList<String>();
		for(String roomNum : m1RoomList) {
			facilityManagement.setRoomNum(roomNum);
			int cnt = facilityManagementDAO.getSelectCount(facilityManagement);
			String	data = Integer.toString(cnt);
			rsvStatus.add(data);
		}
		System.out.println(rsvStatus);
		return rsvStatus;
	}

	
	
	
	@Override
	public Map<String, Object> getMeetingRoomList(Criteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<FacilityManagementVO> meetingRoomList = facilityManagementDAO.selectfacilityManagement(cri);
		
		int totalCount = facilityManagementDAO.selectListCount(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("meetingRoomList", meetingRoomList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public void getRemove(int fr_no) throws Exception {
		facilityManagementDAO.remove(fr_no);
		
	}

}