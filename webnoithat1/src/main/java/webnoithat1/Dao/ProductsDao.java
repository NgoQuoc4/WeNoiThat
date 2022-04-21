package webnoithat1.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;
import webnoithat1.Dto.ProductsDto;
import webnoithat1.Mapper.ProductsDtoMapper;

@Repository
public class ProductsDao extends BaseDao {
	
	private StringBuffer SqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM products ");
		sql.append(" INNER JOIN categorys ");
		sql.append(" ON categorys.id = products.id_category ");
		return sql;
	}	
	////////////////
	
	private String SqlProducts() {
		StringBuffer sql = SqlString();
		sql.append(" WHERE 1 = 1 ");		
		sql.append(" GROUP BY products.id ");
		sql.append(" ORDER BY RAND() ");
		return sql.toString();
	}

	private StringBuffer SqlProductsByID(int id) {
		StringBuffer sql = SqlString();
		sql.append(" WHERE 1 = 1 ");
		sql.append(" AND products.id_category = " + id + " ");
		return sql;
	}
	
	private String SqlProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sql = SqlProductsByID(id);
		sql.append(" LIMIT " + start + ", "+ totalPage);
		return sql.toString();
	}

	public List<ProductsDto> GetDataProducts() {
		String sql = SqlProducts();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDto> GetAllProductsByID(int id) {
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> listProducts = new ArrayList<ProductsDto>();
		if(listProductsByID.size() > 0) {
			String sql = SqlProductsPaginate(id, start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		return listProducts;
	}

	private String SqlProductByID(long id) {
		StringBuffer sql = SqlString();
		sql.append(" WHERE 1 = 1 ");
		sql.append(" AND products.id = " + id + " ");
		sql.append(" LIMIT 1 ");
		return sql.toString();
	}
	
	public List<ProductsDto> GetProductByID(int id) {
		String sql = SqlProductByID(id);
		List<ProductsDto> listProduct = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProduct;
	}
	
	public ProductsDto FindProductByID(long id) {
		String sql = SqlProductByID(id);
		ProductsDto product = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return product;
		
	}

}