package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Attribute;
import entity.Collection;
import entity.User;
import util.DBConnect;

public class collectionDaoImpl {

	public boolean addCollection(Attribute attribute, String name) throws Exception {// 此处需要填写参数
		// TODO Auto-generated method stub
		List<Integer> useridList=userId.getInstance();//取得当前用户的ID
		Connection con = DBConnect.getConnection();// 取得数据库连接
		String sql = "insert into collection (collectionId,pictureAdress,websiteAdress,websiteName,userName,type) values(?,?,?,?,?,?)";// SQL语句
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);// 编译sql语句
			stum.setObject(1, attribute.getID());
			stum.setObject(2, attribute.getPicture());// 注入相应得属性参数
			stum.setObject(3, attribute.getWebsite());
			stum.setObject(4, attribute.getWebName());
			stum.setObject(5, name);
			stum.setObject(6, attribute.getType());
			int len = stum.executeUpdate();// 执行SQL语句
			if (len != 0) {// 判断执行结果
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			stum.close();
			con.close();
		}
		return false;
	}

	public boolean deleteCellection(String collectid, int userid) throws Exception {// 删除用户收藏
		// TODO Auto-generated method stub
		Connection con = DBConnect.getConnection();// 取得数据库连接
		String sql = "delete from collection where collectionId=? and userId=?";// SQL语句
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);// 编译SQL语句
			stum.setObject(1,collectid);// 注入参数
			stum.setObject(2, userid);
			int len = stum.executeUpdate();// 执行SQL语句
			if (len != 0) {// 判断是否执行成功
				return true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			stum.close();
			con.close();
		}
		return false;
	}

	public List<Collection> studyList(int id) throws Exception {// 按照用户编号来进行查找学习收藏
		// TODO Auto-generated method stub
		List<Integer>useridList=userId.getInstance();
		System.out.println(useridList.get(0));
		Connection con = DBConnect.getConnection();// 取得连接
		String sql = "select * from collection where type='学习'  and userId=?";// 按照编号查找收藏表
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);
			//stum.setObject(1, id);
			stum.setObject(1, useridList.get(0));
			ResultSet collectionResultSet = stum.executeQuery();// 执行SQL语句
			if (collectionResultSet != null) {
				System.out.println("结果集");
				List<Collection> collectionsList = new ArrayList<Collection>();// 定义一个收藏链表
				while (collectionResultSet.next()) {// 判断集合类
					Collection collection = new Collection();
					collection.setCollectionID(collectionResultSet.getString("collectionId"));// 设置相关的属性值
					collection.setPictureAdress(collectionResultSet.getString("pictureAdress"));
					collection.setWebsiteAdress(collectionResultSet.getString("websiteAdress"));
					collection.setWebsiteName(collectionResultSet.getString("websiteName"));
					collection.setUserId(collectionResultSet.getInt("userId"));
					// System.out.println(collection.toString());
					collectionsList.add(collection);
				}
				
				return collectionsList;// 返回查询结果链表
			}else {
				System.out.println("结果集不为空");
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

	public List<Collection> shopList(int id) throws Exception {// 按照用户编号来进行查找购物收藏
		// TODO Auto-generated method stub
		Connection con = DBConnect.getConnection();// 取得连接
		String sql = "select * from collection where type='好物' and userId=?";// 按照编号查找收藏表
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);
			stum.setObject(1, id);
			ResultSet collectionResultSet = stum.executeQuery();// 执行SQL语句
			if (collectionResultSet != null) {
				List<Collection> collectionsList = new ArrayList<Collection>();// 定义一个收藏链表
				while (collectionResultSet.next()) {// 判断集合类
					Collection collection = new Collection();
					collection.setCollectionID(collectionResultSet.getString("collectionId"));// 设置相关的属性值
					collection.setPictureAdress(collectionResultSet.getString("pictureAdress"));
					collection.setWebsiteAdress(collectionResultSet.getString("websiteAdress"));
					collection.setWebsiteName(collectionResultSet.getString("websiteName"));
					collection.setUserId(collectionResultSet.getInt("userId"));
					collectionsList.add(collection);
				}
				return collectionsList;// 返回查询结果链表
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

	public List<Collection> videoList(int id) throws Exception {// 按照用户编号来进行查找视频收藏
		// TODO Auto-generated method stub
		Connection con = DBConnect.getConnection();// 取得连接
		String sql = "select * from collection where type='视频' and userId=?";// 按照编号查找收藏表
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);
			stum.setObject(1, id);
			ResultSet collectionResultSet = stum.executeQuery();// 执行SQL语句
			if (collectionResultSet != null) {
				List<Collection> collectionsList = new ArrayList<Collection>();// 定义一个收藏链表
				while (collectionResultSet.next()) {// 判断集合类
					Collection collection = new Collection();
					collection.setCollectionID(collectionResultSet.getString("collectionId"));// 设置相关的属性值
					collection.setPictureAdress(collectionResultSet.getString("pictureAdress"));
					collection.setWebsiteAdress(collectionResultSet.getString("websiteAdress"));
					collection.setWebsiteName(collectionResultSet.getString("websiteName"));
					collection.setUserId(collectionResultSet.getInt("userId"));
					collectionsList.add(collection);
				}
				return collectionsList;// 返回查询结果链表
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
