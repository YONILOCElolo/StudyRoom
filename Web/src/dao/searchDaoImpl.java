package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Attribute;
import util.DBConnect;

public class searchDaoImpl implements searchDao {

	@Override
	public List<Attribute> search(String str) throws Exception {// 根据网站名称进行模糊查询
		// TODO Auto-generated method stub
		Connection con = DBConnect.getConnection();// 取得数据库连接
		String sql = "select * from attribute where WebName LIKE \"%\"?\"%\"";// SQL语句
		PreparedStatement stum = null;
		List<Integer> userList=userId.getInstance();//取得用于存储用户id的链表
		System.out.println(userList.get(0));
		try {
			stum = con.prepareStatement(sql);
			stum.setObject(1, str);
			ResultSet cResultSet = stum.executeQuery();
			if (cResultSet != null) {
				List<Attribute> attributeList = new ArrayList<Attribute>();
				while (cResultSet.next()) {
					Attribute attribute = new Attribute();
					attribute.setID(cResultSet.getString("ID"));
					attribute.setPicture(cResultSet.getString("picture"));
					attribute.setWebsite(cResultSet.getString("website"));
					attribute.setWebName(cResultSet.getString("WebName"));
					attribute.setType(cResultSet.getString("type"));
					attributeList.add(attribute);
				}
				return attributeList;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			stum.close();
			con.close();
		}
		return null;
	}

}
