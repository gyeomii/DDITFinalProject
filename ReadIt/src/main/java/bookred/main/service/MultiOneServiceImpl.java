package bookred.main.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.main.dao.MultiOneDAO;
import bookred.main.dto.MultiOneVO;
import bookred.main.dto.StatisticsVO;

public class MultiOneServiceImpl implements MultiOneService {

	private MultiOneDAO multiOneDAO;
	
	public void setMultiOneDAO(MultiOneDAO multiOneDAO) {
		this.multiOneDAO = multiOneDAO;
	}
	
	@Override
	 public String insertMultiOne(MultiOneVO multiOne) throws Exception {
		
		int result = multiOneDAO.registCheck(multiOne);
		
		if(result <1) {
			multiOneDAO.insertMultiOne(multiOne);	
		
			return "true";
			
		}else {
			return "false";
		}
	  
	}
	
	@Override
	public List<String> getSeatByDateAndTime(MultiOneVO multiOne) throws Exception {
		List<String> result = multiOneDAO.getSeatByDateAndTime(multiOne);
		return result;
	}
	
	
	@Override
	public Map<String, Object> getAMeetingTime(String day) throws Exception {
	    Map<String, Object> dataMap = null;
		List<MultiOneVO> multiOneList = multiOneDAO.getAMeetingTime(day);
		dataMap = new HashMap<String, Object>();
		dataMap.put("multiOneList", multiOneList);
		return dataMap;
	}

	@Override
	public Map<String, Object> getBMeetingTime(String day) throws Exception {
	    Map<String, Object> dataMap = null;
		List<MultiOneVO> multiOneList = multiOneDAO.getBMeetingTime(day);
		dataMap = new HashMap<String, Object>();
		dataMap.put("multiOneList", multiOneList);
		return dataMap;
	}
	
	@Override
	public String regist(MultiOneVO multiOne) throws Exception {

		int result = multiOneDAO.registCheck(multiOne);
	
		if(result <1) {
			multiOneDAO.insertMeetingOne(multiOne);	
		
			return "true";
			
		}else {
			
			return "false";
		}
		
	}

	@Override
	public Map<String, Object> getFacRsvList(String id) throws Exception {
		Map<String, Object> dataMap = null;
		List<MultiOneVO> facRsvList = multiOneDAO.selectFacRsvList(id);
		dataMap = new HashMap<String, Object>();
		dataMap.put("facRsvList", facRsvList);
		return dataMap;
	}

	@Override
	public List<StatisticsVO> getStatistics() throws Exception {
		
		List<StatisticsVO> getStatisticList = multiOneDAO.selectStatisticList();
		
		return getStatisticList;
	}

	@Override
	public List<StatisticsVO> getMultiStatistics() throws Exception {
		
		List<StatisticsVO> getStatisticList = multiOneDAO.selectmultistatisticsList();
		
		return getStatisticList;
	}
	
}
