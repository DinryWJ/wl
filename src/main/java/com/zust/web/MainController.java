package com.zust.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zust.dao.UserDAO;


@Controller
public class MainController {
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value="/index.html")
	public String loginPage(HttpServletRequest request){
		int id=userDAO.getUserById(1).getUserId();
		request.setAttribute("id", id);
		return "index";
	}
}
