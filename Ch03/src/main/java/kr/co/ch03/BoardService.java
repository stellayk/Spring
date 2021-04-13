package kr.co.ch03;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardService {
	
	@Autowired
	private LogAdvice log;

	public void insert() {
		log.beforeLog();
		System.out.println("core concern - insert");
		log.afterLog();
	}
	public void select() {
		System.out.println("core concern - select");
	}
	public void update() {
		System.out.println("core concern - update");
	}
	public void delete() {
		System.out.println("core concern - delete");
	}

}
