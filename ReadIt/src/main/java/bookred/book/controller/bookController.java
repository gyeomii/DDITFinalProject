package bookred.book.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import bookred.book.dto.BookVO;
import bookred.book.service.BookService;

@Controller
@RequestMapping("/book")
public class bookController {

	@Autowired
	private BookService bookService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model ) throws Exception{
		List<BookVO> bookList = bookService.getBookList();
		model.addAttribute("bookList", bookList);
		return "list";
	}
	
	

	
	
	
}
