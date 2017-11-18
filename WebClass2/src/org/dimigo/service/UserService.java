/**
 * 
 */
package org.dimigo.service;

import org.dimigo.vo.UserVO;

/**
 * <pre>
 * org.dimigo.service
 * └cuizz
 *
 * 1.what:
 * 2.date: 2017. 11. 7.
 * </pre>
 * @author: cuizz
 * @versio: 1.0
 */
public class UserService {
	public UserVO login(UserVO user) throws Exception{
		boolean result = true;
		
		if(result){
			user.setName("gildong");
			user.setName("theif");
		}
		else{
			throw new Exception("nope");
		}
		
		return user;
	}
}
