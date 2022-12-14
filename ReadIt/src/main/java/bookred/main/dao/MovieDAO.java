package bookred.main.dao;

import java.sql.SQLException;

import bookred.main.dto.MovieVO;

public interface MovieDAO {
	
	MovieVO selectMovieByMovieNo(int mo_no) throws SQLException;
	
	public void updateMBTIMovieCount() throws SQLException;
	void updateUserMovieCount() throws SQLException;

}
