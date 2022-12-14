package bookred.book.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.admin.command.Criteria;
import bookred.book.dto.WishBookVO;
import bookred.book.service.WishBookService;

@Controller
@RequestMapping("/main/search/wishbookList")
public class WishBookListController {
	
	@Autowired
	private WishBookService wishBookService;
	
	@RequestMapping("/list")
	public String list(Criteria cri, Model model)throws Exception{
		String url="main/search/wishbook/list";
		return url;
	}
	@RequestMapping(value="/listAjax",produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<WishBookVO> listAjax(Criteria cri, Model model)throws Exception{
		String url="main/search/wishbook/list";
		System.out.println("오긴옴");
		List<WishBookVO> bookList = new ArrayList<WishBookVO>();
		bookList = wishBookService.getWishBookList();
		return bookList;
	}
	
	@RequestMapping("/search")
	public String search(Criteria cri, Model model)throws Exception{
		String url="main/search/wishbook/search";
		
		return url;
	}
	@RequestMapping("/regist")
	public String regist(WishBookVO wishBook, Model model, RedirectAttributes rttr)throws Exception{
		String url="redirect:/main/facilitySpace/white.do";
		System.out.println("title"+wishBook.getWish_title());
		System.out.println("mem_id"+wishBook.getMem_id());
		System.out.println("bookImg" + wishBook.getBook_imgurl());
		
		wishBookService.regist(wishBook);
		
		rttr.addFlashAttribute("from", "WishRegist");
		return url;
	}
}
