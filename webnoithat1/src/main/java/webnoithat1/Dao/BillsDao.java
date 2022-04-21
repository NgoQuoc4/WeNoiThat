package webnoithat1.Dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import webnoithat1.Dto.BillDetail;
import webnoithat1.Dto.Bills;
import webnoithat1.Mapper.BillsMapper;
@Repository
public class BillsDao extends BaseDao {

	public int AddBills(Bills bill) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO `bills` ");
		sql.append("( ");
		sql.append(" `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note` ");
		sql.append(") ");
		sql.append(" VALUES ");
		sql.append("( ");
		sql.append(" '" + bill.getUser() + "', ");
		sql.append(" '" + bill.getPhone() + "', ");
		sql.append(" '" + bill.getDisplay_name() + "', ");
		sql.append(" '" + bill.getAddress() + "', ");
		sql.append(" " + bill.getTotal() + ", ");
		sql.append(" " + bill.getQuanty() + ", ");
		sql.append(" '" + bill.getNote() + "' ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};

	public int GetIDLastBills() {
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		int id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};

	public int AddBillsDetail(BillDetail billDetail) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO `billdetail` ");
		sql.append("( ");
		sql.append(" `id_product`, `id_bills`, `quanty`, `total` ");
		sql.append(") ");
		sql.append(" VALUES ");
		sql.append("( ");
		sql.append(" '" + billDetail.getId_product() + "', ");
		sql.append(" '" + billDetail.getId_bills() + "', ");
		sql.append(" " + billDetail.getTotal() + ", ");
		sql.append(" " + billDetail.getQuanty() + " ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};

	public List<Bills> getDataBills() {
		String sql = "SELECT * FROM bills";
		List<Bills> list = _jdbcTemplate.query(sql, new BillsMapper());
		return list;
	}

	public int DeleteBillsAoCuoiById(int id) {
		String sql = "DELETE FROM bills WHERE bills.id =? ";
		return _jdbcTemplate.update(sql, id);
	}
}