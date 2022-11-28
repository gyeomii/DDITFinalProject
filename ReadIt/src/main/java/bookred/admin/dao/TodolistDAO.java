package bookred.admin.dao;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dto.TodolistVO;

public interface TodolistDAO {
	
	public List<TodolistVO> selectTodoList(String mem_id) throws SQLException;
	public List<TodolistVO> selectStateList(TodolistVO todo) throws SQLException;
	
	public int selectTodoListSeqNextVal() throws SQLException;
	public void insertTodoList(TodolistVO todo) throws SQLException;
	public void updateTodoState(TodolistVO todo) throws SQLException;
	
}
