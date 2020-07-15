package entity;

public class Collection {
	private String collectionID;//  ’≤ÿ±‡∫≈
	private String pictureAdress;// Õº∆¨µÿ÷∑
	private String websiteAdress;// Õ¯’æµÿ÷∑
	private String websiteName;// Õ¯’æ√˚≥∆
	private int userId;// ”√ªß±‡∫≈

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getCollectionID() {
		return collectionID;
	}

	public void setCollectionID(String collectionID) {
		this.collectionID = collectionID;
	}

	public String getPictureAdress() {
		return pictureAdress;
	}

	public void setPictureAdress(String pictureAdress) {
		this.pictureAdress = pictureAdress;
	}

	public String getWebsiteAdress() {
		return websiteAdress;
	}

	public void setWebsiteAdress(String websiteAdress) {
		this.websiteAdress = websiteAdress;
	}

	public String getWebsiteName() {
		return websiteName;
	}

	public void setWebsiteName(String websiteName) {
		this.websiteName = websiteName;
	}

	@Override
	public String toString() {
		return "collection [collectionID=" + collectionID + ", pictureAdress=" + pictureAdress + ", websiteAdress="
				+ websiteAdress + ", websiteName=" + websiteName + "]";
	}

}
