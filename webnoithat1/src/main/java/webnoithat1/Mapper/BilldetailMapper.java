package webnoithat1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import webnoithat1.Dto.BillDetail;


public class BilldetailMapper implements RowMapper<BillDetail>{

	@Override
	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDetail billdetail = new BillDetail();
		billdetail.setId(rs.getInt("id"));
		billdetail.setId_product(rs.getInt("id_product"));
		billdetail.setId_bills(rs.getInt("id_bills"));
		billdetail.setQuanty(rs.getInt("quanty"));
		billdetail.setTotal(rs.getDouble("total"));
		return billdetail;
	}

}
