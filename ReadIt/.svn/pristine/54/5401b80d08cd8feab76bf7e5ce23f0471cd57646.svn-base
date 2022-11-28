package bookred.main.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.command.PageMaker;
import bookred.common.controller.MakeFileName;
import bookred.common.dao.AttachDAO;
import bookred.common.dao.AttachODAO;
import bookred.common.dto.AttachVO;
import bookred.main.dao.OftenQnaDAO;
import bookred.main.dto.OftenQnaVO;

public class OftenQnaServiceImpl implements OftenQnaService {

	private OftenQnaDAO oftenQnaDAO;
	
	public void setOftenQnaDAO(OftenQnaDAO oftenQnaDAO) {
		this.oftenQnaDAO = oftenQnaDAO;
	}

	private AttachDAO attachDAO;
	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;
	}
	
	private AttachODAO attachODAO;
	public void setAttachODAO(AttachODAO attachODAO) {
		this.attachODAO = attachODAO;
	}
	
	
	@Override
	public Map<String, Object> getOftenQnaList(Criteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<OftenQnaVO> oftenQnaList = oftenQnaDAO.selectOftenQnaList(cri);
		
for (OftenQnaVO oftenQnaVO : oftenQnaList) {
	System.out.println("test : "+oftenQnaVO.getOq_title());
}
		// 전체 board 개수
		int totalCount = oftenQnaDAO.selectOftenQnaListCount(cri);

		if (oftenQnaList != null) {
			for (OftenQnaVO oftenQna : oftenQnaList) {
				addAttachList(oftenQna);
			}
		}
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("oftenQnaList", oftenQnaList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public OftenQnaVO getOftenQna(int oq_no) throws SQLException {
		OftenQnaVO oftenQna = oftenQnaDAO.selectOftenQnaByOq_No(oq_no);
		oftenQnaDAO.increaseViewCount(oq_no);
		addAttachList(oftenQna);
		
		if(oftenQna != null && oftenQna.getAttachList()!= null) {
			for(AttachVO attach : oftenQna.getAttachList()) {
				String originalFileName =MakeFileName.parseFileNameFromUUID(attach.getFileName(),"\\$\\$"); 
				attach.setFileName(originalFileName);
			}
		}
		return oftenQna;
	}

	@Override
	public OftenQnaVO getOftenQnaForModify(int oq_no) throws SQLException {
		OftenQnaVO oftenQna = oftenQnaDAO.selectOftenQnaByOq_No(oq_no);
		addAttachList(oftenQna);
		
		if(oftenQna!=null && oftenQna.getAttachList()!=null) {
			for (AttachVO attach : oftenQna.getAttachList()) {
				String originalFileName =MakeFileName.parseFileNameFromUUID(attach.getFileName(),"\\$\\$"); 
				attach.setFileName(originalFileName);	
			}
		}
		
		return oftenQna;
	}

	@Override
	public void regist(OftenQnaVO oftenQna) throws SQLException {
		int oq_no = oftenQnaDAO.selectOftenQnaSeqNextValue(); 
		oftenQna.setOq_no(oq_no);
		oftenQnaDAO.insertOftenQna(oftenQna);
		
		if (oftenQna.getAttachList() != null) {
			for (AttachVO attach : oftenQna.getAttachList()) {
				attach.setOq_no(oq_no);
				attach.setAttacher(oftenQna.getOq_writer());
				attachODAO.insertAttachO(attach);
			}
		}
		
	}

	@Override
	public void modify(OftenQnaVO oftenQna) throws SQLException {
		oftenQnaDAO.updateOftenQna(oftenQna);
		
		if (oftenQna.getAttachList() != null) {
			for (AttachVO attach : oftenQna.getAttachList()) {
				attach.setOq_no(oftenQna.getOq_no());
				attach.setAttacher(oftenQna.getOq_writer());
				attachODAO.insertAttachO(attach);
			}
		}
		
	}

	@Override
	public void remove(int oq_no) throws SQLException {
		attachODAO.deleteAllAttachO(oq_no);
		oftenQnaDAO.deleteOftenQna(oq_no);
	}


	@Override
	public AttachVO getAttachByAno(int ano) throws SQLException {

		AttachVO attach = attachDAO.selectAttachByAno(ano);
		return attach;
	}

	private void addAttachList(OftenQnaVO oftenQna) throws SQLException {

		if (oftenQna == null) {
			return;
		}

		int oq_no = oftenQna.getOq_no(); 
		System.out.println(oq_no);
		List<AttachVO> attachList = attachODAO.selectAttachO(oq_no);
		oftenQna.setAttachList(attachList);
	}
	
	@Override
	public void removeAttachByAno(int ano) throws SQLException {
		
		attachDAO.deleteAttach(ano);
		
	}

}
