package com.toast.ui;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import bookred.book.dto.BookVO;
import bookred.book.service.BookService;



/**
 * Handles requests for the application home page.
 */
@RestController
public class HomeController2 {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController2.class);
	
	@Autowired
	private BookService bookService;
	
	
	@RequestMapping(value = "/db", method = RequestMethod.POST)
	public String db(@RequestBody BookVO book) throws Exception{
		System.out.println("-------------------");
		System.out.println(book.getBook_title());
		bookService.regist(book);
		
		return "";
	}
	

}
