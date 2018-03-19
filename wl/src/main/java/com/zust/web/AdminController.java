package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.Goods;
import com.zust.dto.Staff;
import com.zust.dto.Station;
import com.zust.dto.User;
import com.zust.service.StaffServiceI;
import com.zust.service.UserServiceI;

@Controller
public class AdminController {

	@Autowired
	private StaffServiceI staffService;
	
	@Autowired
	private UserServiceI userService;
	

	
	@RequestMapping("/admin_searchStaff.html")
	public ModelAndView staffSeachyh(@RequestParam(value="search",required=false)String search) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		if(search!=null){
			int id = staffService.getStaffIdByEmail(search);
			Staff astaff = staffService.getStaffById(id);
			mav.addObject("astaff", astaff);
		}
		mav.setViewName("admin_searchStaff");

		return mav;
	}
	@RequestMapping("/admin_updateStaff.html")
	public String adminUpdateStaff(Staff astaff)throws IllegalAccessException, InvocationTargetException{
		staffService.adminUpdateStaff(astaff);
		return "redirect:/admin_searchStaff.html?search="+astaff.getEmail();
	}
	@RequestMapping("/admin_allStaff.html")
	public ModelAndView admin_allStaff(@RequestParam(value="pageNum",required=false)String pageNum) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		int num=1;	
		int total = staffService.getStaffPageNum(10);	
		if(pageNum==null){
			num=1;		
		}else{
			num = Integer.parseInt(pageNum);
		}
		List<Staff> list = staffService.getAllStaff(num,10);
		mav.addObject("astaff", list);
		mav.addObject("spageNum", num);
		mav.addObject("total", total);
		return mav;
	}

	@RequestMapping("/admin_searchUser.html")
	public ModelAndView adminSeachUser(@RequestParam(value="search",required=false)String search) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		if(search!=null){
			int id = userService.getUserIdByEmail(search);
			User user = userService.getUserById(id);
			mav.addObject("user", user);
		}
		mav.setViewName("admin_searchUser");

		return mav;
					
	}
	@RequestMapping("/admin_updateUser.html")
	public String admin_updateUser(User user) throws IllegalAccessException, InvocationTargetException{
		userService.adminUpdateUser(user);
		return "redirect:/admin_searchUser.html?search="+user.getEmail();
	}
	@RequestMapping("/admin_allUser.html")
	public ModelAndView adminAllUser(@RequestParam(value="pageNum",required=false)String pageNum) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		int num=1;	
		int total = userService.getUserPageNum(10);	
		if(pageNum==null){
			num=1;		
		}else{
			num = Integer.parseInt(pageNum);
		}
		List<User> list = userService.getAllUser(num,10);
		mav.addObject("users", list);
		mav.addObject("spageNum", num);
		mav.addObject("total", total);
		return mav;
	}

}
