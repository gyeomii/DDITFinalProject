package bookred.main.service;

import java.util.List;
import java.util.Map;

import bookred.main.dto.MultiOneVO;
import bookred.main.dto.StatisticsVO;

public interface MultiOneService {

	//multi
	String insertMultiOne(MultiOneVO multiOne) throws Exception;
	
	List<String> getSeatByDateAndTime(MultiOneVO multiOne) throws Exception;

	//meeting
	String regist(MultiOneVO multiOne) throws Exception;
	
	Map<String, Object> getAMeetingTime(String day) throws Exception;
	
	Map<String, Object> getBMeetingTime(String day) throws Exception;

	//mem select list
	Map<String, Object> getFacRsvList(String id) throws Exception;

	List<StatisticsVO> getStatistics() throws Exception;

	List<StatisticsVO> getMultiStatistics() throws Exception;
	

}
