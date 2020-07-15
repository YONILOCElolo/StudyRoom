package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*

注册是从注册界面得到username和password，再通过dao层中register()来向数据库添加一条用户

*/

import dao.UserDao;
import dao.UserDaoImpl;

@WebServlet("/register.do")
public class RegisterServlet extends HttpServlet {
	//doGet方法自动跳转到doPost()方法
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");// 设置编码格式为utf-8
		String sex = req.getParameter("sex");
		String username = req.getParameter("username");// 从注册界面获得username
		String password = req.getParameter("password");// 从注册界面获得password
		try {
			UserDaoImpl.register(sex, username, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}// dao层中向数据库添加数据
		req.getRequestDispatcher("Login.jsp").forward(req, resp);// 重新跳转到登录界面
	}
}
