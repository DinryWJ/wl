package com.zust.web;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zust.dto.Goods;
import com.zust.dto.LoginCommand;
import com.zust.dto.Staff;
import com.zust.service.GoodsServiceI;
import com.zust.service.StaffServiceI;

@Controller
public class StaffController {
	@Autowired
	private StaffServiceI staffService;
	
	@Autowired
	private GoodsServiceI goodsService;
	
	@RequestMapping(value="/staffloginCheck.html")
	public  ModelAndView userloginCheck(HttpServletRequest request,LoginCommand loginCommand) throws IllegalAccessException, InvocationTargetException{
		boolean isVaild = staffService.isMatched(loginCommand.getEmail(), loginCommand.getPassword());
		if(!isVaild){
			return new ModelAndView("staff_signin","error","邮箱或密码错误");
		}else{
			int id = staffService.getStaffIdByEmail(loginCommand.getEmail());
			Staff staff = staffService.getStaffById(id);
			request.getSession().setAttribute("staff", staff);
			//登陆后跳转
			return new ModelAndView("redirect:/staff_index.html");
			
		}	
	}
    @RequestMapping("/stafftoLogin.html")
    public String execute(HttpSession session){
        session.invalidate();
        return "redirect:/staff_signin.html";
    }
	
	@RequestMapping(value="staff_index.html")
	public String staffIndex(){
		return "staff_index";
	}
	@RequestMapping(value="staff_shenhe.html")
	public ModelAndView staffShenhe() throws IllegalAccessException, InvocationTargetException{
		List<Goods> list = goodsService.getAllYJ();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("staff_shenhe");
		mav.addObject("goods",list);
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
	public ModelAndView staffTongzhi() throws IllegalAccessException, InvocationTargetException{
		List<Goods> list = goodsService.getUncheckedYJ();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("staff_tongzhi");
		mav.addObject("goods",list);
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
	public String staffTousu(){
		return "staff_tousu";
	}
	@RequestMapping(value="staff_tousu2.html")
	public String staffTousu2(){
		return "staff_tousu2";
	}
	@RequestMapping(value="staff_zhongzhuan.html")
	public String staffZhongzhuan(){
		return "staff_zhongzhuan";
	}
}
