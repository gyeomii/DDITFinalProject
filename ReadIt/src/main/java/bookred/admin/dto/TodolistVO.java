package bookred.admin.dto;

import java.util.Date;


public class TodolistVO {
	
	private int todo_no;
	private String todo_name;
	private Date todo_start;
	private Date todo_end;
	private String todo_iscomplete = "N";
	private Date todo_regdate = new Date();
	private String mem_id;
	private int todo_state = 0;
	
	
	public int getTodo_no() {
		return todo_no;
	}
	public void setTodo_no(int todo_no) {
		this.todo_no = todo_no;
	}
	public String getTodo_name() {
		return todo_name;
	}
	public void setTodo_name(String todo_name) {
		this.todo_name = todo_name;
	}
	public Date getTodo_start() {
		return todo_start;
	}
	public void setTodo_start(Date todo_start) {
		this.todo_start = todo_start;
	}
	public Date getTodo_end() {
		return todo_end;
	}
	public void setTodo_end(Date todo_end) {
		this.todo_end = todo_end;
	}
	public String getTodo_iscomplete() {
		return todo_iscomplete;
	}
	public void setTodo_iscomplete(String todo_iscomplete) {
		this.todo_iscomplete = todo_iscomplete;
	}
	public Date getTodo_regdate() {
		return todo_regdate;
	}
	public void setTodo_regdate(Date todo_regdate) {
		this.todo_regdate = todo_regdate;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getTodo_state() {
		return todo_state;
	}
	public void setTodo_state(int todo_state) {
		this.todo_state = todo_state;
	}
}
