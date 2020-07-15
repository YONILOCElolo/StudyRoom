package dao;

import java.util.ArrayList;
import java.util.List;

public class userId {
	private static List<Integer> userIdList;//用来存储当前用户id
	public static List<Integer>  getInstance(){//单例模式
		if (userIdList==null) {
			userIdList = new ArrayList<Integer>();
			return userIdList;
		}
		return userIdList;
	}
}
