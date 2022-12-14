package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.dto.AdminInfoVO;
import bookred.admin.dto.SelectAdminVO;
import bookred.exception.InvalidPasswordException;
import bookred.exception.NotFoundIdException;
import bookred.member.dto.CouponVO;
import bookred.member.dto.MemberVO;

public interface AdminInfoService {

	// 상세조회
	SelectAdminVO getAdmin(String mem_id) throws SQLException;
	
	SelectAdminVO getAdminForModify(String mem_id) throws SQLException;

	// 회원등록
	public void fingerRegist(SelectAdminVO finger) throws Exception;

	// 회원수정
	public void fingerModify(SelectAdminVO filename) throws Exception;

	// 회원탈퇴
	public void remove(String mem_id) throws Exception;
	
	List<MemberVO> getAdminListNotJoin() throws SQLException;
	
	public void updateAdminForCancle(String mem_id) throws SQLException;
	public void updateAdminForApprove(String mem_id) throws SQLException;
	
	public void insertToAdminInfoForApprovedAdmin(AdminInfoVO adminInfo) throws SQLException;
	
	public void registImg(AdminInfoVO vo) throws SQLException;
	
	public void insertCoupon(CouponVO coupon) throws SQLException;

}
