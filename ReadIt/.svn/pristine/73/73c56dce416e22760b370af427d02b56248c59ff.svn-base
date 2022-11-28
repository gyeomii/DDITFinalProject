package bookred.main.controller;

import java.io.File;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.josephoconnell.html.HTMLInputFilter;

import bookred.admin.command.Criteria;
import bookred.common.command.MultipartFileUploadResolver;
import bookred.common.dao.AttachDAO;
import bookred.common.dto.AttachVO;
import bookred.main.command.NoticeModifyCommand;
import bookred.main.command.NoticeRegistCommand;
import bookred.main.dto.NoticeVO;
import bookred.main.service.NoticeService;

@Controller
@RequestMapping("/main/board/notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	@Autowired
	private AttachDAO attachDao;
	
	
	@RequestMapping("/list")
	public ModelAndView noticeList(Criteria cri, ModelAndView mnv) throws Exception {
		String url = "main/board/notice/list";

		Map<String, Object> dataMap = noticeService.getNoticeList(cri);
		mnv.addObject("dataMap", dataMap);
		mnv.setViewName(url);
		return mnv;
	}

	@RequestMapping("/registForm")
	public String registForm() {
		String url = "main/board/notice/regist";
		return url;
	}

	@Resource(name = "fileUploadPath")
	private String fileUploadPath;

	@RequestMapping(value = "/regist", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public String regist(NoticeRegistCommand registReq, RedirectAttributes rttr, HttpServletRequest request)
			throws Exception {
		String url = "redirect:/main/facilitySpace/white.do";

		String savePath = this.fileUploadPath;
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(registReq.getUploadFile(), savePath);

		NoticeVO notice = registReq.toNoticeVO();

		notice.setAttachList(attachList);
		notice.setNotice_title(HTMLInputFilter.htmlSpecialChars(notice.getNotice_title()));

		noticeService.regist(notice);
		// output
		rttr.addFlashAttribute("from", "registNotice");
		return url;
	}

	@RequestMapping("/detail")
	public ModelAndView detail(int notice_no, @RequestParam(defaultValue = "") String from, HttpServletRequest request,
			ModelAndView mnv) throws SQLException {
		String url = "main/board/notice/detail";

		NoticeVO notice = null;

		if (!from.equals("list")) {
			notice = noticeService.getNoticeFotModify(notice_no);
		} else {
			notice = noticeService.getNotice(notice_no);
			url = "redirect:/main/board/notice/detail.do?notice_no=" + notice_no;
		}
		mnv.addObject("notice", notice);
		mnv.setViewName(url);
		return mnv;
	}

	@RequestMapping("/getFile")
	public String getFile(int ano, HttpServletRequest request, HttpServletResponse response, Model model)
			throws Exception {

		String url = "downloadFile";

		AttachVO attach = noticeService.getAttachByAno(ano);

		model.addAttribute("savedPath", attach.getUploadPath());
		model.addAttribute("fileName", attach.getFileName());

		return url;
	}

	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(int notice_no, ModelAndView mnv) throws Exception {
		String url = "main/board/notice/modify";

		NoticeVO notice = noticeService.getNoticeFotModify(notice_no);
		mnv.addObject("notice", notice);
		mnv.setViewName(url);

		return mnv;
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPost(NoticeModifyCommand modifyReq, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/notice/detail.do";
		// 파일 삭제

		if (modifyReq.getDeleteFile() != null && modifyReq.getDeleteFile().size() > 0) {
			for (Integer ano : modifyReq.getDeleteFile()) {
				AttachVO attach = attachDao.selectAttachByAno(ano);
				File deleteFile = new File(attach.getUploadPath(), attach.getFileName());
				if (deleteFile.exists()) {
					deleteFile.delete(); // File 삭제
				}
				attachDao.deleteAttach(ano); // DB 삭제
			}
		}
		// 파일 저장
		String savePath = this.fileUploadPath;
		List<AttachVO> attachList = MultipartFileUploadResolver.fileUpload(modifyReq.getUploadFile(), savePath);
		
		NoticeVO notice = modifyReq.toNoticeVO();
		
		notice.setNotice_title(HTMLInputFilter.htmlSpecialChars(notice.getNotice_title()));
		notice.setAttachList(attachList);
		noticeService.modify(notice);
		rttr.addAttribute("notice_no", notice.getNotice_no());
		rttr.addFlashAttribute("from", "modify");

		return url;
	}


	@RequestMapping(value = "/remove", method = RequestMethod.GET)
	public String remove(int notice_no, RedirectAttributes rttr) throws Exception {
		String url = "redirect:/main/board/notice/detail.do";

		noticeService.remove(notice_no);

		rttr.addFlashAttribute("from", "remove");
		rttr.addAttribute("notice_no", notice_no);

		return url;
	}

}

