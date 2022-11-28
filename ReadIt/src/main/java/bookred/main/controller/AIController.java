package bookred.main.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.book.dto.BookVO;
import bookred.book.service.BookService;
import bookred.main.dto.MovieVO;
import bookred.main.service.MovieService;
import bookred.member.dto.MemberVO;

@Controller
@RequestMapping("/main/ai")
public class AIController {
	
	@Autowired
	private BookService bookService;
	
	@Autowired
	private MovieService movieService;

	@RequestMapping("/recommand1")
	public String main() throws Exception {
		String url = "main/ai/recommand1";
		return url;
	}

	@RequestMapping("/recommandReview")
	public ModelAndView review(HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		String url = "http://127.0.0.1:5000/recommandReview?mem_id=" + mem_id;
		String sb = "";
		String[] movie_no_list = new String[3];
		movieService.updateMBTIMovieCount();
		try {
			HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

			String line = null;

			while ((line = br.readLine()) != null) {
				sb = sb + line;
			}
			System.out.println("========br======" + sb.toString());
			if (sb.toString().contains("ok")) {
				System.out.println("test");

			}
			br.close();

			System.out.println("" + sb.toString());
			String strList = sb.toString();
			movie_no_list = strList.split(",");
			List<MovieVO> movielist = movieService.getMovieListForAI(movie_no_list);
			mav.addObject("movielist", movielist); // "test1"는 jsp파일에서 받을때 이름,
			mav.setViewName("main/ai/recommandReview"); // jsp파일 이름
			System.out.println(movie_no_list);
		} catch (MalformedURLException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (IOException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (NumberFormatException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (Exception e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		}
		return mav;
	}

	
	@RequestMapping("/recommandRecord")
	public ModelAndView record(HttpServletRequest request,  RedirectAttributes rttr) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		String url = "http://127.0.0.1:5000/recommandRecord?mem_id=" + mem_id;
		String sb = "";
		String[] book_no_list = new String[3];
		bookService.updateAIRecordCountPlus();
		try {
			HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

			String line = null;

			while ((line = br.readLine()) != null) {
				sb = sb + line;
			}
			System.out.println("========br======" + sb.toString());
			if (sb.toString().contains("ok")) {
				System.out.println("test");

			}
			br.close();

			System.out.println("" + sb.toString());
			String strList = sb.toString();
			book_no_list = strList.split(",");
			List<BookVO> bookList = bookService.getBookListForAI(book_no_list);
			mav.addObject("bookList", bookList); // "test1"는 jsp파일에서 받을때 이름,
			mav.setViewName("main/ai/recommandRecord"); // jsp파일 이름
		} catch (MalformedURLException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (IOException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (NumberFormatException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (Exception e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		}
		
		return mav;

	}

	@RequestMapping("/recommandMBTI")
	public ModelAndView mbti(HttpServletRequest request,  RedirectAttributes rttr) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		String url = "http://127.0.0.1:5000/recommandMBTI?mem_id=" + mem_id;
		String sb = "";
		String[] book_no_list = new String[3];
		bookService.updateAIMBTIBookCountPlus();
		try {
			HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

			String line = null;

			while ((line = br.readLine()) != null) {
				sb = sb + line;
			}
			System.out.println("========br======" + sb.toString());
			if (sb.toString().contains("ok")) {
				System.out.println("test");

			}
			br.close();

			System.out.println("" + sb.toString());
			String strList = sb.toString();
			book_no_list = strList.split(",");
			List<BookVO> bookList = bookService.getBookListForAI(book_no_list);
			mav.addObject("bookList", bookList); // "test1"는 jsp파일에서 받을때 이름,
			mav.setViewName("main/ai/recommandMBTI"); // jsp파일 이름
		} catch (MalformedURLException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (IOException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (NumberFormatException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (Exception e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		}
		
		return mav;
		
	}

	@RequestMapping("/recommandMovie")
	public ModelAndView movie(HttpServletRequest request,  RedirectAttributes rttr) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		String url = "http://127.0.0.1:5000/recommandMovie?mem_id=" + mem_id;
		String sb = "";
		String[] movie_no_list = new String[3];
		movieService.updateUserMovieCount();
		try {
			HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

			String line = null;

			while ((line = br.readLine()) != null) {
				sb = sb + line;
			}
			System.out.println("========br======" + sb.toString());
			if (sb.toString().contains("ok")) {
				System.out.println("test");

			}
			br.close();

			System.out.println("" + sb.toString());
			String strList = sb.toString();
			movie_no_list = strList.split(",");
			System.out.println(movie_no_list);
			
			
			List<MovieVO> movielist = movieService.getMovieListForAI(movie_no_list);
			
			mav.addObject("movielist", movielist); // "test1"는 jsp파일에서 받을때 이름,
			mav.setViewName("main/ai/recommandMovie"); // jsp파일 이름
		} catch (MalformedURLException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (IOException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (NumberFormatException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (Exception e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		}
		
		return mav;
	}

	@RequestMapping(value = "/recommandPersonal", method = RequestMethod.GET)
	public ModelAndView personal(HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		String url = "http://127.0.0.1:5000/recommandPersonal?mem_id=" + mem_id;
		String sb = "";
		String[] book_no_list = new String[3];
		bookService.updateAIUserCustomCountPlus();
		try {
			HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

			String line = null;

			while ((line = br.readLine()) != null) {
				sb = sb + line;
			}
			System.out.println("========br======" + sb.toString());
			if (sb.toString().contains("ok")) {
				System.out.println("test");

			}
			br.close();

			System.out.println("" + sb.toString());
			String strList = sb.toString();
			book_no_list = strList.split(",");
			List<BookVO> bookList = bookService.getBookListForAI(book_no_list);
			mav.addObject("bookList", bookList); // "test1"는 jsp파일에서 받을때 이름,
			mav.setViewName("main/ai/recommandPersonal"); // jsp파일 이름
		} catch (MalformedURLException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (IOException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (NumberFormatException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (Exception e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		}
		
		
		return mav;

	}

	@RequestMapping("/recommandFace")
	public ModelAndView face(HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO) session.getAttribute("loginUser");
		String mem_id = member.getMem_id();
		String url = "http://127.0.0.1:5000/recommandFace?mem_id=" + mem_id;
		String sb = "";
		String[] book_no_list = new String[3];
		bookService.updateAIFaceAiCountPlus();
		try {
			HttpURLConnection conn = (HttpURLConnection) new URL(url).openConnection();

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

			String line = null;

			while ((line = br.readLine()) != null) {
				sb = sb + line;
			}
			System.out.println("========br======" + sb.toString());
			if (sb.toString().contains("ok")) {
				System.out.println("test");

			}
			br.close();

			System.out.println("" + sb.toString());
			String strList = sb.toString();
			book_no_list = strList.split(",");
			List<BookVO> bookList = bookService.getBookListForAI(book_no_list);
			mav.addObject("bookList", bookList); // "test1"는 jsp파일에서 받을때 이름,
			mav.setViewName("main/ai/recommandFace"); // jsp파일 이름
		} catch (MalformedURLException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (IOException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (NumberFormatException e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		} catch (Exception e) {
			mav.setViewName("redirect:/main/ai/recommand1");
			rttr.addFlashAttribute("from", "ai");
		}
		
		
		return mav;
	}

}