package entity;

public class Attribute {
	private String ID;// ��ţ�������
	private String picture;// ͼƬ��ַ
	private String website;// ��վ��ַ
	private String WebName;// ��վ����
	private String type;// ��վ����

	@Override
	public String toString() {
		return "Attribute [ID=" + ID + ", picture=" + picture + ", website=" + website + ", WebName=" + WebName
				+ ", type=" + type + "]";
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getWebName() {
		return WebName;
	}

	public void setWebName(String webName) {
		WebName = webName;
	}
}
