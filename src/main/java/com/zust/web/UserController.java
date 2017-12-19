package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	@RequestMapping("/staff_seachyh1.html")
	public ModelAndView staffSeachyh(HttpServletRequest request,String s,String page) throws IllegalAccessException, InvocationTargetException{
		String i =request.getParameter("page");
		s = request.getParameter("findby");
		if(page==null){
			page = "1";
			int page1 = Integer.parseInt(page);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("staff_seachyh");
			
			boolean status = s.contains("@");
				if(status){
					List<User> user  = userService.searchByemail(s,page1);
					List wpage = userService.getPageall(s);
					mav.addObject("user", user);
					mav.addObject("pageall", wpage);
				}
				else{
					List<User> user = userService.searchByname(s,page1);
					List wpage = userService.getPageall(s);
					mav.addObject("user", user);
					mav.addObject("pageall", wpage);
				}
				return mav;	
		}
		else{
			int page1 = Integer.parseInt(page);
			ModelAndView mav = new ModelAndView();
			mav.setViewName("staff_seachyh");
			boolean status = s.contains("@");
				if(status){
					List<User> user  = userService.searchByemail(s,page1);
					List wpage = userService.getPageall(s);
					mav.addObject("email",s);
					mav.addObject("pageall", wpage);
					mav.addObject("user", user);
				}
				else{
					List<User> user = userService.searchByname(s,page1);
					List wpage = userService.getPageall(s);
					mav.addObject("email",s);
					mav.addObject("pageall", wpage);
					mav.addObject("user", user);
				}
				return mav;	
		}			
	}
	@RequestMapping("/staff_getyh.html")
	public ModelAndView staffgetyh(HttpServletRequest request, 
			@RequestParam(value = "email", required = false)String email) 
					throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("staff_updateyh");
		if(email!=null){
			User user = userService.getUserByemail(email);
			mav.addObject("user", user);
		}
		return mav;
	}
	@RequestMapping("/staff_updateyh.html")
	public ModelAndView staffupdateyh(HttpServletRequest request, 
			String email,String name,String password,String phone,String address,
			String createtime,String updatetime,boolean gender,boolean status)
					throws IllegalAccessException, InvocationTargetException{
		System.out.println("开始gende"+gender);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("staff_updateyh");
			userService.supdateUser(email, name, password,phone,address,createtime,updatetime, gender,status);
			return new ModelAndView("redirect:staff_getyh.html?email="+email+"");
	}


}
