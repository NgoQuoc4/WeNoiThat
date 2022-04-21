package webnoithat1.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import webnoithat1.Dto.UsersDto;

public class UsersMapper implements RowMapper<UsersDto>{

	@Override
	public UsersDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		UsersDto usersDto = new UsersDto();
		usersDto.setId(rs.getInt("id"));
		usersDto.setUser(rs.getString("user"));
		usersDto.setPassword(rs.getString("password"));
		usersDto.setDisplay_name(rs.getString("display_name"));
		usersDto.setAddress(rs.getString("address"));
		usersDto.setId_role(rs.getInt("id_role"));
		return usersDto;
	}

}
