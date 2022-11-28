package bookred.main.command;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bookred.main.dto.VolBoardVO;

public class VolBoardModifyCommand {
	private int vb_no = 0;
	private String vb_title = "";
	private String vb_writer = "";
	private String vb_content = "";
	private Date vb_updatedate;
	private List<MultipartFile> uploadFile;
	private List<Integer> deleteFile;
	public int getVb_no() {
		return vb_no;
	}
	public void setVb_no(int vb_no) {
		this.vb_no = vb_no;
	}
	public String getVb_title() {
		return vb_title;
	}
	public void setVb_title(String vb_title) {
		this.vb_title = vb_title;
	}
	public String getVb_writer() {
		return vb_writer;
	}
	public void setVb_writer(String vb_writer) {
		this.vb_writer = vb_writer;
	}
	public String getVb_content() {
		return vb_content;
	}
	public void setVb_content(String vb_content) {
		this.vb_content = vb_content;
	}
	public Date getVb_updatedate() {
		return vb_updatedate;
	}
	public void setVb_updatedate(Date vb_updatedate) {
		this.vb_updatedate = vb_updatedate;
	}
	public List<MultipartFile> getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(List<MultipartFile> uploadFile) {
		this.uploadFile = uploadFile;
	}
	public List<Integer> getDeleteFile() {
		return deleteFile;
	}
	public void setDeleteFile(List<Integer> deleteFile) {
		this.deleteFile = deleteFile;
	}
	
	public VolBoardVO toVolBoardVO() {
		VolBoardVO volBoard = new VolBoardVO();
		volBoard.setVb_no(vb_no);
		volBoard.setVb_title(vb_title);
		volBoard.setVb_writer(vb_writer);
		volBoard.setVb_content(vb_content);
		volBoard.setVb_updatedate(new Date());
		return volBoard;
		
		
	}
	
	
	}
	

