package kr.co.ch02.sub2;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class IocTest2 {

	public static void main(String[] args) {
		
		ApplicationContext ctx = new GenericXmlApplicationContext("spring-context.xml");
		
		Tv ltv = (Tv) ctx.getBean("lgTv");
		Tv stv = (Tv) ctx.getBean("samsungTv");
		
		ltv.power();
		ltv.chUp();
		ltv.soundUp();
		
		
		stv.power();
		stv.chUp();
		stv.soundUp();
		
		
	}
}



