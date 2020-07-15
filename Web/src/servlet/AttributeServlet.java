package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AttributeDaoImpl;
import entity.Attribute;

public class AttributeServlet extends HttpServlet {
	private AttributeDaoImpl attributeDaoImpl = new AttributeDaoImpl();

	protected void doGet(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		doPost(rep, resp);
	}

	protected void doPost(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		String str = rep.getParameter("aopre");
		switch (str) {
		case "foundList":
			foundList(rep, resp);
			break;
		}
	}

	public void foundList(HttpServletRequest rep, HttpServletResponse resp) throws ServletException {
		String string = rep.getParameter("Id");
		Attribute attribute = new Attribute();
		try {
			attribute = attributeDaoImpl.foundList(string);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		rep.setAttribute("attribute", attribute);// ´æ´¢²éÑ¯½á¹û
	}
}
