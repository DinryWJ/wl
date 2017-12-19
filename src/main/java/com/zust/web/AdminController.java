package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.Staff;
import com.zust.dto.User;
import com.zust.service.StaffServiceI;

@Controller
public class AdminController {

	@Autowired
	private StaffServiceI staffService;
	
	@RequestMapping(value="admin_searchyh.html")
	public String adminSeachyh(){
		return "admin_searchyh";
	}
	
	@RequestMapping("/admin_seachyh1.html")
	public ModelAndView staffSeachyh(HttpServletRequest request,String s,String page) throws IllegalAccessException, InvocationTargetException{
		//s是用户输入的搜索依据
		String i =request.getParameter("page");
		s = request.getParameter("findby");
		System.out.println("输入"+s);
		int page1 = Integer.parseInt(page);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_seachyh");
		boolean status = s.contains("@");
			if(status){
				List<Staff> staff  = staffService.searchByemail(s,page1);
				List wpage = staffService.getPageall(s);
				mav.addObject("email",s);
				mav.addObject("pageall", wpage);
				mav.addObject("staff", staff);
			}
			else{
				List<Staff> staff =staffService.searchByname(s,page1);
				List wpage = staffService.getPageall(s);
				mav.addObject("email",s);
				mav.addObject("pageall", wpage);
				mav.addObject("staff", staff);
			}
			return mav;				
	}
	
	@RequestMapping("/admin_getyh.html")
	public ModelAndView staffgetyh(HttpServletRequest request, 
			@RequestParam(value = "email", required = false)String email) 
					throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_updateyh");
		if(email!=null){
			Staff staff = staffService.getStaffByemail(email);
			mav.addObject("staff", staff);
		}
		return mav;
	}
	@RequestMapping("/admin_updateyh.html")
	public ModelAndView staffupdateyh(HttpServletRequest request,Staff staff)
					throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin_updateyh");
		staffService.aupdateStaff(staff);
			return new ModelAndView("redirect:admin_getyh.html?email="+staff.getEmail()+"");
	}
}
