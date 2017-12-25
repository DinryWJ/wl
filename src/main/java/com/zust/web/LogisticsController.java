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
	@RequestMapping(value="staff_confirm.html")
	public ModelAndView staffConfirm(HttpServletRequest request,@RequestParam(value="pageNum",required=false)String pageNum) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		Staff staff = (Staff) request.getSession().getAttribute("staff");
		int id = staff.getStationId();
		int num=1;
		int total = goodsService.getUnConfirmPageNum(id,10);
		if(pageNum==null){
			num=1;		
		}else{
			num = Integer.parseInt(pageNum);
		}

		mav.setViewName("staff_confirm");
		List<Goods> list = goodsService.staffConfirm(id,num,10);
		mav.addObject("goods", list);
		mav.addObject("spageNum", num);
		mav.addObject("total", total);
		return mav;
	}
	@RequestMapping(value="staff_checkConfirm.html")
	public String staffCheckConfirm(String code){
		logisticsService.checkConfirm(code);
		return "redirect:/staff_confirm.html";
	}
	@RequestMapping(value="staff_zhongzhuan.html")
	public ModelAndView staffZhongzhuan(HttpServletRequest request,@RequestParam(value="code",required=false)String code) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("staff_zhongzhuan");
		if(code!=null){
			Goods goods = goodsService.search(code);
			if(goods!=null){ //xiugai
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
	@RequestMapping(value="/setZhongzhuan2.html")
	public String setZhongzhuan2(int goodsId,String address,String code){
		logisticsService.setZhongzhuan(goodsId,address);
		goodsService.setComplete(goodsId);
		return "redirect:/staff_zhongzhuan.html?code="+code;
	}

}
