package webnoithat1.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import webnoithat1.Dto.CategorysDto;
import webnoithat1.Mapper.CategorysDtoMapper;
@Repository
public class CategorysDao extends BaseDao{

	public List<CategorysDto> GetDataCategorys() {
		List<CategorysDto> list = new ArrayList<CategorysDto>();
		String sql = "SELECT * FROM categorys";
		list = _jdbcTemplate.query(sql, new CategorysDtoMapper());
		return list;
	}
}
