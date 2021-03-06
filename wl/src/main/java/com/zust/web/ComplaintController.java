package com.zust.web;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.User;
import com.zust.service.ComplaintServiceI;
import com.zust.service.UserServiceI;

@Controller
public class ComplaintController {

	@Autowired
	private ComplaintServiceI complaintService;
	
	@RequestMapping(value="/tousu.html")
	public String tousu(HttpServletRequest request,String content){
		User user = (User) request.getSession().getAttribute("user");
		int id = user.getUserId();
		complaintService.createComplaint(id,content);
		return "redirect:/user_index.html";	
		}	
}
