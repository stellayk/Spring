package kr.co.ch03;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

/*
 * Date: 4/13/21
 * Name: Yeeun Kim
 * Content: Spring AOP example
 */

public class AOPMain {
	public static void main(String[] args) {
		
		ApplicationContext ctx = new GenericXmlApplicationContext("spring-context.xml");
		
		BoardService service = (BoardService) ctx.getBean("boardService");
		service.insert();
		service.select();
		service.update();
		service.delete();
		
	}
}
