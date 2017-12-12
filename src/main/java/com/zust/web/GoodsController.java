package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zust.dto.Goods;
import com.zust.dto.User;
import com.zust.service.GoodsServiceI;

@Controller
public class GoodsController {
	@Autowired
	private GoodsServiceI goodsService;
	
	@ResponseBody
	@RequestMapping(value="/myYJ.html")
	public List<Goods> userYj(HttpServletRequest request) throws IllegalAccessException, InvocationTargetException{
		User user  = (User) request.getSession().getAttribute("user");
		int id =user.getUserId(); 
		List<Goods> goods = goodsService.getMyYj(id);
		return goods;
	}
	@RequestMapping(value="/jj.html")
	public String userJjPage(HttpServletRequest request,String sname,String sphone,String saddress,String name,String type,int weight,String intro,String rname,String rphone,String raddress){
		User user  = (User) request.getSession().getAttribute("user");
		int id = user.getUserId();
		goodsService.userJjPage(id,sname,sphone,saddress,name,type,weight,intro,rname,rphone,raddress);
		return "user_index";
	}
}
