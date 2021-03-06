/**
 * 
 */
package org.dimigo.vo;

/**
 * <pre>
 * org.dimigo.vo
 * 	 |_ UserVo
 *
 * 1. 개요 : 
 * 2. 작성일 : 2017. 9. 26.
 * </pre>
 * 
 * @author : HD152637
 * @version : 1.0
 **/

public class UserVO {

	private String id;
	private String name;
	private String nickname;
	private String pwd;
	
	public UserVO(){}
	
	public UserVO(String id, String name, String nickname) {
		super();
		this.id = id;
		this.name = name;
		this.nickname = nickname;
	}
	
	public UserVO(String id,String pwd,String name,String nickname){
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.nickname = nickname;
	}
	/**
	 * @return the id
	 */
	public String getPwd(){
		return pwd;
	}
	
	public void setPwd(String pwd){
		this.pwd=pwd;
	}
	
	public String getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the nickname
	 */
	public String getNickname() {
		return nickname;
	}
	/**
	 * @param nickname the nickname to set
	 */
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	
}
