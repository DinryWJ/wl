package com.zust.web;

import java.lang.reflect.InvocationTargetException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.LoginCommand;
import com.zust.dto.Staff;
import com.zust.service.StaffServiceI;

@Controller
public class StaffController {
	@Autowired
	private StaffServiceI staffService;
	
	@RequestMapping(value="/staffloginCheck.html")
	public  ModelAndView userloginCheck(HttpServletRequest request,LoginCommand loginCommand) throws IllegalAccessException, InvocationTargetException{
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
	
	@RequestMapping(value="staff_index.html")
	public String staffIndex(){
		return "staff_index";
	}
	@RequestMapping(value="staff_shenhe.html")
	public String staffShenhe(){
		return "staff_shenhe";
	}
	@RequestMapping(value="staff_shenhe2.html")
	public String staffShenhe2(){
		return "staff_shenhe2";
	}
	@RequestMapping(value="staff_tongzhi.html")
	public String staffTongzhi(){
		return "staff_tongzhi";
	}
	@RequestMapping(value="staff_tousu.html")
	public String staffTousu(){
		return "staff_tousu";
	}
	@RequestMapping(value="staff_tousu2.html")
	public String staffTousu2(){
		return "staff_tousu2";
	}
	@RequestMapping(value="staff_zhongzhuan.html")
	public String staffZhongzhuan(){
		return "staff_zhongzhuan";
	}
}
