package webnoithat1.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import webnoithat1.Dto.UsersDto;
import webnoithat1.Mapper.UsersMapper;

@Repository
public class UsersDao extends BaseDao {
	public int AddAccount(UsersDto user) {
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("    user, ");
		sql.append("    password, ");
		sql.append("    display_name, ");
		sql.append("    address, ");
		sql.append("    id_role ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '" + user.getUser() + "', ");
		sql.append("    '" + user.getPassword() + "', ");
		sql.append("    '" + user.getDisplay_name() + "', ");
		sql.append("    '" + user.getAddress() + "', ");
		sql.append("    " + 1 + " ");
		sql.append(")");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};

	public UsersDto GetUserByAcc(UsersDto user) {
		String sql = "SELECT * FROM users WHERE user = '" + user.getUser() + "' ";
		UsersDto result = _jdbcTemplate.queryForObject(sql, new UsersMapper());
		return result;
	};

	public int EidtAccount(UsersDto user, int id) {
		String sql = ("UPDATE users SET user='" + user.getUser() + "' , display_name='" + user.getDisplay_name()
				+ "' , address='" + user.getAddress() + "' , id_role=" + user.getId_role() + " WHERE users.id ="
				+ id);
		return _jdbcTemplate.update(sql);
	}

	public List<UsersDto> getDataUsers() {
		List<UsersDto> list = new ArrayList<UsersDto>();
		String sql = "SELECT * FROM users";
		list = _jdbcTemplate.query(sql, new UsersMapper());
		return list;
	}

	public int DeleteUserById(int id) {
		String sql = "DELETE FROM users WHERE users.id=? ";
		return _jdbcTemplate.update(sql, id);
	}

	public UsersDto getUsersById(int id) {
		String sql = "SELECT * FROM users WHERE users.id ="+id;
		UsersDto user = _jdbcTemplate.queryForObject(sql, new UsersMapper());
		return user;
	}
}
