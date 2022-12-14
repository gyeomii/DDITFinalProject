package bookred.member.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bookred.book.command.BookCriteria;
import bookred.book.dto.BookVO;
import bookred.book.service.BookService;
import bookred.member.dto.CartVO;
import bookred.member.dto.MemberVO;
import bookred.member.service.CartService;

@Controller
@RequestMapping("/main/myInfo")
public class MemberCartController {

	@Autowired
	private CartService cartService;

	@Autowired
	private BookService bookService;

	@RequestMapping("/bookCart")
	public ModelAndView bookCart(HttpServletRequest req, BookCriteria cri, ModelAndView mnv) throws Exception {
		String url = "/member/myInfo/cart/bookCart";
		String mem_id;

//		try {
			HttpSession session = req.getSession();
			MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
			mem_id = memberVO.getMem_id();
			Map<String, Object> dataMap = cartService.getCartList(cri, mem_id);
			mnv.addObject("dataMap", dataMap);
			mnv.setViewName(url);
//		} catch (Exception e) {
//			url = "/common/loginForm?";
//			mnv.setViewName(url);
//		}

		return mnv;
	}

	@RequestMapping("/bookCart/delete")
	public ModelAndView delete(ModelAndView mnv, HttpServletRequest req, @RequestParam List<String> checkedValue)
			throws Exception {
		String url = "redirect:/main/myInfo/bookCart.do";

		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();

		CartVO cart = new CartVO();
		cart.setMem_id(mem_id);
		int count = 0;

		for (String book_isbn : checkedValue) {
//			 	System.out.println(book_isbn);
			cart.setBook_isbn(book_isbn);
			cartService.deleteCart(cart);
			count++;
		}
		System.out.println("????????? ??????" + count + "???");

		mnv.setViewName(url);

		return mnv;

	}

	@PostMapping(value = "/insertCart")
	@ResponseBody
	public String insertCart(BookVO book, HttpServletRequest req) throws Exception {
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();

		CartVO cart = new CartVO();
		cart.setMem_id(mem_id);
		cart.setBook_isbn(book.getBook_isbn());
		cartService.insertCart(cart);

		System.out.println("????????????");

		return "success";

	}

	@PostMapping(value = "/checkCart")
	@ResponseBody
	public String checkCart(HttpServletRequest req, CartVO cart) throws Exception {

		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();

		String checkResult = "";
		cart.setMem_id(mem_id);
		System.out.println("??????" + cart.getBook_isbn());
		System.out.println("??????" + cart.getMem_id());

		List<CartVO> cartList = cartService.checkCart(cart);
		System.out.println(cartList);

		if (!cartList.isEmpty()) {
			checkResult = "DUPLICATED";
		} else if (cartList != null) {
			checkResult = "???";
		}

		System.out.println(checkResult);
		return checkResult;

	}

}
