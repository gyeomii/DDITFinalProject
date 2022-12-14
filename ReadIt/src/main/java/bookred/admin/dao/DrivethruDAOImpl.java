package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.member.dto.BkReserveVO;
import bookred.member.dto.DriveThruVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;

public class DrivethruDAOImpl implements DrivethruDAO {

	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<DriveThruVO> selectRmNobyCar(String dt_car_no) throws SQLException {
			List<DriveThruVO> rmList = sqlSession.selectList("Reserve-Mapper.selectRmNobyCar",dt_car_no);
		return rmList;
	}

	@Override
	public RMVO selectRmbyRmNo(int rm_no) throws SQLException {
			RMVO rm = sqlSession.selectOne("Reserve-Mapper.selectRmbyRmNo", rm_no);
		return rm;
	}

	@Override
	public List<BkReserveVO> selectBookReservebyRmNo(int rm_no) throws SQLException {
			List<BkReserveVO> bkList = sqlSession.selectList("Reserve-Mapper.selectBookReservebyRmNo", rm_no);
		return bkList;
	}

	@Override
	public void insertRentBackLibraryForDrive(BkReserveVO bkReserveVO) throws SQLException {
		sqlSession.insert("RentReturn-Mapper.insertRentBackLibraryForDrive",bkReserveVO);
	}

	@Override
	public void updateDrivePickup(int rm_no) throws SQLException {
		sqlSession.update("Reserve-Mapper.updateDrivePickup",rm_no);
	}

}
