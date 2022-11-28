package bookred.main.service;

import java.sql.SQLException;
import java.util.List;

import bookred.main.dto.MovieVO;

public interface MovieService  {
	
	List<MovieVO> getMovieListForAI(String[] movie_no_list) throws SQLException;
	
	void updateMBTIMovieCount() throws SQLException;
	
	void updateUserMovieCount() throws SQLException;
	

}
