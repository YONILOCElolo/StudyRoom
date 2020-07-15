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
//		User user=(User)rep.getAttribute("user");//取得登录对象;
		// 得到session对象
		HttpSession session = rep.getSession(false);
		// 取出会话层
		String loginName = (String) session.getAttribute("loginName");
		// user.setUserId(Integer.parseInt(rep.getParameter("userId")));
		List<String> infoList = new ArrayList<String>();// 保存错误信息
		try {
			if (collectionDaoImpl.addCollection(attribute, loginName)) {
				infoList.add("添加收藏成功！");
			} else {
				infoList.add("添加收藏失败！");
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
//		User user=(User)rep.getAttribute("user");//取得登录对象
		// 得到session对象
		HttpSession session = rep.getSession(false);
		// 取出会话层
		String loginName = (String) session.getAttribute("loginName");
		// user.setUserId(Integer.parseInt(rep.getParameter("userId")));
		List<String> infoList = new ArrayList<String>();// 保存错误信息
		try {
			if (collectionDaoImpl.deleteCellection(collection.getCollectionID(), user.getUserId())) {
				infoList.add("删除成功！");
			} else {
				infoList.add("删除失败！");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("infoList", infoList);
	}

	public void studyList(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		// User user=new User();//取得登录对象
//		int userId=Integer.parseInt(rep.getParameter("userId"));//取得用户ID号
		// 得到session对象
		HttpSession session = rep.getSession(false);
		// 取出会话层
		int userid =  (int) session.getAttribute("userid");
		List<Collection> collections = new ArrayList<Collection>();// 存储查询结果
		try {
			collections = collectionDaoImpl.studyList(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("collections", collections);// 保存查询结果
	}

	public void shopList(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		// User user=(User)rep.getAttribute("user");//取得登录对象;
		// 得到session对象
		HttpSession session = rep.getSession(false);
		// 取出会话层
		int userid =  (int) session.getAttribute("userid");

//		int userId=Integer.parseInt(rep.getParameter("userId"));
		List<Collection> collections = new ArrayList<Collection>();// 存储查询结果
		try {
			collections = collectionDaoImpl.shopList(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("collections", collections);// 保存查询结果
	}

	public void videoList(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		// User user=(User)rep.getAttribute("user");//取得登录对象
//		int userId=Integer.parseInt(rep.getParameter("userId"));
		// 得到session对象
		HttpSession session = rep.getSession(false);
		// 取出会话层
		int userid =  (int) session.getAttribute("userid");
		List<Collection> collections = new ArrayList<Collection>();// 存储查询结果
		try {
			collections = collectionDaoImpl.videoList(userid);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("collections", collections);// 保存查询结果
	}

}
