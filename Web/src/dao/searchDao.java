package dao;

import java.util.List;

import entity.Attribute;

public interface searchDao {
	public List<Attribute> search(String str) throws Exception;// ������ģ����ѯ��
}
