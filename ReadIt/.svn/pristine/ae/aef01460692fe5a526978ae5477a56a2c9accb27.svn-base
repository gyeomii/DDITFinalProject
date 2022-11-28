package bookred.main.command;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bookred.main.dto.LostVO;

public class LostModifyCommand {
	private int lost_no = 0;
	private String lost_title = "";
	private String lost_writer = "";
	private String lost_content = "";
	private Date lost_regdate;
	private List<MultipartFile> uploadFile;
	private List<Integer> deleteFile;
	
	
	public int getLost_no() {
		return lost_no;
	}


	public void setLost_no(int lost_no) {
		this.lost_no = lost_no;
	}


	public String getLost_title() {
		return lost_title;
	}


	public void setLost_title(String lost_title) {
		this.lost_title = lost_title;
	}


	public String getLost_writer() {
		return lost_writer;
	}


	public void setLost_writer(String lost_writer) {
		this.lost_writer = lost_writer;
	}


	public String getLost_content() {
		return lost_content;
	}


	public void setLost_content(String lost_content) {
		this.lost_content = lost_content;
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


	public LostVO toLostVO() {
		LostVO lost = new LostVO();
		lost.setLost_no(lost_no);
		lost.setLost_title(lost_title);
		lost.setLost_writer(lost_writer);
		lost.setLost_content(lost_content);
		return lost;
		
		
	}


	public Date getLost_regdate() {
		return lost_regdate;
	}


	public void setLost_regdate(Date lost_regdate) {
		this.lost_regdate = lost_regdate;
	}
	
	
	}
	

