package webnoithat1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import webnoithat1.Dto.ProductsDto;

public class ProductsDtoMapper implements RowMapper<ProductsDto> {

	@Override
	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto products = new ProductsDto();
		products.setId(rs.getInt("id"));
		products.setId_category(rs.getInt("id_category"));
		products.setImg(rs.getString("img"));
		products.setName(rs.getString("name"));
		products.setPrice(rs.getDouble("price"));
		products.setTilte(rs.getString("tilte"));
		return products;
	}

}
