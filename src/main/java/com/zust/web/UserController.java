package com.zust.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zust.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/user_index.html")
	public String userIndex(){
		return "user_index";
	}
	@RequestMapping(value="/user_sh.html")
	public String userSh(){
		return "user_sh";
	}
	@RequestMapping(value="/user_ts.html")
	public String userTs(){
		return "user_ts";
	}
	@RequestMapping(value="/user_yj.html")
	public String userYj(){
		return "user_yj";
	}
	@RequestMapping(value="/user_person.html")
	public String userPerson(){
		return "user_person";
	}
	@RequestMapping(value="/user_jj.html")
	public String userJj(){
		return "user_jj";
	}
}
