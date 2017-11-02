/**
 * 
 */
package org.dimigo.util;

/**
 * <pre>
 * org.dimigo.util
 * └cuizz
 *
 * 1.what:
 * 2.date: 2017. 11. 1.
 * </pre>
 * @author: cuizz
 * @versio: 1.0
 */
public class CommonUtil {
	public static boolean isEmpty(String s){
		return s == null || "".equals(s.trim());
	}
	
	public static void main(String[] args){
		String uri = "/login.do";
		System.out.println("uri : "+uri);
		
	}
}
