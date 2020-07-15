package servlet;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.collectionDaoImpl;
import entity.Attribute;
import entity.Collection;
import entity.User;

public class collectionServlet extends HttpServlet {
	private collectionDaoImpl collectionDaoImpl = new collectionDaoImpl();

	protected void doGet(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		doPost(rep, resp);
	}

	protected void doPost(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		String str = rep.getParameter("coper");
		switch (str) {
		case "addCollection":
			addCollection(rep, resp);
			break;
		case "deleteCellection":
			deleteCellection(rep, resp);
			break;
		case "studyList":
			studyList(rep, resp);
			break;
		case "shopList":
			shopList(rep, resp);
			break;
		case "videoList":
			videoList(rep, resp);
			break;
		}
	}

	public void addCollection(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		Attribute attribute = new Attribute();
		// attribute.setPicture((String) rep.getAttribute("herf"));
		attribute.setWebsite((String) rep.getAttribute("theHref"));
		attribute.setWebName((String) rep.getAttribute("webName"));
		attribute.setType((String) rep.getAttribute("theType"));
//		User user=(User)rep.getAttribute("user");//ȡ�õ�¼����;
		// �õ�session����
		HttpSession session = rep.getSession(false);
		// ȡ���Ự��
		String loginName = (String) session.getAttribute("loginName");
		// user.setUserId(Integer.parseInt(rep.getParameter("userId")));
		List<String> infoList = new ArrayList<String>();// ���������Ϣ
		try {
			if (collectionDaoImpl.addCollection(attribute, loginName)) {
				infoList.add("����ղسɹ���");
			} else {
				infoList.add("����ղ�ʧ�ܣ�");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("infoList", infoList);
	}

	public void deleteCellection(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		Collection collection = new Collection();
		User user = new User();
		collection.setCollectionID((String) rep.getAttribute("collectionID"));
//		User user=(User)rep.getAttribute("user");//ȡ�õ�¼����
		// �õ�session����
		HttpSession session = rep.getSession(false);
		// ȡ���Ự��
		String loginName = (String) session.getAttribute("loginName");
		// user.setUserId(Integer.parseInt(rep.getParameter("userId")));
		List<String> infoList = new ArrayList<String>();// ���������Ϣ
		try {
			if (collectionDaoImpl.deleteCellection(collection.getCollectionID(), user.getUserId())) {
				infoList.add("ɾ���ɹ���");
			} else {
				infoList.add("ɾ��ʧ�ܣ�");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("infoList", infoList);
	}

	public void studyList(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		// User user=new User();//ȡ�õ�¼����
//		int userId=Integer.parseInt(rep.getParameter("userId"));//ȡ���û�ID��
		// �õ�session����
		HttpSession session = rep.getSession(false);
		// ȡ���Ự��
		int userid =  (int) session.getAttribute("userid");
		List<Collection> collections = new ArrayList<Collection>();// �洢��ѯ���
		try {
			collections = collectionDaoImpl.studyList(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("collections", collections);// �����ѯ���
	}

	public void shopList(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		// User user=(User)rep.getAttribute("user");//ȡ�õ�¼����;
		// �õ�session����
		HttpSession session = rep.getSession(false);
		// ȡ���Ự��
		int userid =  (int) session.getAttribute("userid");

//		int userId=Integer.parseInt(rep.getParameter("userId"));
		List<Collection> collections = new ArrayList<Collection>();// �洢��ѯ���
		try {
			collections = collectionDaoImpl.shopList(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("collections", collections);// �����ѯ���
	}

	public void videoList(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		// User user=(User)rep.getAttribute("user");//ȡ�õ�¼����
//		int userId=Integer.parseInt(rep.getParameter("userId"));
		// �õ�session����
		HttpSession session = rep.getSession(false);
		// ȡ���Ự��
		int userid =  (int) session.getAttribute("userid");
		List<Collection> collections = new ArrayList<Collection>();// �洢��ѯ���
		try {
			collections = collectionDaoImpl.videoList(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("collections", collections);// �����ѯ���
	}

}
