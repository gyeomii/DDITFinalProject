package bookred.main.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.command.PageMaker;
import bookred.common.controller.MakeFileName;
import bookred.common.dao.AttachDAO;
import bookred.common.dao.AttachNDAO;
import bookred.common.dto.AttachVO;
import bookred.main.dao.NoticeDAO;
import bookred.main.dto.NoticeVO;

public class NoticeServiceImpl implements NoticeService {

	private NoticeDAO noticeDAO;

	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}
	

	private AttachDAO attachDAO;

	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;
	
	}
	
	private AttachNDAO attachNDAO;
	public void setAttachNDAO(AttachNDAO attachNDAO) {
		this.attachNDAO = attachNDAO;
	}

	@Override
	public Map<String, Object>getNoticeList(Criteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<NoticeVO> noticeList = noticeDAO.selectNoticeList(cri);
		// 전체 board 개수
		int totalCount = noticeDAO.selectNoticeListCount(cri);

		if (noticeList != null) {
			for (NoticeVO notice : noticeList) {
				addAttachList(notice);
			}
		}
		// PageMaker 생성.
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("noticeList", noticeList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}


	@Override
	public NoticeVO getNotice(int notice_no) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNotice_no(notice_no);
		noticeDAO.increaseViewCount(notice_no);
		addAttachList(notice);
		
		if(notice!=null && notice.getAttachList()!=null) {
			for(AttachVO attach : notice.getAttachList()) {
				String originalFileName =MakeFileName.parseFileNameFromUUID(attach.getFileName(),"\\$\\$"); 
				attach.setFileName(originalFileName);					
			}
		}
		
		return notice;
	}

	@Override
	public NoticeVO getNoticeFotModify(int notice_no) throws SQLException {
		NoticeVO notice = noticeDAO.selectNoticeByNotice_no(notice_no);
		addAttachList(notice);
		
		if(notice!=null && notice.getAttachList()!=null) {
			for(AttachVO attach : notice.getAttachList()) {
				String originalFileName =MakeFileName.parseFileNameFromUUID(attach.getFileName(),"\\$\\$"); 
				attach.setFileName(originalFileName);					
			}
		}
		
		return notice;
	}
	
	@Override
	public void regist(NoticeVO notice) throws SQLException {
		
		System.out.println("박수박수박"+notice.getIs_top());
		
		int notice_no = noticeDAO.selectNoticeSeqNextValue();
		notice.setNotice_no(notice_no);
		noticeDAO.insertNotice(notice);
		
		if (notice.getAttachList() != null) {
			for (AttachVO attach : notice.getAttachList()) {
				attach.setNotice_no(notice_no);
				attach.setAttacher(notice.getNotice_writer());

				attachNDAO.insertAttachN(attach);
			}
		}
	
	}

	@Override
	public void modify(NoticeVO notice) throws SQLException {
		noticeDAO.updateNotice(notice);
		
		if (notice.getAttachList() != null) {
			for (AttachVO attach : notice.getAttachList()) {
				attach.setNotice_no(notice.getNotice_no());
				attach.setAttacher(notice.getNotice_writer());
				attachNDAO.insertAttachN(attach);
			}
		}
	
	}

	@Override
	public void remove(int notice_no) throws SQLException {
		attachNDAO.deleteAllAttachN(notice_no);
		noticeDAO.deleteNotice(notice_no);
	}

	
	@Override
	public AttachVO getAttachByAno(int ano) throws SQLException {

		AttachVO attach = attachDAO.selectAttachByAno(ano);

		return attach;
	}
	private void addAttachList(NoticeVO notice) throws SQLException {

		if (notice == null) {
			return;
		}

		int notice_no = notice.getNotice_no(); 
		List<AttachVO> attachList = attachNDAO.selectAttachN(notice_no);
		notice.setAttachList(attachList);
	}
	

	@Override
	public void removeAttachByAno(int ano) throws SQLException {

		attachDAO.deleteAttach(ano);

	}

	@Override
	public List<NoticeVO> getRecentNotice() throws SQLException {
		List<NoticeVO> recentNotice = noticeDAO.selectRecentNotice();
		return recentNotice;
	}
	
	@Override
	public List<NoticeVO> getRecentNoticeSeven() throws SQLException {
		List<NoticeVO> recentNotice = noticeDAO.selectRecentNoticeSeven();
		return recentNotice;
	}
	
}
