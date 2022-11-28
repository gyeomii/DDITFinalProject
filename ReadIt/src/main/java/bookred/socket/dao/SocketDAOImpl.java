package bookred.socket.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.admin.dto.StupidBookVO;
import bookred.admin.dto.TodolistVO;
import bookred.book.dto.WishBookVO;
import bookred.common.dto.MenuVO;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RMVO;
import bookred.socket.dto.AlramVO;

public class SocketDAOImpl implements SocketDAO {
	
	private SqlSession session;
	public void setSqlSession(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<RMVO> selectRMStatusZero() throws SQLException {
		List<RMVO>  rmList =  session.selectList("Reserve-Mapper.selectRMStatusZero");
		return rmList;
	}

	@Override
	public List<WishBookVO> selectWishBookListWisthStateZeroCount() throws SQLException {
		List<WishBookVO>  wishBookList =  session.selectList("WishBook-Mapper.selectWishBookListWisthStateZeroCount");
		return wishBookList;
	}

	@Override
	public List<MemberVO> selectMemberBeforeApproval() throws SQLException {
		List<MemberVO>  MemberList =  session.selectList("Member-Mapper.selectMemberBeforeApproval");
		return MemberList;
	}

	@Override
	public List<TodolistVO> selectTodoListCountTodayEnd(String mem_id) throws SQLException {
		List<TodolistVO> todolist =  session.selectList("Todolist-Mapper.selectTodoListTodayFromEnd",mem_id);
		System.out.println("검색 : ");
		return todolist;
	}


	@Override
	public List<StupidBookVO> selectStupidBookAlramList() throws SQLException {
		List<StupidBookVO> stpudList =  session.selectList("Stupid-Mapper.selectStupidBookAlramList");
		return stpudList;
	}

	@Override
	public List<MenuVO> selectSubMenu(String mCode) throws SQLException {
		List<MenuVO> menuList = session.selectList("Menu-Mapper.selectMenuByMcode",mCode);
		return menuList;
	}

	@Override
	public int selectVolList(String memId) throws SQLException {
		int VolList = session.selectOne("VolApply-Mapper.selectVolList",memId);
		return VolList;
	}

}
