package kr.co.ch03;

import org.springframework.stereotype.Component;

@Component
public class LogAdvice {

	public void beforeLog() {
		System.out.println("=================================");
		System.out.println("Cross cutting concern - beforeLog");
	}
	
	public void afterLog() {
		System.out.println("Cross cutting concern - afterLog");
		System.out.println("--------------------------------");
	}
	
	public void updateBefore() {
		System.out.println("=================================");
		System.out.println("Cross cutting concern - updateBefore");
	}
	
	public void updateAfter() {
		System.out.println("Cross cutting concern - updateAfter");
		System.out.println("--------------------------------");
	}
	
	public void deleteBefore() {
		System.out.println("=================================");
		System.out.println("Cross cutting concern - deleteBefore");
	}
	
	public void deleteAfter() {
		System.out.println("Cross cutting concern - deleteAfter");
		System.out.println("--------------------------------");
	}
}
