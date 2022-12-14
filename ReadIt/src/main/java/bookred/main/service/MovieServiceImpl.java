package bookred.main.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bookred.main.dao.MovieDAO;
import bookred.main.dto.MovieVO;

public class MovieServiceImpl implements MovieService {
	
	private MovieDAO movieDAO;
	public void setMovieDAO(MovieDAO movieDAO) {
		this.movieDAO = movieDAO;
	}

	@Override
	public List<MovieVO> getMovieListForAI(String[] movie_no_list) throws SQLException {
		List<MovieVO> movieList = new ArrayList<MovieVO>();
		for (String movie_no : movie_no_list) {
			MovieVO movie = movieDAO.selectMovieByMovieNo(Integer.parseInt(movie_no));
			System.out.println(movie.getMo_title());
			System.out.println(movie.getMo_img());
			movieList.add(movie);
		}
		
		return movieList;
	}

	@Override
	public void updateMBTIMovieCount() throws SQLException {
		movieDAO.updateMBTIMovieCount();
	}

	@Override
	public void updateUserMovieCount() throws SQLException {
		movieDAO.updateUserMovieCount();
	}

}
