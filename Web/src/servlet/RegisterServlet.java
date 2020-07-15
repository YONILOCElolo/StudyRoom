package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*

ע���Ǵ�ע�����õ�username��password����ͨ��dao����register()�������ݿ����һ���û�

*/

import dao.UserDao;
import dao.UserDaoImpl;

@WebServlet("/register.do")
public class RegisterServlet extends HttpServlet {
	//doGet�����Զ���ת��doPost()����
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");// ���ñ����ʽΪutf-8
		String sex = req.getParameter("sex");
		String username = req.getParameter("username");// ��ע�������username
		String password = req.getParameter("password");// ��ע�������password
		try {
			UserDaoImpl.register(sex, username, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}// dao���������ݿ��������
		req.getRequestDispatcher("Login.jsp").forward(req, resp);// ������ת����¼����
	}
}
