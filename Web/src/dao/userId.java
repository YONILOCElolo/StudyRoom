package dao;

import java.util.ArrayList;
import java.util.List;

public class userId {
	private static List<Integer> userIdList;//�����洢��ǰ�û�id
	public static List<Integer>  getInstance(){//����ģʽ
		if (userIdList==null) {
			userIdList = new ArrayList<Integer>();
			return userIdList;
		}
		return userIdList;
	}
}
