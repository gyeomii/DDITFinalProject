package bookred.main.command;

import java.util.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import bookred.main.dto.OftenQnaVO;

public class OftenQnaModifyCommand {
	private int oq_no = 0;
	private String oq_title = "";
	private String oq_writer = "";
	private String oq_content = "";
	private Date oq_updatedate;
	private List<MultipartFile> uploadFile;
	private List<Integer> deleteFile;

	public int getOq_no() {
		return oq_no;
	}

	public void setOq_no(int oq_no) {
		this.oq_no = oq_no;
	}

	public String getOq_title() {
		return oq_title;
	}

	public void setOq_title(String oq_title) {
		this.oq_title = oq_title;
	}

	public String getOq_writer() {
		return oq_writer;
	}

	public void setOq_writer(String oq_writer) {
		this.oq_writer = oq_writer;
	}

	public String getOq_content() {
		return oq_content;
	}

	public void setOq_content(String oq_content) {
		this.oq_content = oq_content;
	}

	public Date getOq_updatedate() {
		return oq_updatedate;
	}

	public void setOq_updatedate(Date oq_updatedate) {
		this.oq_updatedate = oq_updatedate;
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

	public OftenQnaVO toOftenQnaVO() {
		OftenQnaVO oftenQna = new OftenQnaVO();
		oftenQna.setOq_no(oq_no);
		oftenQna.setOq_title(oq_title);
		oftenQna.setOq_writer(oq_writer);
		oftenQna.setOq_content(oq_content);
		oftenQna.setOq_updatedate(new Date());
		return oftenQna;
	}
}
