package bookred.main.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import bookred.admin.command.Criteria;
import bookred.admin.command.PageMaker;
import bookred.common.controller.MakeFileName;
import bookred.common.dao.AttachDAO;
import bookred.common.dao.AttachVDAO;
import bookred.common.dto.AttachVO;
import bookred.main.dao.VolBoardDAO;
import bookred.main.dto.VolApplyVO;
import bookred.main.dto.VolBoardVO;
import bookred.member.dto.MemberVO;

public class VolBoardServiceImpl implements VolBoardService {

	private VolBoardDAO volBoardDAO;

	public void setVolBoardDAO(VolBoardDAO volBoardDAO) {
		this.volBoardDAO = volBoardDAO;
	}

	private AttachDAO attachDAO;

	public void setAttachDAO(AttachDAO attachDAO) {
		this.attachDAO = attachDAO;

	}

	private AttachVDAO attachVDAO;

	public void setAttachVDAO(AttachVDAO attachVDAO) {
		this.attachVDAO = attachVDAO;
	}

	@Override
	public Map<String, Object> getVolBoardList(Criteria cri) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();

		List<VolBoardVO> volBoardList = volBoardDAO.selectVolBoardList(cri);

		int totalCount = volBoardDAO.selectVolBoardListCount(cri);

		if (volBoardList != null) {
			for (VolBoardVO volBoard : volBoardList) {
				addAttachList(volBoard);
			}
		}

		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(totalCount);

		dataMap.put("volBoardList", volBoardList);
		dataMap.put("pageMaker", pageMaker);

		return dataMap;
	}

	@Override
	public VolBoardVO getVolBoard(int vb_no) throws SQLException {
		VolBoardVO volBoard = volBoardDAO.selectVolBoardByVbNo(vb_no);

		addAttachList(volBoard);

		if (volBoard != null && volBoard.getAttachList() != null) {
			for (AttachVO attach : volBoard.getAttachList()) {
				String originalFileName = MakeFileName.parseFileNameFromUUID(attach.getFileName(), "\\$\\$");
				attach.setFileName(originalFileName);
			}
		}
		return volBoard;
	}

	@Override
	public VolBoardVO getVolBoardFotModify(int vb_no) throws SQLException {
		VolBoardVO volBoard = volBoardDAO.selectVolBoardByVbNo(vb_no);

		addAttachList(volBoard);

		if (volBoard != null && volBoard.getAttachList() != null) {
			for (AttachVO attach : volBoard.getAttachList()) {
				String originalFileName = MakeFileName.parseFileNameFromUUID(attach.getFileName(), "\\$\\$");
				attach.setFileName(originalFileName);
			}

		}
		return volBoard;
	}

	@Override
	public void regist(VolBoardVO volBoard) throws SQLException {
		int vb_no = volBoardDAO.selectVolBoardSeqNext();
		volBoard.setVb_no(vb_no);
		volBoardDAO.insertVolBoard(volBoard);

		if (volBoard.getAttachList() != null) {
			for (AttachVO attach : volBoard.getAttachList()) {
				attach.setVb_no(vb_no);
				attach.setAttacher(volBoard.getVb_writer());
				attachVDAO.insertAttachV(attach);
			}
		}

	}

	@Override
	public void modify(VolBoardVO volBoard) throws SQLException {
		volBoardDAO.updateVolBoard(volBoard);

		if (volBoard.getAttachList() != null) {
			for (AttachVO attach : volBoard.getAttachList()) {
				attach.setVb_no(volBoard.getVb_no());
				attach.setAttacher(volBoard.getVb_writer());
				attachVDAO.insertAttachV(attach);
			}
		}

	}

	@Override
	public void remove(int vb_no) throws SQLException {
		attachVDAO.deleteAllAttachV(vb_no);
		volBoardDAO.deleteVolBoard(vb_no);
	}

	@Override
	public AttachVO getAttachByAno(int ano) throws SQLException {

		AttachVO attach = attachDAO.selectAttachByAno(ano);

		return attach;
	}

	private void addAttachList(VolBoardVO volBoard) throws SQLException {

		if (volBoard == null) {
			return;
		}

		int vb_no = volBoard.getVb_no();
		List<AttachVO> attachList = attachVDAO.selectAttachV(vb_no);
		volBoard.setAttachList(attachList);
	}

	@Override
	public void removeAttachByAno(int ano) throws SQLException {
		attachDAO.deleteAttach(ano);

	}

	@Override
	public void registVolApply(VolApplyVO volApply) throws SQLException {
		volBoardDAO.insertVolApply(volApply);

	}

	@Override
	public int getVolBoardDuplicateChack(int vb_no, MemberVO loginUser) {

		int result = volBoardDAO.getVolBoardDuplicateChack(vb_no, loginUser);
		return result;
	}

	@Override
	public List<VolBoardVO> getRecentVol() throws SQLException {
		List<VolBoardVO> recentVol = volBoardDAO.selectRecentVol();
		return recentVol;
	}

}
