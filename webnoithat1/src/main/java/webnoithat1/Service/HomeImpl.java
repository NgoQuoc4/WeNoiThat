package webnoithat1.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import webnoithat1.Dao.BillDetailDao;
import webnoithat1.Dao.BillsDao;
import webnoithat1.Dao.CartDao;
import webnoithat1.Dao.CategorysDao;
import webnoithat1.Dao.ProductsDao;
import webnoithat1.Dao.UsersDao;
import webnoithat1.Dto.BillDetail;
import webnoithat1.Dto.Bills;
import webnoithat1.Dto.CartDto;
import webnoithat1.Dto.CategorysDto;
import webnoithat1.Dto.PaginatesDto;
import webnoithat1.Dto.ProductsDto;
import webnoithat1.Dto.UsersDto;

@Service
public class HomeImpl implements HomeService {

	@Autowired
	private UsersDao usersDao = new UsersDao();
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private ProductsDao productsDao;
	@Autowired
	ProductsDao productDao = new ProductsDao();
///// san pham
	@Override
	public List<CategorysDto> GetDataCategorys() {
		List<CategorysDto> list = categorysDao.GetDataCategorys();
		return list;
	}
	
	@Override
	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}
	
	//lấy loại sản phẩm
	public List<ProductsDto> GetAllProductsByID(int id) {
		return productsDao.GetAllProductsByID(id);
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		return productsDao.GetDataProductsPaginate(id, start, totalPage);
	}

	// lấy chi tiêt sản phâm
	public ProductsDto GetProductByID(int id) {
		List<ProductsDto> listProducts = productDao.GetProductByID(id);
		return listProducts.get(0);
	}

	public List<ProductsDto> GetProductByIDCategory(int id) {
		return productDao.GetAllProductsByID(id);
	}
	


	
// phan trang
		public PaginatesDto GetInfoPaginates(int totalData, int limit, int currentPage) {
			PaginatesDto paginate = new PaginatesDto();
			paginate.setLimit(limit);
			paginate.setTotalPage(SetInfoTotalPage(totalData, limit));
			paginate.setCurrentPage(CheckCurrentPage(currentPage ,paginate.getTotalPage()));
			int start = FindStart(paginate.getCurrentPage(), limit);
			paginate.setStart(start);
			int end = FindEnd(paginate.getStart(), limit, totalData);
			paginate.setEnd(end);
			return paginate;
		}

		private int FindEnd(int start, int limit, int totalData) {
			return start + limit > totalData ? totalData : (start + limit) -1;
		}

		private int FindStart(int currentPage, int limit) {
			return ((currentPage - 1) * limit) + 1;
		}

		private int SetInfoTotalPage(int totalData, int limit) {
			int totalPage = 0;
			totalPage = totalData / limit;
			totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage;
			return totalPage;
		}
		
		public int CheckCurrentPage(int currentPage, int totalPage) {
			if (currentPage < 1) {
				return 1;
			}
			if (currentPage > totalPage) {
				return totalPage;
			}
			return currentPage;
		}
		
//taikhoan	
	public int AddAccount(UsersDto user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
		return usersDao.AddAccount(user);
	}
	
	@Override
	public int EidtAccount(UsersDto user, int id) {
		return usersDao.EidtAccount(user, id);
	}

	@Override
	public UsersDto CheckAccount(UsersDto user) {
		String pass = user.getPassword();
		user = usersDao.GetUserByAcc(user);
		if (user != null) {
			if (BCrypt.checkpw(pass, user.getPassword())) {
				return user;
			} else {
				return null;
			}
		}
		return null;
	}

	@Override
	public List<UsersDto> getDataUsers() {
		return usersDao.getDataUsers();
	}

	@Override
	public int DeleteUserById(int id) {
		return usersDao.DeleteUserById(id);
	}

	@Override
	public UsersDto getUsersById(int id) {
		return usersDao.getUsersById(id);
	}
	
	///giỏ hàng
	
	@Autowired
	private CartDao cartDao = new CartDao();

	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		return cartDao.AddCart(id, cart);
	}

	public HashMap<Long, CartDto> EditCart(long id, int quanty, HashMap<Long, CartDto> cart) {
		return cartDao.EditCart(id, quanty, cart);
	}

	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart) {
		return cartDao.DeleteCart(id, cart);
	}

	public int TotalQuanty(HashMap<Long, CartDto> cart) {
		return cartDao.TotalQuanty(cart);
	}

	public double TotalPrice(HashMap<Long, CartDto> cart) {
		return cartDao.TotalPrice(cart);
	}
	
	////bill
	
	@Autowired
	private BillsDao billsDao;
	
//	@Autowired
//	private BillsDao billsDao = new BillsDao();
	@Autowired
	private BillDetailDao billDetailDao;
	
	@Override
	public int AddBills(Bills bill) {
		return billsDao.AddBills(bill);
	}
	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		int idBills = billsDao.GetIDLastBills();
		for (Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
	}

	@Override
	public List<Bills> getDataBills() {
		return billsDao.getDataBills();
	}

	@Override
	public List<BillDetail> getDataBillDetail() {
		return billDetailDao.getDataBillDetail();
	}

	@Override
	public List<BillDetail> getbilldetailById(int id) {
		return billDetailDao.getbilldetailById(id);
	}

//	@Override
//	public int DeleteBillsAoCuoiById(int id) {
//		return billsDao.DeleteBillsAoCuoiById(id);
//	}
//
//	@Override
//	public int DeleteBillDetailAoCuoiById(int id) {
//		return billDetailDao.DeleteBillDetailAoCuoiById(id);
//	}

	

	

	



	
	
}