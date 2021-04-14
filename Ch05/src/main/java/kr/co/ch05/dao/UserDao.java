package kr.co.ch05.dao;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kr.co.ch05.vo.UserVo;

@Repository
public class UserDao {
	//MyBatis Object
	@Inject
	private SqlSessionTemplate mybatis;
	
	public void insertUser(UserVo vo) {
		mybatis.insert("mapper.user.INSERT_USER", vo);
	}
	public void selectUser() {}
	public void selectUsers() {}
	public void updateUser() {}
	public void deleteUser() {}
}
