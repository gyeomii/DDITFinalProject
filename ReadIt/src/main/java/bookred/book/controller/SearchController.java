package bookred.book.controller;


import java.util.List;
import java.util.Map;

import org.omg.CORBA.REBIND;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;
import bookred.book.service.BookService;
import bookred.member.command.RentCriteria;
import bookred.member.dto.ReviewVO;
import bookred.member.service.ReviewService;

@Controller
@RequestMapping("/main/search")
public class SearchController {
	
	@Autowired
	private BookService bookService;
	@Autowired
	private ReviewService reviewServive;
	
	
	@RequestMapping("/easySearch")	
	public ModelAndView easySearch(BookCriteria cri, ModelAndView mnv) throws Exception {
		String url = "main/search/easySearch2";
		
		Map<String, Object> dataMap = bookService.getBookByBookTitle(cri);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("/deepSearch")	
	public ModelAndView deepSearch(BookCriteria cri, ModelAndView mnv) throws Exception {
		String url = "main/search/deepSearch";
		
		Map<String, Object> dataMap = bookService.getBookByBookTitle(cri);	
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}	
	
	@RequestMapping("/bookDetail")	
	public ModelAndView bookDetail(@RequestParam(defaultValue = "값안넘어옴") int book_no, ModelAndView mnv, RentCriteria cri) throws Exception {
		String url = "main/search/bookDetail";
		
		System.out.println(book_no);
		BookVO book = bookService.getBookByBookNo(book_no);
		String book_isbn=book.getBook_isbn();
		int rentable = bookService.selectBookStock(book_isbn).getBook_rentable();
		int count = bookService.selectBookStock(book_isbn).getBook_count();
		book.setBook_rentable(rentable);
		book.setBook_count(count);
		
		
		int avg_rev = reviewServive.getAvgRev(book_isbn);
		System.out.println(avg_rev);
			
		ReviewVO reviewVO = new ReviewVO();
		reviewVO.setBook_isbn(book_isbn);
		System.out.println(reviewVO.getBook_isbn());
		Map<String, Object> dataMap = reviewServive.getReviewListbyIsbn(cri, reviewVO);
		
		mnv.addObject("book",book);
		mnv.addObject("avg_rev",avg_rev);
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		return mnv;
	}	
	
	@RequestMapping(value = "/easySearchList", method = RequestMethod.GET, produces = "application/json;charset=utf-8")
	@ResponseBody
	public Map<String, Object> list(BookCriteria cri, Model model) throws Exception {
		System.out.println(cri.getKeyword());
		Map<String, Object> dataMap = bookService.getBookByBookTitle(cri);	
		return dataMap;
	}
	
	@GetMapping("/recommandList")
	public String recommandList(Model model) throws Exception{
		String url = "main/search/recommandList";
		List<BookVO> bookList = bookService.getRECMBookList();
		model.addAttribute("bookList",bookList);
		return url;
	}
	@GetMapping("/bestList")
	public String bestList(Model model) throws Exception{
		String url = "main/search/bestList";
		List<BookVO> bookList = bookService.getBestBookList();
		model.addAttribute("bookList",bookList);
		return url;
	}
	

}
