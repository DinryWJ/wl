package com.zust.web;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.LoginCommand;
import com.zust.dto.Staff;
import com.zust.dto.User;
import com.zust.service.StaffServiceI;
import com.zust.service.UserServiceI;


@Controller

public class MainController {
	@Autowired
	private UserServiceI userService;

	@Autowired
	private StaffServiceI staffService;
	
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
			if(user.getStatus()==true) return new ModelAndView("user_signin","error","该用户已被禁用");
			request.getSession().setAttribute("user", user);
			//登陆后跳转
			return new ModelAndView("redirect:/user_index.html");
			
		}	
	}
	@RequestMapping(value="/staffloginCheck.html")
	public  ModelAndView staffloginCheck(HttpServletRequest request,LoginCommand loginCommand) throws IllegalAccessException, InvocationTargetException{
		boolean isVaild = staffService.isMatched(loginCommand.getEmail(), loginCommand.getPassword());
		if(!isVaild){
			return new ModelAndView("staff_signin","error","邮箱或密码错误");
		}else{
			int id = staffService.getStaffIdByEmail(loginCommand.getEmail());
			Staff staff = staffService.getStaffById(id);
			request.getSession().setAttribute("staff", staff);
			//登陆后跳转
			return new ModelAndView("redirect:/staff_index.html");
			
		}	
	}

	@RequestMapping(value="/user_signup.html")
	public String loginUpPage(){
		return "user_signup";
	}
	@RequestMapping(value="/user_signupCheck.html")
	public ModelAndView loginUpCheck(String email,String name,String password){
		boolean isc = userService.isCrashed(email);
		if(isc==false){
			userService.createUser(email,name,password);
			return new ModelAndView("user_signin");
		}
		return new ModelAndView("user_signup","error","该邮箱已被使用");	
		
		
	}
	@RequestMapping(value="/staff_signin.html")
	public String staffloginPage(){
		return "staff_signin";
	}
	@RequestMapping(value="/staff_signup.html")
	public String staffloginUpPage(){
		return "staff_signup";
	}
    @RequestMapping("/stafftoLogin.html")
    public String execute1(HttpSession session){
        session.invalidate();
        return "redirect:/staff_signin.html";
    }
    @RequestMapping("/toLogin.html")
    public String execute2(HttpSession session){
        session.invalidate();
        return "redirect:/index.html";
    }
}
