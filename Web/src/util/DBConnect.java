


package util;

import java.sql.Connection;
import java.sql.DriverManager;

public  class DBConnect {
	private static final String DBDRIVER = "com.mysql.jdbc.Driver";
	private static final String DBURL = "jdbc:mysql://localhost:3306/website?characterEncoding=utf-8";
	private static final String USER = "root";
	private static final String PASSWARD = "123456";

	public static Connection getConnection() throws Exception {
		// TODO Auto-generated method stub
		Class.forName(DBDRIVER);
		return DriverManager.getConnection(DBURL, USER, PASSWARD);
	}
}
