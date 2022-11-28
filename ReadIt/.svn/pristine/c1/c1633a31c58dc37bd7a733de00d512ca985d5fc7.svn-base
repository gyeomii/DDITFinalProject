package bookred.main.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.command.PageMaker;
import bookred.common.controller.MakeFileName;
import bookred.common.dao.AttachDAO;
import bookred.common.dao.AttachLDAO;
import bookred.common.dto.AttachVO;
import bookred.main.dao.LostDAO;
import bookred.main.dto.LostVO;

public class LostServiceImpl implements LostService {

	private LostDAO lostDAO;
	public void setLostDAO(LostDAO lostDAO) {
		this.lostDAO = lostDAO;
	}
	
	private AttachDAO attachDAO;
	
	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;
	}
	
	private AttachLDAO attachLDAO;
	public void setAttachLDAO(AttachLDAO attachLDAO) {
		this.attachLDAO = attachLDAO;
	}
	
	
	
	
	@Override
	public Map<String, Object> getLostList(Criteria cri) throws SQLException {

		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		List<LostVO> lostList = lostDAO.selectLostList(cri);
		
		int totalCount = lostDAO.selectLostListCount(cri);
		
		
		if(lostList != null) {
			for(LostVO lost : lostList) {
				addAttachList(lost);
			}
		}
				
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);
		
		dataMap.put("lostList", lostList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public LostVO getLost(int lost_no) throws SQLException {
		LostVO lost = lostDAO.selectLostByLostNo(lost_no);
		addAttachList(lost);
		
		if(lost!=null && lost.getAttachList()!=null) {
			for(AttachVO attach : lost.getAttachList()) {
				String originalFileName = MakeFileName.parseFileNameFromUUID(attach.getFileName(), "\\$\\$");
				attach.setFileName(originalFileName);
			}
		}
		
		return lost;
	}

	@Override
	public LostVO getLostForModify(int lost_no) throws SQLException {
		LostVO lost = lostDAO.selectLostByLostNo(lost_no);
		addAttachList(lost);
		
		if(lost!=null && lost.getAttachList()!=null) {
			for(AttachVO attach : lost.getAttachList()) {
				String originalFileName = MakeFileName.parseFileNameFromUUID(attach.getFileName(), "\\$\\$");
				attach.setFileName(originalFileName);
			}
		}
		
		return lost;
	}

	@Override
	public void regist(LostVO lost) throws SQLException {
		int lost_no = lostDAO.selectLosttSeqNext();
		lost.setLost_no(lost_no);
		lostDAO.insertLost(lost);
		
		if(lost.getAttachList() != null) {
			for(AttachVO attach : lost.getAttachList()) {
				attach.setLost_no(lost_no);
				attach.setAttacher(lost.getLost_writer());
				
				attachLDAO.insertAttachL(attach);
			}
		}
		
	}

	@Override
	public void modify(LostVO lost) throws SQLException {
		lostDAO.updateLost(lost);
		
		if(lost.getAttachList() != null) {
			for(AttachVO attach : lost.getAttachList()) {
				attach.setLost_no(lost.getLost_no());
				attach.setAttacher(lost.getLost_writer());
				attachLDAO.insertAttachL(attach);
			}
		}
		
	}

	@Override
	public void remove(int lost_no) throws SQLException {
		attachLDAO.deleteAttachL(lost_no);
		lostDAO.deleteLost(lost_no);
		
	}
	
	private void addAttachList(LostVO lost) throws SQLException {

		if (lost == null) {
			return;
		}

		int lost_no = lost.getLost_no(); 
		List<AttachVO> attachList = attachLDAO.selectAttachL(lost_no);
		lost.setAttachList(attachList);
	}




	@Override
	public AttachVO getAttachByAno(int ano) throws SQLException {
		AttachVO attach = attachDAO.selectAttachByAno(ano);

		return attach;
	}




	@Override
	public void removeAttachByAno(int ano) throws SQLException {
		
		attachDAO.deleteAttach(ano);
		
	}

}
