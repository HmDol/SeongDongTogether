package handler.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import User.User;
import User.UserService;
import handler.Handler;

public class CheckHandler implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("idcheck접속됨");
		String id = request.getParameter("id");
		User m = (new UserService()).getUser(id);
		boolean flag = false;
		if(m==null) {
			flag = true;
		}
		JSONObject obj = new JSONObject();
		obj.put("flag", flag);
		String txt = obj.toJSONString();
		return "responsebody/"+txt;
		
	}

}
