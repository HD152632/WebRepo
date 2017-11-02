/**
 * 
 */
package org.dimigo.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
public interface IAction {
	void execute(HttpServletRequest request,HttpServletResponse response)throws Exception; 
}
