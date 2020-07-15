package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import util.DBConnect;

public class UserDaoImpl implements UserDao {
	public static Connection con = null;
	public static PreparedStatement ps = null;
	public static ResultSet rs = null;
	public static ResultSet rs1 = null;
	public static ResultSet rs2 = null;
	public static Statement stmt1 = null;
	public static Statement stmt2 = null;
	public static boolean checkLogin(String username,String password) throws Exception {
		con = DBConnect.getConnection();
	
		String sql1 = "select * from userinformation where userName='"+username+"'";
		String sql2 = "select * from userinformation where userPassword='"+password+"'";
		
		stmt1 = con.createStatement();
		stmt2 = con.createStatement();
		try {
			rs1 = stmt1.executeQuery(sql1);
			rs2 = stmt2.executeQuery(sql2);
			if (rs1.next() && rs2.next()) {
				List<Integer> userList=userId.getInstance();//取得用于存储用户id的链表
				userList.add(0, rs1.getInt("userId"));//将取得的用户id存入链表
				System.out.println(userList.get(0));
				return true; 
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				rs = null;
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				ps = null;
			}
		}
		return false;
	}

	public static void register(String sex,String username, String password) throws Exception {
		con = DBConnect.getConnection();
		String sql = "insert into userInformation (userSex,userName,userPassword) values (?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, sex);
			ps.setString(2, username);
			ps.setString(3, password);
			int b = ps.executeUpdate();
			if (b > 0) {
				System.out.println("数据添加成功");
			} else {
				System.out.println("数据添加失败");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally { // 这里是一些操作数据库之后的一些关闭操作
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				rs = null;
			}
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				ps = null;
			}
		}
	}
}
