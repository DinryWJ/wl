package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.Goods;
import com.zust.dto.Logistics;
import com.zust.dto.User;
import com.zust.service.GoodsServiceI;
import com.zust.service.LogisticsServiceI;
import com.zust.service.UserServiceI;

@Controller
public class UserController {
	@Autowired
	private UserServiceI userService;
	@Autowired
	private GoodsServiceI goodsService;
	@Autowired
	private LogisticsServiceI logisticsService;

	
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
	public  ModelAndView updateperson(HttpServletRequest request,String email,String name,String gender,String phone,String address) throws IllegalAccessException, InvocationTargetException{
		userService.updateUser(email, name,gender, address, phone);
		int id = userService.getUserIdByEmail(email);
		User user = userService.getUserById(id);
		request.getSession().setAttribute("user", user);
		return new ModelAndView("redirect:/user_person.html");	
		}	
	@RequestMapping(value="/updatepassword.html")
	public  ModelAndView updatepassword(HttpServletRequest request,String oldPassword,String newPassword,String reNewPassword) throws IllegalAccessException, InvocationTargetException{
		User user  = (User) request.getSession().getAttribute("user");
		String email = user.getEmail();
		
		if(user.getPassword().equals(oldPassword)){
			if(newPassword.equals(reNewPassword)){
				userService.updatePassword(email, newPassword);
				int id = userService.getUserIdByEmail(email);
				User user2 = userService.getUserById(id);
				request.getSession().setAttribute("user", user2);
				return new ModelAndView("redirect:/user_person.html");	
			}else{
				return new ModelAndView("user_person","error","两次密码不同");	
			}
			
		}
		return new ModelAndView("user_person","error","旧密码错误");	
		
	}
	@RequestMapping(value="/user_sh.html")
	public ModelAndView goodsSearch(HttpServletRequest request, @RequestParam(value = "s", required = false)String code) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user_sh");
		if(code!=null){
			Goods goods = goodsService.search(code);
			if(goods!=null&&goods.isStatus2()==true){
				Logistics logistics = logisticsService.getLogisticsByGoodsId(goods.getGoodsId());
				mav.addObject("goods", goods);
				mav.addObject("logistics", logistics);
			}
		}
		return mav;	
	}

}
