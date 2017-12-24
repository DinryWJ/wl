package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.Goods;
import com.zust.dto.Logistics;
import com.zust.dto.Staff;
import com.zust.dto.Station;
import com.zust.dto.User;
import com.zust.service.GoodsServiceI;

@Controller
public class GoodsController {
	@Autowired
	private GoodsServiceI goodsService;
	

	
	@RequestMapping(value="/jj.html")
	public String userJjPage(HttpServletRequest request,Goods goods){
		User user  = (User) request.getSession().getAttribute("user");
		int id = user.getUserId();
		goodsService.userJjPage(id,goods);
		return "redirect:/user_index.html";
	}
	

	@RequestMapping(value="/staff_sh.html")
	public ModelAndView goodsSearch2(HttpServletRequest request, @RequestParam(value = "s", required = false)String s) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("staff_sh");
		if(s!=null){
			Goods good = goodsService.search(s);
			mav.addObject("good", good);
		}
		return mav;	
	}
	@RequestMapping(value="/user_yj.html")
	public ModelAndView userYj(HttpServletRequest request,@RequestParam(value="pageNum",required=false)String pageNum)throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		User user  = (User) request.getSession().getAttribute("user");
		int id =user.getUserId(); 
		
		int num=1;	
		int total = goodsService.getYJPageNum(id,5);	
		if(pageNum==null){
			num=1;		
		}else{
			num = Integer.parseInt(pageNum);
		}
		List<Goods> goods = goodsService.getMyYj(id,num,5);
		mav.addObject("goods", goods);
		mav.setViewName("user_yj");
		mav.addObject("spageNum", num);
		mav.addObject("total", total);
		return mav;
	}
	@RequestMapping(value="/user_yj2.html")
	public String userYj2(){
		return "user_yj2";
	}
	@ResponseBody
	@RequestMapping(value="/user_getYJNum.html")
	public Map<String,Long> getYJNums(HttpServletRequest request){
		User user = (User) request.getSession().getAttribute("user");
		int id = user.getUserId();
		Map<String,Long> map = goodsService.getYJNums(id);
		
		return map;
		
	}
}
