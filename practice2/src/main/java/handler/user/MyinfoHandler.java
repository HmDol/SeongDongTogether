package handler.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import handler.Handler;
import User.User;
import User.UserService;

public class MyinfoHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {

		String view = "/main.jsp";

		if (request.getMethod().equals("GET")) {
			view = "/user/myinfo.jsp";
		} else {
			String userID = request.getParameter("userID");
			String userPassword = request.getParameter("userPassword");
			String userphoneNum = request.getParameter("phoneNum");
			String userEmail = request.getParameter("userEmail");
			UserService service = new UserService();
			service.editUser(new User(userID, userPassword, null, null, userphoneNum ,userEmail));
		    HttpSession session = request.getSession(false);
		    session.invalidate();

			view = "redirect:/main.jsp";
		}
		
		return view;
	}

}
