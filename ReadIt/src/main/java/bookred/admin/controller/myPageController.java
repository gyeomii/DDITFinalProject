package bookred.admin.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import bookred.admin.dto.LibPlanVO;
import bookred.admin.dto.TodolistVO;
import bookred.admin.service.AdminInfoService;
import bookred.admin.service.LibPlanService;
import bookred.admin.service.TodolistService;
import bookred.member.dto.MemberVO;
import bookred.member.dto.RMVO;

@Controller
@RequestMapping("/admin/mypage")
public class myPageController {
	@Autowired
	private AdminInfoService adminService;
	
	@Autowired
	private TodolistService todolistService;
	
	@Autowired
	private LibPlanService libPlanService;
	
	@RequestMapping("/prevMyInfo")
	public String myInfo() throws Exception{
		String url = "admin/mypage/prevMyInfo";
		
		
		return url;
	}
	
	@RequestMapping("/myInfo")
	public String preMyInfo() throws Exception{
		String url = "admin/mypage/myInfo";
		
		return url;
		
	}
	
	@RequestMapping("/toDoList")
	public ModelAndView toDoList( ModelAndView mnv, HttpServletRequest req) throws Exception{
		String url = "admin/mypage/toDoList";
		
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping(value = "/toDoTaskList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<TodolistVO> toDoTaskList( HttpServletRequest req) throws Exception{
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		System.out.println("검색 : "  + mem_id);
		
		List<TodolistVO> todoList = todolistService.getTodoList(mem_id);
		
		return todoList;
	}
	
	@RequestMapping(value = "/toDoImportantList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<TodolistVO> toDoImportantList( HttpServletRequest req) throws Exception{
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		int todo_state = 1;
		
		TodolistVO todo = new TodolistVO();
		todo.setMem_id(mem_id);
		todo.setTodo_state(todo_state);
		
		List<TodolistVO> todoDelList = todolistService.getStateList(todo);
		
		return todoDelList;
	}
	
	@RequestMapping(value = "/toDoCompletedList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<TodolistVO> toDoCompletedList( HttpServletRequest req) throws Exception{
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		int todo_state = 2;
		
		TodolistVO todo = new TodolistVO();
		todo.setMem_id(mem_id);
		todo.setTodo_state(todo_state);
		
		List<TodolistVO> todoDelList = todolistService.getStateList(todo);
		
		return todoDelList;
	}
	
	@RequestMapping(value = "/toDoDeletedList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<TodolistVO> toDoDeletedList( HttpServletRequest req) throws Exception{
		
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		int todo_state = 3;
		
		TodolistVO todo = new TodolistVO();
		todo.setMem_id(mem_id);
		todo.setTodo_state(todo_state);
		
		List<TodolistVO> todoDelList = todolistService.getStateList(todo);
		
		return todoDelList;
	}
	
	@RequestMapping(value = "/registTodo", produces = "application/json;charset=utf-8" )
	@ResponseBody
	public Map<String,Object> registTodo( HttpServletRequest req, @RequestBody Map<String,Object> data) throws Exception{
		HttpSession session = req.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("loginUser");
		String mem_id = memberVO.getMem_id();
		
		TodolistVO todolist = new TodolistVO();
		
		  // 포맷터
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        
        // 문자열 -> Date
        Date endDate = formatter.parse((String) data.get("todo_end"));
        Date startDate = formatter.parse((String)data.get("todo_start"));
		
		todolist.setMem_id(mem_id);
		todolist.setTodo_name((String) data.get("todo_name"));
		todolist.setTodo_state((int) data.get("todo_state"));
		todolist.setTodo_start(startDate);
		todolist.setTodo_end(endDate);
		
		System.out.println(todolist.getTodo_name());
		System.out.println(todolist.getTodo_start());
		System.out.println(todolist.getTodo_end());
		
		todolistService.registTodo(todolist);
		
		data.put("todolist", todolist);
		
		return data;
		
		
	}
	
	@RequestMapping(value = "/changeDefaultTodoState", produces = "application/json;charset=utf-8")
	@ResponseBody
	public void changeDefaultTodoState( @RequestBody   Map<String,List<TodolistVO>> dataMap) throws Exception{
		
		System.out.println(dataMap.get("todoList"));
		List<TodolistVO> todoList = dataMap.get("todoList");
		
		for(int i=0; i < todoList.size(); i++) {
			TodolistVO todo =  todoList.get(i);
			todo.setTodo_state(0);
			todolistService.updateTodoState(todo);
			System.out.println("important update 성공");
		}
	}
	@RequestMapping(value = "/changeImportantTodoState", produces = "application/json;charset=utf-8")
	@ResponseBody
	public void changeImportantTodoState( @RequestBody   Map<String,List<TodolistVO>> dataMap) throws Exception{
		
		System.out.println(dataMap.get("todoList"));
		List<TodolistVO> todoList = dataMap.get("todoList");
		
		for(int i=0; i < todoList.size(); i++) {
			TodolistVO todo =  todoList.get(i);
			todo.setTodo_state(1);
			todolistService.updateTodoState(todo);
			System.out.println("important update 성공");
		}
	}
	
	@RequestMapping(value = "/changeCompletedTodoState", produces = "application/json;charset=utf-8")
	@ResponseBody
	public void changeCompletedTodoState( @RequestBody   Map<String,List<TodolistVO>> dataMap) throws Exception{
		
		System.out.println(dataMap.get("todoList"));
		List<TodolistVO> todoList = dataMap.get("todoList");
		
		for(int i=0; i < todoList.size(); i++) {
			TodolistVO todo =  todoList.get(i);
			todo.setTodo_state(2);
			todo.setTodo_iscomplete("Y");
			todolistService.updateTodoState(todo);
			System.out.println("Completed update 성공");
		}
	}
	
	@RequestMapping(value = "/changeDeleteTodoState", produces = "application/json;charset=utf-8")
	@ResponseBody
	public void changeDeleteTodoState( @RequestBody   Map<String,List<TodolistVO>> dataMap) throws Exception{
		
		System.out.println(dataMap.get("todoList"));
		List<TodolistVO> todoList = dataMap.get("todoList");
		
		for(int i=0; i < todoList.size(); i++) {
			TodolistVO todo =  todoList.get(i);
			todo.setTodo_state(3);
			todolistService.updateTodoState(todo);
			System.out.println("Delete update 성공");
		}
	}
	
	@RequestMapping("/libPlan")
	public String libPlan() throws Exception{
		String url = "admin/mypage/libPlan";
		
		return url;
	}
	@RequestMapping(value = "/libPlanList", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<LibPlanVO> libPlan(Model model, HttpServletRequest req) throws Exception{
		
		String url = "admin/mypage/libPlanList";
		
		List<LibPlanVO> dataList = libPlanService.getAllPlanList();
		
		
		return dataList;
	}

}
