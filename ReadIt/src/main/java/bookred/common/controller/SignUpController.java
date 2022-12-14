package bookred.common.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import bookred.common.command.MultipartFileUploadResolver;
import bookred.common.dto.AttachVO;
import bookred.exception.InvalidPasswordException;
import bookred.member.command.MemberRegistCommand;
import bookred.member.dto.MemberVO;
import bookred.member.service.MemberService;

@Controller
public class SignUpController {
	@Autowired
	private MemberService memberService;
	
	 @Autowired
	 private PasswordEncoder passwordEncoder;
	 
	@RequestMapping("/checkPwd")
	public String checkPwd(String inputPwd, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		String url = "/admin/mypage/myInfo";
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_pwd = memberVO.getMem_pwd();
		if (!passwordEncoder.matches(inputPwd,mem_pwd)){
			url = "redirect:/admin/mypage/prevMyInfo.do";
			rttr.addFlashAttribute("from", "pwdFail");
		}
		
		return url;
	} 
	 
	@RequestMapping("/common/signupForm")
	public String SignUpForm() throws Exception {
		String url = "/common/signupForm";

		return url;
	}

	@RequestMapping(value = "/common/signup", method = RequestMethod.POST)
	public String SignUp(MemberRegistCommand registReq, HttpServletRequest request, RedirectAttributes rttr)
			throws Exception {
		String url = "redirect:/common/signupForm.do";
            
		String encodedPassword = passwordEncoder.encode(registReq.getMem_pwd()); // 비밀번호 암호화
		MemberVO member = registReq.toMemberVO();
		member.setMem_pwd(encodedPassword);
		
		try {
			memberService.regist(member);
		} catch (Exception e) {
			rttr.addFlashAttribute("status", "fail");
		}
		rttr.addFlashAttribute("status", "success");

		return url;
	}

	/*
	 * 수정한걸 받을수잇게씀 command를 만들어놨기 때문에 통째로 받음.
	 * 
	 * @RequestMapping(value = "/modify", method = RequestMethod.POST, produces =
	 * "text/plain;charset=utf-8") //session은 login 때문에 public String
	 * modify(MemberModifyCommand modifyReq, HttpSession session, RedirectAttributes
	 * rttr) throws Exception{
	 * 
	 * //detail로 가야해서 redirect forwarding .do 있어도 없어도 상관 x String url =
	 * "redirect:/common/signup.do";
	 * 
	 * //받은 command를 membervo로 MemberVO member = modifyReq.toMember();
	 * 
	 * //신규 파일 변경 및 기존 파일 삭제 String oldPicture =
	 * memberService.getMember(member.getMem_id()).getMem_img(); //파일 변경됐냐 안됐냐 확인 if
	 * (modifyReq.getUploadPicture() != null &&
	 * !modifyReq.getUploadPicture().isEmpty()) {
	 * 
	 * //picture 라는 method 인용 ResponseEntity<String> entitiy =
	 * picture(modifyReq.getMem_image(), oldPicture); String fileName =
	 * entitiy.getBody(); //자바에서는 위에처럼 가독성 있게 함. String fileName =
	 * picture(modifyReq.getPicture(), oldPicture).getBody();
	 * 
	 * System.out.println(fileName); member.setMem_img(fileName);
	 * 
	 * } else { member.setMem_img(oldPicture); }
	 * 
	 * //DB 내용 수정 memberService.modify(member);
	 * 
	 * 
	 * rttr.addAttribute("id", member.getId()); //redirect 힐때 parameter를 붙여주겟다.
	 * querystring으로 박힘
	 * 
	 * 
	 * //modify success 하면 parentreload 값 이용해서 detail 현재탕 닫고 새로고침 forwading. //but
	 * redirect 하면 이제 싫랭x
	 * 
	 * //로그인한 사용자의 경우 수정된 정보로 session 업로드 rttr.addFlashAttribute("parentReload",
	 * false); MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
	 * 
	 * //session 에서 loginuser 가져온 다음 id 같은지 확인 if (loginUser != null &&
	 * member.getMem_id().equals(loginUser.getMem_id())) {
	 * session.setAttribute("loginUser", member);
	 * rttr.addFlashAttribute("parentReload", true); } //success forwarding 안하고
	 * flash attribute 사용 -> request에 담긴다. 한번쓰고 만다 나갔다 들어올때 붙는다 ???
	 * 
	 * rttr.addFlashAttribute("from", "modify"); rttr.addAttribute("id",
	 * member.getMem_id());
	 * 
	 * return url;
	 * 
	 * }
	 */

//	@Resource(name = "picturePath")
//	private String picturePath;
//
//	@PostMapping(value = "/picture", produces = "text/plain;charset=utf-8")
//	@ResponseBody /* response 내보내줘 */
//	public ResponseEntity<String> picture(@RequestParam("pictureFile") MultipartFile multi,
//			/* resonseentity흫 string화 해서 내보내 */ String oldPicture) throws Exception {
//
//		ResponseEntity<String> entity = null;
//
//		/* 파일저장폴더설정 */
//		String uploadPath = picturePath;
//
//		/* 파일명 uuid */
//		String fileName = MakeFileName.toUUIDFileName(multi.getOriginalFilename(), "$$");
//		File storeFile = new File(uploadPath, fileName);
//
//		/* java파일 형태로 바꿔여함 */
//
//		/* 저장 directory 없으면 생성하고 (파일경로 생성) */
//		storeFile.mkdirs();
//
//		/* local HDD에 저장 */
//		multi.transferTo(storeFile);
//
//		/* 기존 파일 삭제 old picture 있는지 확인하고 oldfile명 고유함 */
//		if (oldPicture != null && !oldPicture.isEmpty()) {
//			File oldFile = new File(uploadPath, oldPicture);
//			if (oldFile.exists()) {
//				oldFile.delete();
//			}
//		}
//		/*
//		 * 파일명 내보내야해서 (위에 responseentity 해서 필요 x)
//		 * response.setCharacterEncoding("utf-8"); PrintWriter out =
//		 * response.getWriter();
//		 * 
//		 * out.print(fileName);
//		 * 
//		 * out.close();
//		 */
//
//		// 파일name string화 해서 담아서 내보냄 , ok는 200
//		entity = new ResponseEntity<String>(fileName, HttpStatus.OK);
//
//		return entity;
//
//	}
//
//	@GetMapping("/getPicture") /* getpicture 할떄 id 주면 file 내보냄 */
//	@ResponseBody
//	// id 받고 파일 받고 파일 만들고 response ..?
//	public ResponseEntity<byte[]> getPicture(String mem_id) throws Exception {
//
//		// membervo 에서 getmember하면 파일 옴 -> 파일명 알아야해서 db 갔다옴
//		String picture = memberService.getMember(mem_id).getMem_img();
//
//		InputStream in = null;
//		ResponseEntity<byte[]> entity = null;
//		String imgPath = this.picturePath;
//
//		// inputstream 열면 닫아야 하는데 이미지 없을수도 있으니꺼 ioexception
//		try {
//			in = new FileInputStream(new File(imgPath, picture));
//
//			// entitiy 심음 ioutils.to~~ 이게 다 일아서 byte 최적화해서 내보내줌, backgroud url로 들어가는
//			// 파일이 binary 향식으로 나가서 download로는 못씀 -> 파일을 직접 주는? markup의 src...
//			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), HttpStatus.CREATED);
//		} finally {
//			if (in != null)
//				in.close();
//		}
//
//		return entity;
//
//	}
	
/**/	
	/*
	 * @RequestMapping("/getPicture") public ModelAndView getPicture(Criteria cri,
	 * ModelAndView mnv) throws Exception{ String url =
	 * "common/signupForm/getPicture";
	 * 
	 * Map<String, Object> dataMap = memberService.getMemberList(cri);
	 * 
	 * mnv.addObject("dataMap", dataMap); mnv.setViewName(url);
	 * 
	 * return mnv; }
	 */
	

	/*
	 * @RequestMapping("/imgRegist") public ModelAndView detailForRegist(String
	 * mem_id, @RequestParam(defaultValue = "") String from, HttpServletRequest
	 * request, ModelAndView mnv, MemberRegistCommand registReq, RedirectAttributes
	 * rttr) throws SQLException{ String url = "common/imgRegist.do";
	 * 
	 * MemberVO member = registReq.toMemberVO();
	 * 
	 * if (!from.equals("success")) { member = registReq.toMemberVO();
	 * 
	 * } else { url = "redirect:/common/signupForm/imgRegist.do"; }
	 * 
	 * mnv.addObject("member", member); mnv.setViewName(url);
	 * 
	 * return mnv; }
	 */
	

	/*
	 * @RequestMapping("/registForm")
	 * 
	 * @ResponseBody public String registForm(MemberVO vo) throws Exception{ try {
	 * if(!vo.getImgFile().getOriginalFilename().equals("")) {
	 * vo.setImg(vo.getImgFile().getBytes()); } } catch (IOException e) {
	 * e.printStackTrace(); } memberService.regist(vo); return "success"; }
	 */
	

	// 중복 아이디 체크 duplicate
	@PostMapping("/common/idCheck")
	@ResponseBody
	public ResponseEntity<String> idCheck(String mem_id) throws Exception {

		ResponseEntity<String> entity = null;
		System.out.println(mem_id);
		int count = memberService.getMemberCount(mem_id);

		if (count > 0) {
			entity = new ResponseEntity<String>("duplicated", HttpStatus.OK);
		} else {
			entity = new ResponseEntity<String>("", HttpStatus.OK);
		}

		return entity;
	}
	
	

}
