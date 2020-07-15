package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDao;
import dao.UserDaoImpl;

/*

登录界面是从登录界面获得username和password，再通过dao层中的checkLogin()来判断是否登录

*/
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");// 设置编码格式为utf-8
		String username = req.getParameter("userName");// 从jsp中获取usernmae
		String password = req.getParameter("userPassword");// 从jsp中获取password
		try {
			if (UserDaoImpl.checkLogin(username, password)) { // dao层中判断，如果为true，跳转到欢迎界面
				req.setAttribute("username", username);
				req.setAttribute("inf", "登录成功");
				req.getRequestDispatcher("Index.jsp").forward(req, resp);
			} else {// 如果为false，跳转到登录界面，并返回错误信息.
				req.setAttribute("inf", "你的账号或密码错误，请重新登录");
				req.getRequestDispatcher("Welcome.jsp").forward(req, resp);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
}
