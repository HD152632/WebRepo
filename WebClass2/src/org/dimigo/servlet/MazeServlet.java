/**
 * 
 */
package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * <pre>
 * org.dimigo.servlet
 * └cuizz
 *
 * 1.what:
 * 2.date: 2017. 11. 19.
 * </pre>
 * @author: cuizz
 * @versio: 1.0
 */
@WebServlet("/maze")
public class MazeServlet {
	private static final long serialVersionUID = 1L;
	int map[][];
	int seed;
	int sizewidth;
	int sizeheight;
	Random rand;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MazeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		request.setCharacterEncoding("utf-8");
		int seed = Integer.parseInt(request.getParameter("seed"));
		int sizewidth =Integer.parseInt(request.getParameter("mazewidth"));
		int sizeheight =Integer.parseInt(request.getParameter("mazeheight"));
		
		// id, pwd 사용자 인증 체크
		
		buildMaze();
		
		HttpSession session = request.getSession();
		
		session.setAttribute("maze", buildMaze());
		
		RequestDispatcher rd = request.getRequestDispatcher("project/mazeViewer.jsp");
		rd.forward(request, response);
		
		out.close();
	}
	//0없음 1복도 2벽 3끝벽 7=시작 8=도착 9=메인루트 10=임시

	boolean isPath(int x,int y){
	    if(map[x][y]==1 || map[x][y]==7 || map[x][y]==8 || map[x][y]==9 || map[x][y]==10) return true;
	    return false;
	}

	int nearPath(int x,int y){
	    int cnt=0;

	    if(isPath(x+1,y)) cnt++;
	    if(isPath(x-1,y)) cnt++;
	    if(isPath(x,y+1)) cnt++;
	    if(isPath(x,y-1)) cnt++;

	    return cnt;
	}

	int linkChecker(int x,int y,int px,int py){
	    int cnt=0;

	    if(isPath(x+1,y)) cnt++;
	    if(isPath(x-1,y)) cnt++;
	    if(isPath(x,y+1)) cnt++;
	    if(isPath(x,y-1)) cnt++;
	    if(isPath(px,py)) cnt--;

	    return cnt;
	}

	boolean goAble(int x,int y,int px,int py){
	    if(linkChecker(x,y,px,py)>0 || map[x][y]==3) return false;
	    else return true;
	}

	int nearMainRoute(int x,int y){
	    int cnt=0;

	    if(isPath(x+1,y) && map[x+1][y]!=10) cnt++;
	    if(isPath(x-1,y) && map[x-1][y]!=10) cnt++;
	    if(isPath(x,y+1) && map[x][y+1]!=10) cnt++;
	    if(isPath(x,y-1) && map[x][y-1]!=10) cnt++;

	    return cnt;
	}

	void changeTmp(int x,int y){
	    map[x][y]=1;

	    if(map[x+1][y]==10) changeTmp(x+1,y);
	    if(map[x-1][y]==10) changeTmp(x-1,y);
	    if(map[x][y+1]==10) changeTmp(x,y+1);
	    if(map[x][y-1]==10) changeTmp(x,y-1);
	}

	void removeTmp(int x,int y){
	    map[x][y]=0;

	    if(map[x+1][y]==10) removeTmp(x+1,y);
	    if(map[x-1][y]==10) removeTmp(x-1,y);
	    if(map[x][y+1]==10) removeTmp(x,y+1);
	    if(map[x][y-1]==10) removeTmp(x,y-1);
	}

	int nearTmp(int x,int y){
	    int cnt=0;

	    if(map[x+1][y]==10) cnt++;
	    if(map[x-1][y]==10) cnt++;
	    if(map[x][y+1]==10) cnt++;
	    if(map[x][y-1]==10) cnt++;

	    return cnt;
	}

	boolean buildRoute(int px,int py,int sx,int sy){
	    int n=rand.nextInt()%2;

	    int chk=0;

	    while(true){
	        int len;
	        len = rand.nextInt()%7+1;
	        int side;

	        if(px>=40 && py>=40){
	            //printf("chk\n");
	        }

	        if(n%2==0){
	            if(sizeheight-py > 3 && rand.nextInt()%20 < 7){ side=-sx; }
	            else side=sx;

	            while(len>0){
	                if(nearMainRoute(px+side,py)==1){
	                    changeTmp(px+side,py);
	                    return false;
	                }
	                if(nearPath(px+side,py)>1 || px+side>sizewidth || px+side<=0){
	                    break;
	                }

	                map[px+side][py]=10;
	                px+=side;
	                len--;
	                chk=0;
	            }
	        }
	        else{
	            if(sizewidth-px > 3 && rand.nextInt()%20 < 7){ side=-sy;}
	            else side=sy;

	            while(len>0){
	                if(nearMainRoute(px,py+side)==1){
	                    changeTmp(px,py+side);
	                    return false;
	                }
	                if(nearPath(px,py+side)>1 || py+side>sizeheight || py+side<=0){
	                    break;
	                }
	                map[px][py+side]=10;
	                py+=side;
	                len--;
	                chk=0;
	            }
	        }

	        chk++;
	        n++;

	        if(chk>8){
	            removeTmp(px,py);
	            return true;
	        }

	        //printMap();
	    }

	}

	boolean linkTrapRoute(int x,int y){
	    map[x][y]=10;
	    int sidex,sidey;
	    if(x>y){sidex=-1;sidey=1;}
	    else {sidex=1;sidey=-1;}

	    /*if(x==50 && y==45){
	        map[x][y]=10;
	        printMap();
	        printf("cc\n");
	    }*/

	    boolean f = buildRoute(x,y,sidex,sidey);

	    return f;
	}

	void buildTrapRoute(){
	    int sx,sy;

	    sx = rand.nextInt()%2;
	    sy = rand.nextInt()%2;

	    for(int i=(sizewidth-1)*((sx+1)%2) + 1;i<=sizewidth && i>0;i+=(sx*2)-1){
	        for(int j=(sizeheight-1)*((sy+1)%2) + 1;j<=sizeheight && j>0;j+=(sy*2)-1){
	            if(nearPath(i,j)==0 && !isPath(i,j)){
	                boolean flag=true;
	                int c=0;
	                while(flag){
	                    flag=linkTrapRoute(i,j);
	                    c++;
	                    if(c>5) break;
	                }
	                //if(i==2 && j==27){
	                    //printMap(true);printf("%d %d\n",i,j);
	                //}
	            }
	            //else if(nearPath(i,j)==1) map[i][j]=1;
	        }
	    }

	    return;
	}

	boolean buildMainRoute(){
	    map[1][1]=7;

	    int px=1;
	    int py=1;

	    int n=rand.nextInt()%2;

	    int chk=0;

	    while(px!=sizewidth || py!=sizeheight){
	        int len;
	        len = rand.nextInt()%7+1;
	        int side;

	        if(n%2==0){
	            if(sizeheight-py > 3 && rand.nextInt()%20 < 7){ side=-1; }
	            else side=1;

	            while(goAble(px+side,py,px,py) && len>0){
	                map[px+side][py]=9;
	                px+=side;
	                len--;
	                chk=0;
	            }
	        }
	        else{
	            if(sizewidth-px > 3 && rand.nextInt()%20 < 7){ side=-1;}
	            else side=1;

	            while(goAble(px,py+side,px,py) && len>0){
	                map[px][py+side]=9;
	                py+=side;
	                len--;
	                chk=0;
	            }
	        }

	        chk++;
	        n++;

	        if(chk>8) return true;

	        //printMap();
	    }

	    map[sizewidth][sizeheight]=8;
	    return false;
	}

	void init(){
	    for(int i=0;i<=sizewidth+1;i++){
	        for(int j=0;j<=sizeheight+1;j++){
	            if(i*j==0 || i==sizewidth+1 || j==sizeheight+1){
	                map[i][j]=3;
	                //printf("%d %d\n",i,j);
	            }
	            else map[i][j]=0;
	        }
	    }

	    //printMap(true);
	    //printf("\n");
	}

	String buildMaze(){
		String str;
		
		map=new int[sizewidth+2][sizeheight+2];
		rand = new Random(seed);

		boolean flag=true;

		while(flag){
	        init();
	        flag=buildMainRoute();
		}

		buildTrapRoute();
		str="";
		for(int i=1;i <= sizeheight;i++){
			for(int j=1;j<=sizewidth;j++){
				switch(map[j][i]){
				case 1:str+="　";
				case 2:str+="■";
				case 7:str+="★";
				case 8:str+="☆";
				}
			}
			str+="\n";
		}

	    return str;
	}
}
