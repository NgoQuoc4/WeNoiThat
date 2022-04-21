package webnoithat1.Controller;

import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import webnoithat1.Dto.Bills;
import webnoithat1.Dto.CartDto;
import webnoithat1.Dto.UsersDto;

@Controller
public class CheckoutController extends BaseController {

	// Thanh toán
	@RequestMapping(value = { "/Checkout" }, method = RequestMethod.GET)
	public ModelAndView Checkout(HttpServletRequest request, HttpSession session) {
		_mvShare.setViewName("bills/Checkout");
		Bills bills = new Bills();
		UsersDto loginInfo = (UsersDto) session.getAttribute("LoginInfo");
		if (loginInfo != null) {
			bills.setAddress(loginInfo.getAddress());
			bills.setDisplay_name(loginInfo.getDisplay_name());
			bills.setUser(loginInfo.getUser());
		}
		_mvShare.addObject("bills", bills);
		return _mvShare;
	}

	@RequestMapping(value = { "/Checkout" }, method = RequestMethod.POST)
	public String CheckoutBill(HttpServletRequest request, HttpSession session, @ModelAttribute("bills") Bills bill) {
		Integer str1 = (Integer) session.getAttribute("TotalQuantyCart");
		bill.setQuanty(str1);
		Double str2 = (Double) session.getAttribute("TotalPriceCart");
		bill.setTotal(str2);
		if (_homeImpl.AddBills(bill) > 0) {
			HashMap<Long, CartDto> carts = (HashMap<Long, CartDto>) session.getAttribute("Cart");
			_homeImpl.AddBillsDetail(carts);
		}
		session.removeAttribute("Cart");
		session.removeAttribute("TotalQuantyCart");
		session.removeAttribute("TotalPriceCart");
		return "redirect:home";
	}

}