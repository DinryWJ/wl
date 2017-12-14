package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.Goods;
import com.zust.dto.User;
import com.zust.service.GoodsServiceI;
import com.zust.service.UserServiceI;

@Controller
public class UserController {
	@Autowired
	private UserServiceI userService;
	

	
	@RequestMapping(value="/user_index.html")
	public String userIndex(){
		return "user_index";
	}

	@RequestMapping(value="/user_ts.html")
	public String userTs(){
		return "user_ts";
	}

	
	@RequestMapping(value="/user_person.html")
	public String userPerson(){
		return "user_person";
	}
	@RequestMapping(value="/user_jj.html")
	public String userJj(){
		return "user_jj";
	}
	
	@RequestMapping(value="/updateperson.html")
	public  ModelAndView updateperson(HttpServletRequest request,String email,String name,String phone,String address) throws IllegalAccessException, InvocationTargetException{
		
		userService.updateUser(email, name, address, phone);
		int id = userService.getUserIdByEmail(email);
		User user = userService.getUserById(id);
		request.getSession().setAttribute("user", user);
		return new ModelAndView("redirect:user_person.html");	
		}	
	@RequestMapping(value="/updatepassword.html")
	public  ModelAndView updatepassword(HttpServletRequest request,String email,String oldPassword,String newPassword,String reNewPassword) throws IllegalAccessException, InvocationTargetException{
		User user  = (User) request.getSession().getAttribute("user");
		email = user.getEmail();
 
		if(request.getSession().getAttribute("password")==request.getParameter(oldPassword)&&request.getParameter(newPassword)==request.getParameter(reNewPassword))
		{
			userService.updatePassword(email, newPassword);
			request.getSession().setAttribute("user", user);
			return new ModelAndView("redirect:user_person.html");	
		}else
		return new ModelAndView("redirect:user_person.html");	
		
}


}
