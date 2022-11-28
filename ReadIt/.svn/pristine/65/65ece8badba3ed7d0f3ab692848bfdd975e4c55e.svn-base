package bookred.main.dao;

import java.util.List;

import bookred.main.dto.MultiOneVO;
import bookred.main.dto.StatisticsVO;

public interface MultiOneDAO {
	
	void insertMultiOne(MultiOneVO multiOne) throws Exception;
	
	List<String> getSeatByDateAndTime(MultiOneVO multiOne) throws Exception;
	
	void insertMeetingOne(MultiOneVO multiOne) throws Exception;
	
	List<MultiOneVO> getAMeetingTime(String day) throws Exception;
	
	List<MultiOneVO> getBMeetingTime(String day) throws Exception;
	
	int registCheck (MultiOneVO multiOne) throws Exception;

	List<MultiOneVO> selectFacRsvList(String id) throws Exception;

	List<StatisticsVO> selectStatisticList() throws Exception;

	List<StatisticsVO> selectmultistatisticsList() throws Exception;


}
