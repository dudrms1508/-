package ch11;


import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;


/**
 * Application Lifecycle Listener implementation class InitialMember
 *
 */
@WebListener
public class InitialMember implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public InitialMember() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
	//중요함 자동으로 호출되는 메서드 [서버가 자동으로 관리. 사용자가 객체만드는것이 아님]
    	
    	ServletContext context = sce.getServletContext();
    	ArrayList<Member> datas = new ArrayList<Member>();
    	
    	//JSTL 예제를 위해 0~7까지의 샘플 데이터를 생성
    	for(int i=0; i<8; i++) {
    		Member data = new Member("황희정"+i,"test"+i+"@test.net");
    		datas.add(data);
    	}
    	//email이 빠진 2개 샘플 데이터 추가
    	datas.add(new Member("홍길동", null));
    	datas.add(new Member("김길동", null));
    	
    	//application scope에 members 및 member 객체 저장
    	context.setAttribute("members",datas);
    	context.setAttribute("member",new Member());
    
    }
	
}
