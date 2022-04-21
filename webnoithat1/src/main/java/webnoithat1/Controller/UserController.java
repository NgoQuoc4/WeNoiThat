package webnoithat1.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import webnoithat1.Dto.UsersDto;

@Controller
public class UserController extends BaseController {
	@RequestMapping(value = { "/Login" }, method = RequestMethod.GET)
	public ModelAndView Login() {
		_mvShare.setViewName("account/Login");
		return _mvShare;
	}

	@RequestMapping(value = { "/Login" }, method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") UsersDto user) {
		user = _homeImpl.CheckAccount(user);
		if (user != null && user.getId_role() == 2) {
			session.setAttribute("LoginInfo2", user);
			_mvShare.setViewName("redirect:admin");
		} else {
			session.setAttribute("LoginInfo", user);
			_mvShare.setViewName("redirect:home");
		}
		return _mvShare;
	};

	@RequestMapping(value = { "/Register" }, method = RequestMethod.GET)
	public ModelAndView Register() {
		_mvShare.setViewName("account/Register");
		_mvShare.addObject("user", new UsersDto());
		return _mvShare;
	}

	@RequestMapping(value = { "/Register" }, method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") UsersDto user) {
		try {
			int count = _homeImpl.AddAccount(user);
			if (count > 0) {
				_mvShare.addObject("status", "Đăng ký thành công!");
			} else {
				_mvShare.addObject("status", "Đăng ký thất bại!");
			}
		} catch (Exception e) {
			_mvShare.addObject("status", "Đăng ký thất bại");
			_mvShare.addObject("status", "Tài khoản đã tồn tại");
		}
		_mvShare.setViewName("account/Register");
		return _mvShare;
	}

	@RequestMapping(value = { "/Logout" }, method = RequestMethod.GET)
	public String Logout(HttpSession session) {
		session.removeAttribute("LoginInfo");
		session.removeAttribute("LoginInfo2");
		return "redirect:home";
	}

}
