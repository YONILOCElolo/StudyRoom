package entity;

public class User {
	private int userId;// 用户编号
	private String userSex;// 用户性别
	private String userName;// 用户姓名
	private String password;// 用户密码

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserSex() {
		return userSex;
	}

	public void setUserSex(String userSex) {
		this.userSex = userSex;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "user [userId=" + userId + ", userSex=" + userSex + ", userName=" + userName + ", password=" + password
				+ "]";
	}

}
