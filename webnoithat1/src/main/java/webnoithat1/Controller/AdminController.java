package webnoithat1.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import webnoithat1.Dto.UsersDto;

@Controller
public class AdminController extends BaseController {
	
	// homeadmin Quản lý tài khoản của Users
	@RequestMapping(value = { "admin" }, method = RequestMethod.GET)
	public ModelAndView IndexAdmin() {
		_mvShare.addObject("user", _homeImpl.getDataUsers());
		_mvShare.setViewName("admin/admin");
		return _mvShare;
	}

	// Xoá tài khoản của Users
	@RequestMapping(value = { "/DeleteUsers/{id}" })
	public String DeleteUsers(HttpSession session, @PathVariable int id, @ModelAttribute("user") UsersDto user) {
		if (session.getAttribute("LoginInfo2") != null) {
			_mvShare.addObject("user", _homeImpl.DeleteUserById(id));
		}
		return "redirect:/admin";
	}

	// Chỉnh sửa thông tin tài khoản và phân quyền Users
	@RequestMapping(value = { "/EditUsers/{id}" }, method = RequestMethod.GET)
	public ModelAndView EidtUsers(@PathVariable int id) {
		_mvShare.addObject("user", _homeImpl.getUsersById(id));
		_mvShare.setViewName("admin/EditUsers");
		return _mvShare;
	}

	@PostMapping(value = { "/EditUsers/{id}" })
	public String EidtUsers2(@ModelAttribute("user") UsersDto usersDto, @PathVariable int id) {
		_homeImpl.EidtAccount(usersDto, id);
		return "redirect:/admin";
	}

	@RequestMapping(value = { "/qlproducts" }, method = RequestMethod.GET)
	public ModelAndView qlproducts() {
		_mvShare.addObject("categorys", _homeImpl.GetDataCategorys());
		_mvShare.addObject("products", _homeImpl.GetDataProducts());
		_mvShare.setViewName("qlproducts");
		return _mvShare;
	}
	@RequestMapping(value = { "/qlcategorys" }, method = RequestMethod.GET)
	public ModelAndView qlcategorys() {
		_mvShare.addObject("categorys", _homeImpl.GetDataCategorys());
		_mvShare.addObject("products", _homeImpl.GetDataProducts());
		_mvShare.setViewName("qlcategorys");
		return _mvShare;
	}

	@RequestMapping(value = { "/editproducts" }, method = RequestMethod.GET)
	public ModelAndView editproducts() {
		_mvShare.addObject("categorys", _homeImpl.GetDataCategorys());
		_mvShare.addObject("products", _homeImpl.GetDataProducts());
		_mvShare.setViewName("editproducts");
		return _mvShare;
	}

	////
	@RequestMapping(value = { "/Bills" })
	public ModelAndView Bills() {
		_mvShare.addObject("Bills", _homeImpl.getDataBills());
		_mvShare.setViewName("admin/Bills");
		return _mvShare;
	}
	@RequestMapping(value = { "/BillDetail/{id}" })
	public ModelAndView BillDetail(@PathVariable int id) {
		_mvShare.addObject("BillDetail", _homeImpl.getbilldetailById(id));
		_mvShare.addObject("bills", _homeImpl.GetDataProducts());
		_mvShare.setViewName("admin/BillDetail");
		return _mvShare;
	}
	
}
