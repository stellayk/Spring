package kr.co.ch05.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ch05.dao.UserDao;
import kr.co.ch05.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao dao;
	
	public void insertUser(UserVo vo) {
		dao.insertUser(vo);
	}
	
	public void selectUser() {
		
	}
	public void selectUsers() {}
	public void updateUser() {}
	public void deleteUser() {}
}
