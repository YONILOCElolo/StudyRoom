package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import entity.Attribute;
import util.DBConnect;


public class AttributeDaoImpl implements AttributeDao {

	@Override
	public Attribute foundList(String a) throws Exception {// ���ձ�Ų��Ҿ�������
		// TODO Auto-generated method stub
		Connection con = DBConnect.getConnection();// ȡ������
		String sql = "select * from attribute where Id=?";// ��ѯsql���
		PreparedStatement stum = null;
		try {
			stum = con.prepareStatement(sql);// ����sql���
			stum.setObject(1, a);// ע�����
			ResultSet set = stum.executeQuery();// ִ��sql���
			if (set.next()) {// �ж��Ƿ��ѯΪ��
				Attribute attribute = new Attribute();// ʵ����һ�����ڴ洢ÿ����վ�����Ϣ����
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
