package bookred.main.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.main.dto.MultiOneVO;
import bookred.main.dto.StatisticsVO;

public class MultiOneDAOImpl implements MultiOneDAO {

	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void insertMultiOne(MultiOneVO multiOne) throws Exception {
		sqlSession.insert("MultiOne-Mapper.insertMultiOne", multiOne);

	}
	
	
	@Override
	public void insertMeetingOne(MultiOneVO multiOne) throws Exception {
		sqlSession.insert("MultiOne-Mapper.insertMeetingOne", multiOne);

	}
	
	@Override
	public List<String> getSeatByDateAndTime(MultiOneVO multiOne) throws Exception {

		List<String> result = new ArrayList<String>();
		result = sqlSession.selectList("MultiOne-Mapper.getSeatByDateAndTime", multiOne);

		return result;
	}

	@Override
	public List<MultiOneVO> getAMeetingTime(String day) throws Exception {
		List<MultiOneVO> multiOneList = sqlSession.selectList("MultiOne-Mapper.getMeetingTime",day);
		
		System.out.println(multiOneList);
		return multiOneList;
	}
	@Override
	public List<MultiOneVO> getBMeetingTime(String day) throws Exception {
		List<MultiOneVO> multiOneList = sqlSession.selectList("MultiOne-Mapper.getMeetingTime2",day);
		
		return multiOneList;
	}

	@Override
	public int registCheck(MultiOneVO multiOne) throws Exception {
		 int result = sqlSession.selectOne("MultiOne-Mapper.registCheck",multiOne);
		return result;
	}

	@Override
	public List<MultiOneVO> selectFacRsvList(String id) throws Exception {
		List<MultiOneVO> getFacRsvList = sqlSession.selectList("MultiOne-Mapper.facilityMemList", id);
		return getFacRsvList;
	}

	@Override
	public List<StatisticsVO> selectStatisticList() throws Exception {
		List<StatisticsVO> getStatistic = sqlSession.selectList("MultiOne-Mapper.statisticsData");
		return getStatistic;
	}
	
	@Override
	public List<StatisticsVO> selectmultistatisticsList() throws Exception {
		List<StatisticsVO> getStatistic = sqlSession.selectList("MultiOne-Mapper.multistatisticsData");
		return getStatistic;
	}

}
