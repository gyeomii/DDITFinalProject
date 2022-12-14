package bookred.admin.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.dto.AdminRentVO;
import bookred.book.dto.BookVO;
import bookred.member.dto.DeliveryVO;
import bookred.member.dto.LockerVO;
import bookred.member.dto.PayVO;
import bookred.member.dto.RMVO;
import bookred.member.dto.RentBackVO;

public class RentReturnDAOImpl implements RentReturnDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	@Override
	public List<RMVO> selectRMList(int rent_code) throws SQLException {
		List<RMVO> rmList = sqlSession.selectList("RentReturn-Mapper.selectRMList",rent_code);
		return rmList;
	}
	@Override
	public List<String> selectIsbnList(int rm_no) throws SQLException {
		List<String> isbnList = sqlSession.selectList("RentReturn-Mapper.selectIsbnList", rm_no);
		return isbnList;
	}
	@Override
	public LockerVO selectLocker(int rm_no) throws SQLException {
		LockerVO locker = sqlSession.selectOne("RentReturn-Mapper.selectLocker", rm_no);
		return locker;
	}
	@Override
	public void insertRMLibrary(RMVO rmVO) throws SQLException {
		sqlSession.insert("RentReturn-Mapper.insertRMLibrary",rmVO);
		
	}
	@Override
	public int selectRMSeqNextVal() throws SQLException {
		int rm_no = sqlSession.selectOne("RentReturn-Mapper.selectRMSeqNextVal");
		return rm_no;
		
	}
	@Override
	public int selectRentSeqNext() throws SQLException {
		int rent_no = sqlSession.selectOne("RentReturn-Mapper.selectRentSeqNext");
		return rent_no;
	}
	@Override
	public void insertRentBackLibrary(RentBackVO rentBackVO) throws SQLException {
		sqlSession.insert("RentReturn-Mapper.insertRentBackLibrary",rentBackVO);
		
	}
	@Override
	public String selectCarNo(int rm_no) throws SQLException {
		String car_no = sqlSession.selectOne("RentReturn-Mapper.selectCarNo", rm_no);
		return car_no;
	}
	@Override
	public void updateRMStatus(RMVO rm) throws SQLException {
		sqlSession.update("RentReturn-Mapper.updateRMStatus", rm);
	}
	
	@Override
	public void updateBookStateCode(BookVO book) throws SQLException {
		sqlSession.update("RentReturn-Mapper.updateBookStateCode", book);
		
	}
	@Override
	public BookVO selectBookByBookNo(int book_no) throws SQLException {
		BookVO book = sqlSession.selectOne("RentReturn-Mapper.selectBookByBookNo", book_no);
		return book;
	}
	@Override
	public RentBackVO selectRentBackAndBookByBookNo(int book_no) throws SQLException {
		RentBackVO selectRentBackAndBook = sqlSession.selectOne("RentReturn-Mapper.selectRentBackAndBookByBookNo", book_no);
		return selectRentBackAndBook;
	}
	@Override
	public List<RentBackVO> selectRentBackList(String mem_id) throws SQLException {
		List<RentBackVO> allRentList = new ArrayList<RentBackVO>();
		allRentList = sqlSession.selectList("RentReturn-Mapper.selectRentBackList", mem_id);

		return allRentList;
	}
	@Override
	public void updateBookReturnDone(RentBackVO rentBack) throws SQLException {
		sqlSession.update("RentReturn-Mapper.updateBookReturnDone", rentBack);
	}
	@Override
	public List<RentBackVO> selectReturnList() throws SQLException {
			List<RentBackVO> returnList = sqlSession.selectList("RentReturn-Mapper.selectReturnList");
			return returnList;
	}
	@Override
	public void updateRentBackDelay(RentBackVO vo) throws SQLException {
		sqlSession.update("RentReturn-Mapper.updateRentBackDelay", vo);
	}
	@Override
	public void updateBKReserve(AdminRentVO vo) throws SQLException {
		sqlSession.update("RentReturn-Mapper.updateBKReserve", vo);
	}
	@Override
	public void updateBookStockMinus(AdminRentVO vo) throws SQLException {
		sqlSession.update("RentReturn-Mapper.updateBookStockMinus",vo);
	}
	@Override
	public void updateBookStockPlus(String isbn) throws SQLException {
		sqlSession.update("RentReturn-Mapper.updateBookStockPlus", isbn);
	}
	@Override
	public DeliveryVO selectDelivery(int rm_no) throws SQLException {
		DeliveryVO delivery = sqlSession.selectOne("RentReturn-Mapper.selectDelivery", rm_no);
		return delivery;
	}
	@Override
	public PayVO selectPay(int dv_no) throws SQLException {
		PayVO pay = sqlSession.selectOne("RentReturn-Mapper.selectPay", dv_no);
		return pay;
	}
	@Override
	public void updatePayCancel(PayVO pay) throws SQLException {
		sqlSession.update("RentReturn-Mapper.updatePayCancel", pay);
	}
	@Override
	public int selectBookNoByRM(int rm_no) throws SQLException {
		int book_no = sqlSession.selectOne("RentReturn-Mapper.selectBookNoByRM", rm_no);
		return book_no;
	}
	

}
