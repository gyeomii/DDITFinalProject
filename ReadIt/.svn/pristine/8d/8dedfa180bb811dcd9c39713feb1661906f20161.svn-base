package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.member.dto.BkReserveVO;
import bookred.member.dto.DriveThruVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;

public interface DrivethruDAO {
	
	List<DriveThruVO> selectRmNobyCar(String dt_car_no) throws SQLException;
	
	RMVO selectRmbyRmNo(int rm_no) throws SQLException;
	
	List<BkReserveVO> selectBookReservebyRmNo(int rm_no) throws SQLException;
	
	public void insertRentBackLibraryForDrive(BkReserveVO bkReserveVO)  throws SQLException;
	
	void updateDrivePickup(int rm_no) throws SQLException;

}
