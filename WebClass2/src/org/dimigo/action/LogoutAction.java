/**
 * 
 */
package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * <pre>
 * org.dimigo.action
 * └cuizz
 *
 * 1.what:
 * 2.date: 2017. 11. 2.
 * </pre>
 * @author: cuizz
 * @versio: 1.0
 */
public class LogoutAction implements IAction{

	/* (non-Javadoc)
	 * @see org.dimigo.action.IAction#execute(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
//		session.removeAttribute("user");
		session.invalidate();
		
		RequestDispatcher rd = request.getRequestDispatcher("jsp/home.jsp");
		rd.forward(request, response);
	}

}
