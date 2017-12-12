package com.zust.web;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.LoginCommand;
import com.zust.dto.User;
import com.zust.service.UserServiceI;


@Controller

public class MainController {
	@Autowired
	private UserServiceI userService;
	
	@RequestMapping(value="/index.html")
	public String loginPage(){
		return "user_signin";
	}

	@RequestMapping(value="/loginCheck.html")
	public  ModelAndView userloginCheck(HttpServletRequest request,LoginCommand loginCommand) throws IllegalAccessException, InvocationTargetException{
		boolean isVaild = userService.isMatched(loginCommand.getEmail(), loginCommand.getPassword());
		if(!isVaild){
			return new ModelAndView("user_signin","error","邮箱或密码错误");
		}else{
			int id = userService.getUserIdByEmail(loginCommand.getEmail());
			User user = userService.getUserById(id);
			request.getSession().setAttribute("user", user);
			//登陆后跳转
			return new ModelAndView("redirect:/user_index.html");
			
		}	
	}

	@RequestMapping(value="/user_signup.html")
	public String loginUpPage(){
		return "user_signup";
	}
	@RequestMapping(value="/user_signupCheck.html")
	public String loginUpCheck(String email,String name,String password){
		userService.createUser(email,name,password);
		
		return "user_signin";
	}
	@RequestMapping(value="/staff_signin.html")
	public String staffloginPage(){
		return "staff_signin";
	}
	@RequestMapping(value="/staff_signup.html")
	public String staffloginUpPage(){
		return "staff_signup";
	}

}
