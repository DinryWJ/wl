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
	public ModelAndView userYj(HttpServletRequest request) throws IllegalAccessException, InvocationTargetException{
		User user  = (User) request.getSession().getAttribute("user");
		 
		int id =user.getUserId(); 

		List<Goods> goods = userService.getMyYj(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user_yj");
		mav.addObject("goods",goods);
		return mav;
	}
	@RequestMapping(value="/user_person.html")
	public String userPerson(){
		return "user_person";
	}
	@RequestMapping(value="/user_jj.html")
	public String userJj(){
		return "user_jj";
	}
	@RequestMapping(value="/jj.html")
	public String userJjPage(HttpServletRequest request,String sname,String sphone,String saddress,String name,String type,int weight,String intro,String rname,String rphone,String raddress){
		User user  = (User) request.getSession().getAttribute("user");
		int id = user.getUserId();
		userService.userJjPage(id,sname,sphone,saddress,name,type,weight,intro,rname,rphone,raddress);
		return "user_index";
	}
	@RequestMapping(value="/updateperson.html")
	public  ModelAndView updateperson(HttpServletRequest request,String email,String name,String phone,String address) throws IllegalAccessException, InvocationTargetException{
		
		userService.updateUser(email, name, address, phone);
		int id = userService.getUserIdByEmail(email);
		User user = userService.getUserById(id);
		request.getSession().setAttribute("user", user);
		return new ModelAndView("redirect:user_person.html");	
		}	
	

}
