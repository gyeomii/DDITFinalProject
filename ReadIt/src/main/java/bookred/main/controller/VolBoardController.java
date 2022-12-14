package bookred.main.controller;

import java.io.File;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;
import com.opensymphony.module.sitemesh.taglib.page.ApplyDecoratorTag;

import bookred.admin.command.Criteria;
import bookred.common.command.MultipartFileUploadResolver;
import bookred.common.dao.AttachDAO;
import bookred.common.dto.AttachVO;
import bookred.main.command.VolBoardModifyCommand;
import bookred.main.command.VolBoardRegistCommand;
import bookred.main.dto.VolApplyVO;
import bookred.main.dto.VolBoardVO;
import bookred.main.service.VolApplyService;
import bookred.main.service.VolBoardService;
import bookred.member.dto.MemberVO;
import bookred.member.service.MemberService;

@Controller
@RequestMapping("/main/board/volBoard")
public class VolBoardController {
	@Autowired
	private VolBoardService volBoardService;
	@Autowired
	private AttachDAO attachDAO;
	
	@Autowired
	private VolApplyService volApplyService;
	
	@RequestMapping("/list")
	public ModelAndView volBoardList(Criteria cri, ModelAndView mnv) throws Exception {
		String url = "main/board/volunteer/list";

		Map<String, Object> dataMap = volBoardService.getVolBoardList(cri);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);

		return mnv;
	}

	@RequestMapping("/registForm")
	public String registForm() {
		String url = "main/board/volunteer/regist";
		return url;
	}

	@Resource(name = "fileUploadPath")
	private String fileUploadPath;

	@RequestMapping(value = "/regist", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String regist(VolBoardRegistCommand registReq, HttpServletRequest request, RedirectAttributes rttr)
			throws Exception {
		String url = "redirect:/main/facilitySpace/white.do";

		String savePath = this.fileUploadPath;
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(registReq.getUploadFile(), savePath);

		VolBoardVO volBoard = registReq.toVolBoardVO();

		volBoard.setAttachList(attachList);
		volBoard.setVb_title(HTMLInputFilter.htmlSpecialChars(volBoard.getVb_title()));

		System.out.println(volBoard.getVb_title());
		volBoardService.regist(volBoard);
		// output
		rttr.addFlashAttribute("from", "volRegist");
		return url;
	}

	
	@RequestMapping("/application")
	public String applicationRegist(VolApplyVO volApply, RedirectAttributes rttr, HttpServletRequest request)throws Exception {		
		String url = "redirect:/main/facilitySpace/white.do";
		
		System.out.println(volApply.getVb_no());
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		volApply.setMem_id(loginUser.getMem_id());
		
		volBoardService.registVolApply(volApply);
		
		rttr.addFlashAttribute("from","volApplication");
		return url;
	}

	
	@RequestMapping("/detail")
	public ModelAndView detail(int vb_no, @RequestParam(defaultValue = "") String from, HttpServletRequest request,
			ModelAndView mnv) throws SQLException {
		String url = "main/board/volunteer/detail";

		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		List<VolApplyVO> volApply = volApplyService.getVolApplyList(vb_no);
		mnv.addObject("volApply",volApply);
		int result = 0;
		if(loginUser != null) {
			result = volBoardService.getVolBoardDuplicateChack(vb_no,loginUser);
		}
		
		if(result > 0) {
			mnv.addObject("duplicateCheck",true);
		}else {
			mnv.addObject("duplicateCheck",false);
		}
		
		VolBoardVO volBoard = null;
		if (!from.equals("list")) {
			volBoard = volBoardService.getVolBoardFotModify(vb_no);
		} else {
			volBoard = volBoardService.getVolBoard(vb_no);
			url = "redirect:/main/board/volBoard/detail.do?vb_no=" + vb_no;
		}
		mnv.addObject("volBoard", volBoard);
		mnv.setViewName(url);
		mnv.addObject("volApply",volApply);

		return mnv;
	}

	@RequestMapping(value = "/applyConfirm", method = RequestMethod.POST)
	@ResponseBody
	public String applyConfirm(@RequestBody List<VolApplyVO> volApplyList, HttpServletRequest request) throws SQLException {
		
		//System.out.println(volApplyList.toString());
		
		for (VolApplyVO subinVO : volApplyList) {
			volApplyService.modify(subinVO);			
		}
		
		return "OK";
	}
	
	@RequestMapping("/getFile")
	public String getFile(int ano, HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {

		String url = "downloadFile";

		AttachVO attach = volBoardService.getAttachByAno(ano);

		model.addAttribute("savedPath", attach.getUploadPath());
		model.addAttribute("fileName", attach.getFileName());

		return url;
	}
	
	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(int vb_no, ModelAndView mnv) throws Exception {
		String url = "main/board/volunteer/modify";

		VolBoardVO volBoard = volBoardService.getVolBoardFotModify(vb_no);
		mnv.addObject("volBoard", volBoard);
		mnv.setViewName(url);

		return mnv;

	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(VolBoardModifyCommand volBoardReq, HttpServletRequest request, RedirectAttributes rttr)
			throws Exception {
		String url = "redirect:/main/board/volBoard/detail.do";

		if (volBoardReq.getDeleteFile() != null && volBoardReq.getDeleteFile().size() > 0) {
			for (Integer ano : volBoardReq.getDeleteFile()) {
				AttachVO attach = attachDAO.selectAttachByAno(ano);
				File deleteFile = new File(attach.getUploadPath(), attach.getFileName());
				if (deleteFile.exists()) {
					deleteFile.delete(); // File ??????
				}
				attachDAO.deleteAttach(ano);
			}
		}
		// ?????? ??????
		String savePath = this.fileUploadPath;
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(volBoardReq.getUploadFile(), savePath);
		
		VolBoardVO volBoard = volBoardReq.toVolBoardVO();
		
		volBoard.setVb_title(HTMLInputFilter.htmlSpecialChars(volBoard.getVb_title()));
		volBoard.setAttachList(attachList);
		volBoardService.modify(volBoard);
		rttr.addAttribute("vb_no", volBoard.getVb_no());
		rttr.addFlashAttribute("from", "modify");

		return url;
	}


	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(int vb_no, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/volBoard/detail.do";

		volBoardService.remove(vb_no);

		rttr.addFlashAttribute("from", "remove");
		rttr.addAttribute("vb_no", vb_no);

		return url;
	}

	

}
