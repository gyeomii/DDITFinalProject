package bookred.admin.service;

import java.sql.SQLException;
import java.util.List;

import bookred.admin.dao.TodolistDAO;
import bookred.admin.dto.TodolistVO;

public class TodolistServiceImpl implements TodolistService {
	
	private TodolistDAO todolistDAO;

	public void setTodolistDAO(TodolistDAO todolistDAO) {
		this.todolistDAO = todolistDAO;
	}

	@Override
	public List<TodolistVO> getTodoList(String mem_id) throws SQLException {
		List<TodolistVO> todoList = todolistDAO.selectTodoList(mem_id);
		return todoList;
	}

	@Override
	public List<TodolistVO> getStateList(TodolistVO todo) throws SQLException {
		List<TodolistVO> todoList = todolistDAO.selectStateList(todo);
		return todoList;
	}

	@Override
	public void registTodo(TodolistVO todo) throws SQLException {
		int todo_no = todolistDAO.selectTodoListSeqNextVal();
		
		todo.setTodo_no(todo_no);
		todolistDAO.insertTodoList(todo);
		
		
	}

	@Override
	public void updateTodoState(TodolistVO todo) throws SQLException {
		todolistDAO.updateTodoState(todo);
	}

}
