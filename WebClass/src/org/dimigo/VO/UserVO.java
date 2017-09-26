/**
 * 
 */
package org.dimigo.VO;

/**
 * <pre>
 * org.dimigo.VO
 * └cuizz
 *
 * 1.what:
 * 2.date: 2017. 9. 26.
 * </pre>
 * @author: cuizz
 * @versio: 1.0
 */
public class UserVO {
	private int id;
	private String name;
	private String nickName;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
}
