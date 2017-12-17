package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.Complaint;
import com.zust.dto.Goods;
import com.zust.dto.Logistics;
import com.zust.entity.Tlogistics;
import com.zust.service.LogisticsServiceI;



@Controller
public class LogisticsController {
	@Autowired
	private LogisticsServiceI logisticsService;
	
	
//	@RequestMapping(value="/findgoods.html")
//	public Logistics findgoods(HttpServletRequest request) throws IllegalAccessException, InvocationTargetException{
//		String goodsNums= request.getParameter("s");
//		String goodsNum = goodsNums.replaceAll(" ","");
//		Logistics logistics = logisticsService.getgoods(goodsNum);
//		return logistics;
//	}
	@RequestMapping(value="/findgoods.html")
	public ModelAndView findgoods(HttpServletRequest request) throws IllegalAccessException, InvocationTargetException{
		String goodsNums= request.getParameter("s");
		//System.out.println(goodsNums);
		String goodsNum = goodsNums.replaceAll(" ","");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("staff_zhongzhuan");
		Logistics logistics = logisticsService.getgoods(goodsNum);
		String name = logisticsService.getgoodsName(goodsNum);
		logistics.setName(name);
		logistics.setGoodsNum(goodsNum);
		mav.addObject("logistics",logistics);
		return mav;			
	}
	@RequestMapping(value="/updatelocal.html")
	public ModelAndView updatelocal(HttpServletRequest request,String nowaddress) throws IllegalAccessException, InvocationTargetException{
		String goodsNum=request.getParameter("goods_num");
		String goodsNum1 = goodsNum.replaceAll(" ","");
		System.out.println("3处"+goodsNum1);
		
		nowaddress=request.getParameter("maddress");
		String nowaddress1 = nowaddress.replaceAll(" ","");
		System.out.println("3处"+nowaddress1);
		logisticsService.updatelocal(goodsNum1,nowaddress1);
		return new ModelAndView("redirect:findgoods.html?s="+goodsNum1);
	}
	
}
