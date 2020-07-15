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

	public boolean addCollection(Attribute attribute, String name) throws Exception {// �˴���Ҫ��д����
		// TODO Auto-generated method stub
		List<Integer> useridList=userId.getInstance();//ȡ�õ�ǰ�û���ID
		Connection con = DBConnect.getConnection();// ȡ�����ݿ�����
		String sql = "insert into collection (collectionId,pictureAdress,websiteAdress,websiteName,userName,type) values(?,?,?,?,?,?)";// SQL���
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);// ����sql���
			stum.setObject(1, attribute.getID());
			stum.setObject(2, attribute.getPicture());// ע����Ӧ�����Բ���
			stum.setObject(3, attribute.getWebsite());
			stum.setObject(4, attribute.getWebName());
			stum.setObject(5, name);
			stum.setObject(6, attribute.getType());
			int len = stum.executeUpdate();// ִ��SQL���
			if (len != 0) {// �ж�ִ�н��
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

	public boolean deleteCellection(String collectid, int userid) throws Exception {// ɾ���û��ղ�
		// TODO Auto-generated method stub
		Connection con = DBConnect.getConnection();// ȡ�����ݿ�����
		String sql = "delete from collection where collectionId=? and userId=?";// SQL���
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);// ����SQL���
			stum.setObject(1,collectid);// ע�����
			stum.setObject(2, userid);
			int len = stum.executeUpdate();// ִ��SQL���
			if (len != 0) {// �ж��Ƿ�ִ�гɹ�
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

	public List<Collection> studyList(int id) throws Exception {// �����û���������в���ѧϰ�ղ�
		// TODO Auto-generated method stub
		List<Integer>useridList=userId.getInstance();
		System.out.println(useridList.get(0));
		Connection con = DBConnect.getConnection();// ȡ������
		String sql = "select * from collection where type='ѧϰ'  and userId=?";// ���ձ�Ų����ղر�
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);
			//stum.setObject(1, id);
			stum.setObject(1, useridList.get(0));
			ResultSet collectionResultSet = stum.executeQuery();// ִ��SQL���
			if (collectionResultSet != null) {
				System.out.println("�����");
				List<Collection> collectionsList = new ArrayList<Collection>();// ����һ���ղ�����
				while (collectionResultSet.next()) {// �жϼ�����
					Collection collection = new Collection();
					collection.setCollectionID(collectionResultSet.getString("collectionId"));// ������ص�����ֵ
					collection.setPictureAdress(collectionResultSet.getString("pictureAdress"));
					collection.setWebsiteAdress(collectionResultSet.getString("websiteAdress"));
					collection.setWebsiteName(collectionResultSet.getString("websiteName"));
					collection.setUserId(collectionResultSet.getInt("userId"));
					// System.out.println(collection.toString());
					collectionsList.add(collection);
				}
				
				return collectionsList;// ���ز�ѯ�������
			}else {
				System.out.println("�������Ϊ��");
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

	public List<Collection> shopList(int id) throws Exception {// �����û���������в��ҹ����ղ�
		// TODO Auto-generated method stub
		Connection con = DBConnect.getConnection();// ȡ������
		String sql = "select * from collection where type='����' and userId=?";// ���ձ�Ų����ղر�
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);
			stum.setObject(1, id);
			ResultSet collectionResultSet = stum.executeQuery();// ִ��SQL���
			if (collectionResultSet != null) {
				List<Collection> collectionsList = new ArrayList<Collection>();// ����һ���ղ�����
				while (collectionResultSet.next()) {// �жϼ�����
					Collection collection = new Collection();
					collection.setCollectionID(collectionResultSet.getString("collectionId"));// ������ص�����ֵ
					collection.setPictureAdress(collectionResultSet.getString("pictureAdress"));
					collection.setWebsiteAdress(collectionResultSet.getString("websiteAdress"));
					collection.setWebsiteName(collectionResultSet.getString("websiteName"));
					collection.setUserId(collectionResultSet.getInt("userId"));
					collectionsList.add(collection);
				}
				return collectionsList;// ���ز�ѯ�������
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

	public List<Collection> videoList(int id) throws Exception {// �����û���������в�����Ƶ�ղ�
		// TODO Auto-generated method stub
		Connection con = DBConnect.getConnection();// ȡ������
		String sql = "select * from collection where type='��Ƶ' and userId=?";// ���ձ�Ų����ղر�
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);
			stum.setObject(1, id);
			ResultSet collectionResultSet = stum.executeQuery();// ִ��SQL���
			if (collectionResultSet != null) {
				List<Collection> collectionsList = new ArrayList<Collection>();// ����һ���ղ�����
				while (collectionResultSet.next()) {// �жϼ�����
					Collection collection = new Collection();
					collection.setCollectionID(collectionResultSet.getString("collectionId"));// ������ص�����ֵ
					collection.setPictureAdress(collectionResultSet.getString("pictureAdress"));
					collection.setWebsiteAdress(collectionResultSet.getString("websiteAdress"));
					collection.setWebsiteName(collectionResultSet.getString("websiteName"));
					collection.setUserId(collectionResultSet.getInt("userId"));
					collectionsList.add(collection);
				}
				return collectionsList;// ���ز�ѯ�������
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
