package kr.co.member.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import kr.co.member.vo.MemberVo;

@Repository
public interface MemberDao {
	public void insertMember(MemberVo vo);
	public MemberVo selectMember(String uid);
	public List<MemberVo> selectMembers();
	public void updateMember(MemberVo vo);
	public void deleteMember(String uid);
}

