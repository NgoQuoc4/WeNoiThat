package webnoithat1.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import webnoithat1.Dto.PaginatesDto;
import webnoithat1.Service.HomeImpl;

@Controller
public class HomeController extends BaseController {
//	@RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
	@RequestMapping(value = {"/", "/home"})
	public ModelAndView Index() {
		_mvShare.addObject("categorys", _homeImpl.GetDataCategorys());
		_mvShare.addObject("products", _homeImpl.GetDataProducts());
		_mvShare.setViewName("index");
		return _mvShare;
	}
	
	@RequestMapping(value = "/Products")
	public ModelAndView Products() {
		_mvShare.addObject("categorys", _homeImpl.GetDataCategorys());
		_mvShare.addObject("products", _homeImpl.GetDataProducts());
		_mvShare.setViewName("Products");
		return _mvShare;
	}
	@RequestMapping(value = "/list_cart")
	public ModelAndView CartShop() {	
		_mvShare.setViewName("list_cart");
		return _mvShare;
	}
	@RequestMapping(value = "/Checkout")
	public ModelAndView Checkout() {	
		_mvShare.setViewName("Checkout");
		return _mvShare;
	}

	
//loc theo loai	
	@Autowired
	private HomeImpl categoryService;
	@Autowired
	private HomeImpl paginateService;
	// hien thi so san pham
	private int totalProductsPage = 12;
	
	@RequestMapping(value = "/Categorys {id}")
	public ModelAndView Product(@PathVariable String id) {
		_mvShare.setViewName("Categorys");
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id), paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	

//phan trang
	@RequestMapping(value = "/Categorys{id}/{currentPage}")
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {
		_mvShare.setViewName("Categorys");
		int totalData = categoryService.GetAllProductsByID(Integer.parseInt(id)).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		_mvShare.addObject("idCategory", id);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", categoryService.GetDataProductsPaginate(Integer.parseInt(id) ,paginateInfo.getStart(), totalProductsPage));
		return _mvShare;
	}
	
	
	
	@Autowired
	private HomeImpl _productService;
	
	@RequestMapping(value = { "/DetailsProduct {id}" })
	public ModelAndView Index(@PathVariable int id) {
		_mvShare.addObject("product", _productService.GetProductByID(id));
		int idCategory = _productService.GetProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", _productService.GetProductByIDCategory(idCategory));
		_mvShare.setViewName("DetailsProduct");
		return _mvShare;
	}
	
	
	
//	@GetMapping(value = {"/", "home"})
//	public String index() {
//		return "index";
//	}
} 
