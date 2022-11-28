package bookred.common.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bookred.common.dto.MenuVO;

public class MenuDAOImpl implements MenuDAO {
	
	private SqlSession sqlSession;
	private MenuDAO menuDAO;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	public void setMenuDAO(MenuDAO menuDAO) {
		this.menuDAO = menuDAO;
	}

	@Override
	public List<MenuVO> selectMainMenu() throws SQLException {
		List<MenuVO> menuList = sqlSession.selectList("Menu-Mapper.selectMainMenu");
		return menuList;
	}

	@Override
	public List<MenuVO> selectSubMenu(String mCode) throws SQLException {
		List<MenuVO> menuList = sqlSession.selectList("Menu-Mapper.selectSubMenu",mCode);
		return menuList;
	}

	@Override
	public MenuVO selectMenuByMcode(String mCode) throws SQLException {
		MenuVO menu = sqlSession.selectOne("Menu-Mapper.selectMenuByMcode",mCode);
		return menu;
	}
	
	@Override
	public MenuVO selectMenuByMname(String mName) throws SQLException {
		MenuVO menu = sqlSession.selectOne("Menu-Mapper.selectMenuByMname",mName);
		return menu;
	}

}
