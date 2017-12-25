package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.Complaint;
import com.zust.dto.Goods;
import com.zust.dto.LoginCommand;
import com.zust.dto.Staff;
import com.zust.dto.Station;
import com.zust.service.ComplaintServiceI;
import com.zust.service.GoodsServiceI;
import com.zust.service.LogisticsServiceI;
import com.zust.service.StaffServiceI;
import com.zust.service.StationServiceI;

@Controller
public class StaffController {
	@Autowired
	private StaffServiceI staffService;
	
	@Autowired
	private GoodsServiceI goodsService;
	
	@Autowired
	private ComplaintServiceI complaintService;
	
	@Autowired
	private StationServiceI stationService;
	
	@Autowired
	private LogisticsServiceI logisticsService;


	@RequestMapping(value="staff_index.html")
	public String staffIndex(HttpServletRequest request) throws IllegalAccessException, InvocationTargetException{	
		Staff staff = (Staff) request.getSession().getAttribute("staff");
		if(staff.getPosition()==1){
			int id = staff.getStationId();
			Station station = stationService.getStationById(id);
			request.setAttribute("station", station);
			Long num = logisticsService.getNewComNum(id);
			request.setAttribute("num", num);
		}
		if(staff.getPosition()==2){
			Long num2 = logisticsService.getNewComNum2();			
			Long num3 = complaintService.getNewComplaintsNum();
			request.setAttribute("num2", num2);
			request.setAttribute("num3", num3);
		}
		return "staff_index";
	}

	
	@RequestMapping(value="staff_person.html")
	public String staffPserson(){
		return "staff_person";
	}
	
	@RequestMapping(value="staff_shenhe.html")
	public ModelAndView staffShenhe(@RequestParam(value="pageNum",required=false)String pageNum) throws IllegalAccessException, InvocationTargetException{		
		ModelAndView mav = new ModelAndView();
		int num=1;
		int total = goodsService.getPageNum(10);
		if(pageNum==null){
			num=1;		
		}else{
			num = Integer.parseInt(pageNum);
		}
		List<Goods> list = goodsService.getAllYJ(num,10);
		mav.setViewName("staff_shenhe");
		mav.addObject("goods",list);
		mav.addObject("spageNum", num);
		mav.addObject("total", total);
		return mav;

	}
	@RequestMapping(value="staff_shenhe2.html")
	public ModelAndView staffShenhe2(@RequestParam(value="code",required=false) String code) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("staff_shenhe2");
		if(null!=code){
			Goods goods = goodsService.search(code);
			mav.addObject("goods", goods);
		}
		return mav;
	}
	@RequestMapping(value="staff_shenhe2Modify.html")
	public String staffShenhe2Modify(Goods goods) throws IllegalAccessException, InvocationTargetException{
		goodsService.modify(goods);
		return "redirect:/staff_index.html";
		
	}
	
	@RequestMapping(value="staff_tongzhi.html")
	public ModelAndView staffTongzhi(@RequestParam(value="pageNum",required=false)String pageNum) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		int num=1;
		int total = goodsService.getUncheckPageNum(10);
		if(pageNum==null){
			num=1;		
		}else{
			num = Integer.parseInt(pageNum);
		}
		List<Goods> list = goodsService.getUncheckedYJ(num,10);
		mav.setViewName("staff_tongzhi");
		mav.addObject("goods",list);
		mav.addObject("spageNum", num);
		mav.addObject("total", total);
		return mav;
	}

	@RequestMapping(value="staff_tongzhi2.html")
	public ModelAndView staffTongzhi2(@RequestParam(value="code",required=false) String code,@RequestParam(value="delcode",required=false) String delcode) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		if(code!=null){
			Goods goods = goodsService.search(code);
			mav.addObject("good",goods);
		}
		if(delcode!=null){
			goodsService.delGoodsByCode(delcode);
			return new ModelAndView("redirect:/staff_tongzhi.html");
		}
		mav.setViewName("staff_tongzhi2");		
		return mav;
	}
	@RequestMapping(value="staff_tousu.html")
	public ModelAndView staffTousu(@RequestParam(value="pageNum",required=false)String pageNum) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		int num=1;	
		int total = complaintService.getPageNum(5);
		if(pageNum==null){
			num=1;		
		}else{
			num = Integer.parseInt(pageNum);
		}
		List<Complaint> complaints = complaintService.getAllComplaints(num,5);
		mav.addObject("complaints", complaints);
		mav.addObject("spageNum", num);
		mav.addObject("total", total);
		mav.setViewName("staff_tousu");
		return mav;
	}
	@RequestMapping(value="staff_tousu2.html")
	public ModelAndView staffTousu2(@RequestParam(value="id",required=false)String scomplaintId) throws IllegalAccessException, InvocationTargetException{
		ModelAndView mav = new ModelAndView();
		if(scomplaintId!=null){
		
			int complaintId = Integer.parseInt(scomplaintId);
			Complaint complaint = complaintService.getComplaintById(complaintId);
			mav.addObject("complaint", complaint);
		}
		
		mav.setViewName("staff_tousu2");
		return mav;
	}
	@RequestMapping(value="recall.html")
	public String recall(HttpServletRequest request,String recall,int complaintId){
		Staff staff  = (Staff) request.getSession().getAttribute("staff");
		int handlerId = staff.getStaffId();
		complaintService.recall(handlerId,recall,complaintId);
		return "redirect:/staff_tousu.html";
		
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

	@RequestMapping(value="/staff_person.html")
	public String staffPerson(){
		return "staff_person";
	}
	
	@RequestMapping(value="/updatestaff.html")
	public  ModelAndView updatestaff(HttpServletRequest request,
			Staff staff) throws IllegalAccessException, InvocationTargetException{
		System.out.println(staff.isGender());
		staffService.updateStaff(staff);
		request.getSession().setAttribute("staff", staff);
		return new ModelAndView("redirect:/staff_person.html");	
		}	

	
	@RequestMapping(value="/updatestaffpassword.html")
	public  ModelAndView updatepassword(HttpServletRequest request,String oldPassword,String newPassword,String reNewPassword) throws IllegalAccessException, InvocationTargetException{
		Staff staff  = (Staff) request.getSession().getAttribute("staff");
		String email = staff.getEmail();
		if(staff.getPassword().equals(oldPassword)){
			if(newPassword.equals(reNewPassword)){
				staffService.updatePassword(email, newPassword);
				int id = staffService.getStaffIdByEmail(email);
				Staff staff2 = staffService.getStaffById(id);
				request.getSession().setAttribute("staff", staff2);
				return new ModelAndView("redirect:/staff_person.html");	
			}else{
				return new ModelAndView("staff_person","error","两次密码不同");	
			}
			
		}
		return new ModelAndView("staff_person","error","旧密码错误");	
		

	}

}
