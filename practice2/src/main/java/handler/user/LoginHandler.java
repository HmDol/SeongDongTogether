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

      if (request.getMethod().equals("GET")) {
         view = "/user/login.jsp";
      } else {
         String id = request.getParameter("userID");
         String pwd = request.getParameter("userPassword");

         UserService service = new UserService();
         User m = service.getUser(id);
         if (m != null && pwd.equals(m.getUserPassword())) {
            HttpSession session = request.getSession();
            session.setAttribute("userID", id);
            session.setAttribute("UserName", m.getUserName());
            session.setAttribute("UserGender", m.getUserGender());
            session.setAttribute("userPhoneNum", m.getuserPhoneNum());
            session.setAttribute("UserEmail", m.getUserEmail());
            view = "redirect:/main.jsp";
         }
         else {
            
            view = "redirect:/user/login.jsp";
         }
         
      }
      
      return view;
   }

}