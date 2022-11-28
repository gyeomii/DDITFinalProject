package bookred.member.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;

import bookred.admin.command.Criteria;
import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;
import bookred.book.dto.WishBookVO;
import bookred.book.service.BookService;
import bookred.main.dto.EventVO;
import bookred.member.command.RentCriteria;
import bookred.member.dto.CartVO;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RentBackVO;
import bookred.member.dto.RentBookVO;
import bookred.member.dto.ReviewVO;
import bookred.member.service.CartService;
import bookred.member.service.MyWishBookService;
import bookred.member.service.RentBackService;
import bookred.member.service.ReserveService;
import bookred.member.service.ReviewService;

@Controller
@RequestMapping("/main/myBook/myWishBook")
public class MyWishBookController {
	
	@Autowired
	private RentBackService rentBackService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ReserveService reserveService;
	
	@Autowired
	private MyWishBookService myWishBookService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private BookService bookService;
	
	
	
	@PostMapping(value="/checkCart")
	@ResponseBody
	public String checkCart(HttpServletRequest req, CartVO cart)throws Exception{
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		
		
		String checkResult = "";
		cart.setMem_id(mem_id);		
		System.out.println("카트" + cart.getBook_isbn());
		System.out.println("카트" + cart.getMem_id());

		
		List<CartVO> cartList = cartService.checkCart(cart);
		System.out.println(cartList);
		
		if (!cartList.isEmpty()) {
			checkResult = "DUPLICATED";
		} else if (cartList != null) { checkResult = "널";}
		
		System.out.println(checkResult);
		return checkResult;
		
	}	
	
	@PostMapping(value="/insertCart")
	@ResponseBody
	public String insertCart(BookVO book, HttpServletRequest req)throws Exception{
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		
		CartVO cart = new CartVO();
		cart.setMem_id(mem_id);
		cart.setBook_isbn(book.getBook_isbn());
		cartService.insertCart(cart);
		
		System.out.println("추가완료");
		
		return "success";
		
	}	
	
	@RequestMapping("/bookCart")
	public ModelAndView bookCart(HttpServletRequest req, BookCriteria cri,ModelAndView mnv)throws Exception{
		String url="/member/myInfo/cart/bookCart";
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		System.out.println(mem_id);
		
		Map<String,Object> dataMap = cartService.getCartList(cri, mem_id);
		
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	
	
	
	
	
	
}

