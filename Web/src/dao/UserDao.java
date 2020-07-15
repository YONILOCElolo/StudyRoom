package dao;

import java.sql.SQLException;

public interface UserDao {
	public static boolean checkLogin(String username,String password) throws SQLException {
		return false;
	}
	public static void register(String sex,String username, String password) {
	}
}
