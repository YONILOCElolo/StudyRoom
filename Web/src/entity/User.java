package entity;

public class User {
	private int userId;// �û����
	private String userSex;// �û��Ա�
	private String userName;// �û�����
	private String password;// �û�����

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
