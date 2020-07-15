package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import entity.Attribute;
import util.DBConnect;


public class AttributeDaoImpl implements AttributeDao {

	@Override
	public Attribute foundList(String a) throws Exception {// 按照编号查找具体内容
		// TODO Auto-generated method stub
		Connection con = DBConnect.getConnection();// 取得连接
		String sql = "select * from attribute where Id=?";// 查询sql语句
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);// 编译sql语句
			stum.setObject(1, a);// 注入参数
			ResultSet set = stum.executeQuery();// 执行sql语句
			if (set.next()) {// 判断是否查询为空
				Attribute attribute = new Attribute();// 实例化一个用于存储每个网站相关信息的类
				attribute.setID(set.getString("iD"));
				attribute.setPicture(set.getString("picture"));
				attribute.setWebsite(set.getString("website"));
				attribute.setWebName(set.getString("webName"));
				attribute.setType(set.getString("type"));
				return attribute;
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
