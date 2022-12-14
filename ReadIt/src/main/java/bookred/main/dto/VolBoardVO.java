package bookred.main.dto;

import java.util.Date;
import java.util.List;

import bookred.common.dto.AttachVO;

public class VolBoardVO {

	private int vb_no = 0;
	private String mem_id = "";
	private String vb_title = "";
	private String vb_writer = "";
	private String vb_content = "";
	private Date vb_regdate;
	private Date vb_updatedate;
	private int vb_state = 0;
	private List<AttachVO> attachList;
	
	public int getVb_no() {
		return vb_no;
	}

	public void setVb_no(int vb_no) {
		this.vb_no = vb_no;
	}


	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
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

	public Date getVb_regdate() {
		return vb_regdate;
	}

	public void setVb_regdate(Date vb_regdate) {
		this.vb_regdate = new Date();
	}

	public Date getVb_updatedate() {
		return vb_updatedate;
	}

	public void setVb_updatedate(Date vb_updatedate) {
		this.vb_updatedate = vb_updatedate;
	}

	public int getVb_state() {
		return vb_state;
	}

	public void setVb_state(int vb_state) {
		this.vb_state = vb_state;
	}
	
	public List<AttachVO> getAttachList() {
		return attachList;
	}

	public void setAttachList(List<AttachVO> attachList) {
		this.attachList = attachList;
	}

}
