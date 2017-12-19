package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.SimStation;
import com.zust.dto.Station;
import com.zust.service.StationServiceI;

@Controller
public class StationController {
	@Autowired
	private StationServiceI stationService;
	
	@RequestMapping(value="/admin_newZZZ.html")
	public String adminNewZZZ(){
		return "admin_newZZZ";
	}
	@RequestMapping(value="/admin_allZZZ.html")
	public ModelAndView adminallZZZ(@RequestParam(value="pageNum",required=false)String pageNum) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		int num=1;	
		int total = stationService.getZZZPageNum();	
		if(pageNum==null){
			num=1;		
		}else{
			num = Integer.parseInt(pageNum);
		}
		List<Station> list = stationService.getAllZZZ(num);
		mav.addObject("zzzs", list);
		mav.addObject("spageNum", num);
		mav.addObject("total", total);
		return mav;
	}
	@RequestMapping(value="/newZZZ.html")
	public String newZZZ(Station station) throws IllegalAccessException, InvocationTargetException{
		stationService.createStation(station);
		return "redirect:/admin_allZZZ.html";
		
	}
	@RequestMapping(value="/admin_modifyZZZ.html")
	public ModelAndView adminModifyZZZ(@RequestParam(value="id",required=false)String sid) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		if(sid!=null){
			int id = Integer.parseInt(sid);
			Station station = stationService.getStationById(id);
			mav.addObject("station", station);
		}
		mav.setViewName("admin_modifyZZZ");
		return mav;
	}
	@RequestMapping(value="/checkModify.html")
	public String checkModify(Station station){
		
		//System.out.println(station.getAddress());
		stationService.Modify(station);
		return "redirect:/admin_allZZZ.html";
	}
	@ResponseBody
	@RequestMapping(value="/getZZZName.html")
	public List<Object[]> getZZZName() throws IllegalAccessException, InvocationTargetException{
		List<Object[]> sst = stationService.getZZZName();
		return sst;
		
	}
}
