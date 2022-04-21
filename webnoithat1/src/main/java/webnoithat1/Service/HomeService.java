package webnoithat1.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import webnoithat1.Dto.BillDetail;
import webnoithat1.Dto.Bills;
import webnoithat1.Dto.CartDto;
import webnoithat1.Dto.CategorysDto;
import webnoithat1.Dto.PaginatesDto;
import webnoithat1.Dto.ProductsDto;
import webnoithat1.Dto.UsersDto;
@Service
public interface HomeService {
	@Autowired
	public int AddAccount(UsersDto user);
	
	public int EidtAccount(UsersDto user, int id);
	
	public UsersDto getUsersById(int id);
	
	public UsersDto CheckAccount(UsersDto user);
	
	public List<UsersDto> getDataUsers();
	
	public int DeleteUserById(int id);	
	
	public List<CategorysDto> GetDataCategorys();
	
	public List<ProductsDto> GetDataProducts();
	
	public ProductsDto GetProductByID(int id);
	
	public List<ProductsDto> GetAllProductsByID(int id);
	
	public List<ProductsDto> GetProductByIDCategory(int id);
	
	public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage);
	/// giỏ hàng
	
	public List<BillDetail> getDataBillDetail();
	public List<BillDetail> getbilldetailById(int id);
//	public List<ProductsDto> getbillProductsDtos(int id);
	
	public List<Bills> getDataBills();
	
	public int AddBills(Bills bill);
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
	
	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> EditCart(long id, int quanty, HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart);
	public int TotalQuanty(HashMap<Long, CartDto> cart);
	public double TotalPrice(HashMap<Long, CartDto> cart);
}

