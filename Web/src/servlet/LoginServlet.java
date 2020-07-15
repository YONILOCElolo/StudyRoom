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

��¼�����Ǵӵ�¼������username��password����ͨ��dao���е�checkLogin()���ж��Ƿ��¼

*/
@WebServlet("/login.do")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");// ���ñ����ʽΪutf-8
		String username = req.getParameter("userName");// ��jsp�л�ȡusernmae
		String password = req.getParameter("userPassword");// ��jsp�л�ȡpassword
		try {
			if (UserDaoImpl.checkLogin(username, password)) { // dao�����жϣ����Ϊtrue����ת����ӭ����
				req.setAttribute("username", username);
				req.setAttribute("inf", "��¼�ɹ�");
				req.getRequestDispatcher("Index.jsp").forward(req, resp);
			} else {// ���Ϊfalse����ת����¼���棬�����ش�����Ϣ.
				req.setAttribute("inf", "����˺Ż�������������µ�¼");
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
