/**
 * 
 */
package org.dimigo.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dimigo.vo.UserVO;

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
public class ListAction implements IAction{

	/* (non-Javadoc)
	 * @see org.dimigo.action.IAction#execute(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		List<UserVO> list = new ArrayList<>();
		list.add(new UserVO("aaa@naver.com","전병현","병원제"));
		list.add(new UserVO("bbb@naver.com","admin","admin"));
		list.add(new UserVO("ccc@naver.com","guest","tester"));
		
		request.setAttribute("list", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("jsp/list.jsp");
		rd.forward(request, response);
	}

}
