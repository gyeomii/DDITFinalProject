package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.dao.AdminInfoDAO;
import bookred.admin.dto.AdminInfoVO;
import bookred.admin.dto.SelectAdminVO;
import bookred.exception.InvalidPasswordException;
import bookred.exception.NotFoundIdException;
import bookred.member.dto.CouponVO;
import bookred.member.dto.MemberVO;

public class AdminInfoServiceImpl implements AdminInfoService {

	private AdminInfoDAO adminInfoDAO;

	public void setAdminDAO(AdminInfoDAO adminInfoDAO) {
		this.adminInfoDAO = adminInfoDAO;
	}

	@Override
	public SelectAdminVO getAdmin(String mem_id) throws SQLException {
		SelectAdminVO admin = adminInfoDAO.selectAdminById(mem_id);
		
		return admin;
	}

	@Override
	public SelectAdminVO getAdminForModify(String mem_id) throws SQLException {
		SelectAdminVO admin = adminInfoDAO.selectAdminById(mem_id);
		
		return admin;
	}

	@Override
	public void fingerRegist(SelectAdminVO finger) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void fingerModify(SelectAdminVO filename) throws Exception {
		adminInfoDAO.updateFinger(filename);
		
	}

	@Override
	public void remove(String mem_id) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<MemberVO> getAdminListNotJoin() throws SQLException {
		List<MemberVO> getAdminListNotJoin = adminInfoDAO.selectAdminListNotJoin();
		
//		System.out.println("서비스에 들어오냐?"+getAdminListNotJoin.get(0).getMem_id());
		return getAdminListNotJoin;
	}

	@Override
	public void updateAdminForCancle(String mem_id) throws SQLException {
		adminInfoDAO.updateAdminForCancle(mem_id);
	}

	@Override
	public void updateAdminForApprove(String mem_id) throws SQLException {
		adminInfoDAO.updateAdminForApprove(mem_id);
	}

	@Override
	public void insertToAdminInfoForApprovedAdmin(AdminInfoVO adminInfo) throws SQLException {
		adminInfoDAO.insertToAdminInfoForApprovedAdmin(adminInfo);
	}

	@Override
	public void registImg(AdminInfoVO vo) throws SQLException {
		adminInfoDAO.registImg(vo);
	}

	@Override
	public void insertCoupon(CouponVO coupon) throws SQLException {
		adminInfoDAO.insertCoupon(coupon);
	}

	
	
}
