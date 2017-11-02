/**
 * 
 */
package org.dimigo.action;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.util.CommonUtil;
import org.dimigo.vo.UserVO;

/**
 * <pre>
 * org.dimigo.action
 * └cuizz
 *
 * 1.what:
 * 2.date: 2017. 10. 31.
 * </pre>
 * @author: cuizz
 * @versio: 1.0
 */
public class LoginAction implements IAction{

	/* (non-Javadoc)
	 * @see org.dimigo.action.IAction#excute(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	private void validate(String id,String pwd) throws Exception{
		if(CommonUtil.isEmpty(id)) throw new Exception("id required");
		if(CommonUtil.isEmpty(pwd)) throw new Exception("password required");
	}
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try{
			response.setContentType("application/json;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			System.out.println(id + " " + pwd);
			
			validate(id,pwd);
			// id, pwd 사용자 인증 체크
			
			
			boolean result=true;
			
			if(result){
				// 세션에 사용자 정보를 생성하여 담기
				HttpSession session = request.getSession();
				
				UserVO user = new UserVO();
				user.setId(id);
				user.setName("admin");
				user.setNickname("none");
				session.setAttribute("user", user);
				
				RequestDispatcher rd = request.getRequestDispatcher("jsp/home.jsp");
				rd.forward(request, response);
			} else {
				throw new Exception("Invalid username or password");
			}
			
			out.close();
		}
		catch(Exception e){
			e.printStackTrace();
			request.setAttribute("msg", "error");
			request.setAttribute("error", e.getMessage());
			RequestDispatcher rd = request.getRequestDispatcher("jsp/login.jsp");
			rd.forward(request, response);
			throw new Exception("Invalid username or password");
		}
	}

}
