package bookred.common.service;

import java.sql.SQLException;
import java.util.List;

import bookred.common.dto.MenuVO;


public interface MenuService {

	List<MenuVO> getMainMenuList()throws SQLException;
	
	List<MenuVO> getSubMenuList(String mCode)throws SQLException;
	
	MenuVO getMenuByMcode(String mCode)throws SQLException;
	
	MenuVO getMenuByMname(String mName)throws SQLException;
}
