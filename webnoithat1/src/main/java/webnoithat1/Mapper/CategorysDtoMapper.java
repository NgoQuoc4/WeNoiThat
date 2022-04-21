package webnoithat1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import webnoithat1.Dto.CategorysDto;

public class CategorysDtoMapper implements RowMapper<CategorysDto> {

	@Override
	public CategorysDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		CategorysDto categorys = new CategorysDto();
		categorys.setId(rs.getInt("id"));
		categorys.setName(rs.getString("name"));
		return categorys;
	}

}
