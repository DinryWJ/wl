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
	@RequestMapping(value="staff_person.html")
	public String staffPserson(){
		return "staff_person";
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

	@RequestMapping(value="/staff_seachyh.html")
	public String staffSeachyh(){
		return "staff_seachyh";
	}
	@RequestMapping(value="/staff_person.html")
	public String staffPerson(){
		return "staff_person";
	}
	
	@RequestMapping(value="/updatestaff.html")
	public  ModelAndView updatestaff(HttpServletRequest request,
			Staff staff) throws IllegalAccessException, InvocationTargetException{
		staffService.updateStaff(staff);
		request.getSession().setAttribute("staff", staff);
		return new ModelAndView("redirect:staff_person.html");	
		}	

	
	@RequestMapping(value="/updatestaffpassword.html")
	public  ModelAndView updatepassword(HttpServletRequest request,String email,String oldPassword,String newPassword,String reNewPassword) throws IllegalAccessException, InvocationTargetException{
		Staff staff  = (Staff) request.getSession().getAttribute("staff");
		email = staff.getEmail();
 
		if(request.getSession().getAttribute("password")==request.getParameter(oldPassword)&&request.getParameter(newPassword)==request.getParameter(reNewPassword))
		{
			staffService.updatePassword(email, newPassword);
			request.getSession().setAttribute("staff", staff);
			return new ModelAndView("redirect:staff_person.html");	
		}else
		return new ModelAndView("redirect:staff_person.html");	
		
	}

}
