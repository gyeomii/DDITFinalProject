package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dto.TodolistVO;

public interface TodolistService {
	
	public List<TodolistVO> getTodoList(String mem_id) throws SQLException;
	
	public List<TodolistVO> getStateList(TodolistVO todo) throws SQLException;
	
	public void registTodo(TodolistVO todo) throws SQLException;
	public void updateTodoState(TodolistVO todo) throws SQLException;
	
}
