package bookred.admin.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import bookred.member.dto.BkReserveVO;
import bookred.member.dto.DriveThruVO;
import bookred.member.dto.RMVO;


public interface DrivethruService {
	
	List<RMVO> getRmNoListbycar(String dt_car_no) throws SQLException;
	Map<String, Object> getMemAndBookReserveInfo(RMVO rmVO) throws SQLException;
	public void registRent(List<BkReserveVO> bkList) throws SQLException;
	
	

}