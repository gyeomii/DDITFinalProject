package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dto.AdminInfoVO;
import bookred.admin.dto.SelectAdminVO;
import bookred.member.dto.CouponVO;
import bookred.member.dto.MemberVO;


public interface AdminInfoDAO {
	
	SelectAdminVO selectAdminById(String id)throws SQLException;
	
	void updateFinger(SelectAdminVO filename) throws SQLException; 
	
	List<MemberVO> selectAdminListNotJoin() throws SQLException;
	
	void updateAdminForCancle(String mem_id) throws SQLException;
	void updateAdminForApprove(String mem_id) throws SQLException;
	
	void insertToAdminInfoForApprovedAdmin(AdminInfoVO adminInfo) throws SQLException;
	
	void registImg(AdminInfoVO vo) throws SQLException;
	
	// 회원관리
	
	void insertCoupon(CouponVO coupon) throws SQLException;

}
