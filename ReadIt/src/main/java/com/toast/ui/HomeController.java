package com.toast.ui;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import bookred.book.dto.BookVO;
import bookred.book.service.BookService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private BookService bookService;
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home";
//	}
	
	@CrossOrigin("http://localhost:80")
	@RequestMapping(value = "/api", method = RequestMethod.GET)
	public String api(Locale locale, Model model) {
		
		
		return "api";
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model ) throws Exception{
		List<BookVO> bookList = bookService.getBookList();
		model.addAttribute("bookList", bookList);
		return "list";
	}
	
	@RequestMapping(value="/yaya", method=RequestMethod.GET)
	public String yaya(Model model ) throws Exception{
		System.out.println("yaya??????");
		bookService.yaya();
		return null;
	}
	@RequestMapping(value="/pay", method=RequestMethod.GET)
	public String pay(Model model ) throws Exception{
		String url = "payApi";
		return url;
	}
	@RequestMapping(value="/camera", method=RequestMethod.GET)
	public String camera(Model model ) throws Exception{
		String url = "cameraLogin";
		return url;
	}

}
