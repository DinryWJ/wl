package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.Complaint;
import com.zust.dto.Goods;
import com.zust.dto.Logistics;
import com.zust.dto.Staff;
import com.zust.dto.Station;
import com.zust.entity.Tlogistics;
import com.zust.service.GoodsServiceI;
import com.zust.service.LogisticsServiceI;
import com.zust.service.StationServiceI;



@Controller
public class LogisticsController {
	@Autowired
	private LogisticsServiceI logisticsService;
	
	@Autowired
	private GoodsServiceI goodsService;
	
	@Autowired
	private StationServiceI stationService;
	
	@RequestMapping(value="/setLogistics.html")
	public String setLoginstics(Logistics logistic){
		logisticsService.setLogistics(logistic);
		return "redirect:/staff_tongzhi.html";
	}
	
	@RequestMapping(value="staff_zhongzhuan.html")
	public ModelAndView staffZhongzhuan(HttpServletRequest request,@RequestParam(value="code",required=false)String code) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("staff_zhongzhuan");
		if(code!=null){
			Goods goods = goodsService.search(code);
			if(code!=null){
				Logistics logistics = logisticsService.getLogisticsByGoodsId(goods.getGoodsId());
				Staff staff =  (Staff) request.getSession().getAttribute("staff");
				int id = staff.getStationId();
				Station station = stationService.getStationById(id);
				mav.addObject("station", station);
				mav.addObject("goods", goods);
				mav.addObject("logistics", logistics);
			}
		}
		return mav;
	}
	@RequestMapping(value="/setZhongzhuan.html")
	public String setZhongzhuan(int goodsId,String address){
		logisticsService.setZhongzhuan(goodsId,address);
		return "staff_zhongzhuan";
	}
	@RequestMapping(value="/user_sh.html")
	public ModelAndView goodsSearch(HttpServletRequest request, @RequestParam(value = "s", required = false)String code) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user_sh");
		if(code!=null){
			Goods goods = goodsService.search(code);
			if(goods!=null){
				Logistics logistics = logisticsService.getLogisticsByGoodsId(goods.getGoodsId());
				mav.addObject("goods", goods);
				mav.addObject("logistics", logistics);
			}
		}
		return mav;	
	}
}
