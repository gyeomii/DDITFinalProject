package bookred.admin.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.command.Criteria;
import bookred.admin.command.FacilityManagermentCommand;
import bookred.admin.dto.FacilityManagementVO;
import bookred.main.dto.MultiOneVO;

public class FacilityManagementDAOImpl implements FacilityManagementDAO {

	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<MultiOneVO> selectPlace() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<FacilityManagementVO> getProfile(FacilityManagementVO facilityManagerment) {
		System.out.println("DAO:"+facilityManagerment);
		List<FacilityManagementVO> data = sqlSession.selectList("FacilityManagement-Mapper.selectProfile",facilityManagerment);
		return data;
	}

	@Override
	public int getCount(String roomNum) {
		int data = sqlSession.selectOne("FacilityManagement-Mapper.selectCount",roomNum);
		return data;
	}

	@Override
	public int getSelectCount(FacilityManagementVO FacilityManagement) {
		int data = sqlSession.selectOne("FacilityManagement-Mapper.selectCountSeat",FacilityManagement);
		return data;
	}

	@Override
	public List<FacilityManagementVO> selectfacilityManagement(Criteria cri) throws SQLException {

		int startRow = cri.getStartRowNum()+1;
		int endRow = startRow + cri.getPerPageNum(); // 질문
		
		Map<String, Object> dataParam = new HashMap<String, Object>();
		dataParam.put("startRow", startRow);
		dataParam.put("endRow", endRow);
		dataParam.put("searchType", cri.getSearchType());
		dataParam.put("keyword", cri.getKeyword());
		
		List<FacilityManagementVO> meetingRoomList = new ArrayList<FacilityManagementVO>();
		meetingRoomList = sqlSession.selectList("FacilityManagement-Mapper.selectMeetingRoomList",dataParam);
		
		System.out.println(meetingRoomList);
		return meetingRoomList;
	}

	@Override
	public int selectListCount(Criteria cri) throws SQLException {
		int count = sqlSession.selectOne("FacilityManagement-Mapper.selectMeetingRoomListCount", cri);
		return count;
	}

	@Override
	public void remove(int fr_no) {
		 sqlSession.selectOne("FacilityManagement-Mapper.deleteRemove",fr_no);
		
	}

	
	
}