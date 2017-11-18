/**
 * 
 */
package org.dimigo.action;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.service.UserService;
import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * <pre>
 * org.dimigo.action
 * └cuizz
 *
 * 1.what:
 * 2.date: 2017. 11. 6.
 * </pre>
 * @author: cuizz
 * @versio: 1.0
 */
public class SignUpAction implements IAction{

	/* (non-Javadoc)
	 * @see org.dimigo.action.IAction#execute(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	private void validate(UserVO vo) throws Exception{
		if(CommonUtil.isEmpty(vo.getId())) throw new Exception("input Id");
		if(CommonUtil.isEmpty(vo.getPwd())) throw new Exception("input Id");
		if(CommonUtil.isEmpty(vo.getName())) throw new Exception("input Id");
		if(CommonUtil.isEmpty(vo.getNickname())) throw new Exception("input Id");
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{
			response.setContentType("application/json;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String nickname = request.getParameter("nickname");
			System.out.printf("id : %s, pwd : %s, name : %s, nickname : %s\n",id,pwd,name,nickname);
			
			UserVO user = new UserVO(id,pwd,name,nickname);
			
			validate(user);
			
			UserService service = new UserService();
			UserVO result = service.login(user);
			
			HttpSession session = request.getSession();
			session.setAttribute("user", "result");
			
			RequestDispatcher rd = request.getRequestDispatcher("jsp/home.jsp");
			rd.forward(request, response);
		}catch(Exception e){
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/signup.jsp");
			rd.forward(request, response);
		}
	}

}
