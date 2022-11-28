package bookred.main.command;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bookred.main.dto.NoticeVO;

public class NoticeModifyCommand {
	private int notice_no = 0;
	private String notice_title = "";
	private String notice_writer = "";
	private String notice_content = "";
	private Date notice_updatedate;
	private List<MultipartFile> uploadFile;
	private List<Integer> deleteFile;
	
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

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getNotice_title() {
		return notice_title;
	}

	public void setNotice_title(String notice_title) {
		this.notice_title = notice_title;
	}

	public String getNotice_writer() {
		return notice_writer;
	}

	public void setNotice_writer(String notice_writer) {
		this.notice_writer = notice_writer;
	}

	public String getNotice_content() {
		return notice_content;
	}

	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}

	public Date getNotice_updatedate() {
		return notice_updatedate;
	}

	public void setNotice_updatedate(Date notice_updatedate) {
		this.notice_updatedate = notice_updatedate;
	}

	public NoticeVO toNoticeVO() {
		NoticeVO notice = new NoticeVO();
		notice.setNotice_no(notice_no);
		notice.setNotice_title(notice_title);
		notice.setNotice_writer(notice_writer);
		notice.setNotice_content(notice_content);
		notice.setNotice_updatedate(new Date());
		return notice;
	}
}
