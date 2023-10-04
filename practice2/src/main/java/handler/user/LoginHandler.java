package handler.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import handler.Handler;
import User.User;
import User.UserService;

public class LoginHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String view = "/main.jsp";
		if (request.getMethod().equals("GET")) {// get 방식 처리
			System.out.println("접속됨");
			view = "/user/login.jsp";
		} else {
			String id = request.getParameter("userID");
			String pwd = request.getParameter("userPassword");

			UserService service = new UserService();
			User m = service.getUser(id);
			if (m != null && pwd.equals(m.getUserPassword())) {
				HttpSession session = request.getSession();
				session.setAttribute("loginId", id);
				System.out.println("로그인 성공");
			}
		}
		return view;
	}
	
}
