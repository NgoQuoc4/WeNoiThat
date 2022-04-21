package webnoithat1.Dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import webnoithat1.Dto.BillDetail;
import webnoithat1.Mapper.BilldetailMapper;

@Repository
public class BillDetailDao extends BaseDao {
	private StringBuffer sqlString() {
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT * FROM ");
		sql.append(" billdetail AS a ");
		sql.append(" INNER JOIN ");
		sql.append(" bills AS t ");
		sql.append(" ON a.id_bills = t.id ");
		return sql;
	};


	public String SqlbilldetailByid(int id) {
		StringBuffer sql = sqlString();
		sql.append(" WHERE t.id = " + id );
		return sql.toString();
	}
	
	public List<BillDetail> getbilldetailById(int id) {
		String sql = SqlbilldetailByid(id);
		List<BillDetail> list = _jdbcTemplate.query(sql, new BilldetailMapper());
		return list;
	}

	public List<BillDetail> getDataBillDetail() {
		List<BillDetail> list = new ArrayList<BillDetail>();
		String sql = " SELECT * FROM billdetail ";
		list = _jdbcTemplate.query(sql, new BilldetailMapper());
		return list;
	}
	
	public int DeleteBillDetailAoCuoiById(int id) {
		String sql = " DELETE FROM billdetail WHERE billdetail.id = ? ";
		return _jdbcTemplate.update(sql, id);
	}

}