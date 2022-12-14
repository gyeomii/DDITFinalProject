package bookred.socket.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bookred.admin.dto.StupidBookVO;
import bookred.admin.dto.TodolistVO;
import bookred.book.dto.WishBookVO;
import bookred.common.dto.MenuVO;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RMVO;
import bookred.socket.dto.AlramVO;

public interface SocketDAO {
	
	public List<RMVO>  selectRMStatusZero() throws SQLException;
	public List<WishBookVO>  selectWishBookListWisthStateZeroCount() throws SQLException;
	public List<MemberVO>  selectMemberBeforeApproval() throws SQLException;
	public List<TodolistVO>  selectTodoListCountTodayEnd(String mem_id) throws SQLException;
	public List<StupidBookVO>  selectStupidBookAlramList() throws SQLException;
	public List<MenuVO> selectSubMenu(String mCode) throws SQLException;
	public int selectVolList(String memId) throws SQLException; 

	
}
