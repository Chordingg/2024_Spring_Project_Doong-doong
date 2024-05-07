package com.doongdoong.web.member;

public interface MemberMapper {
	
	public void insert(MemberVO memberVO);
	
	public void insertAuth(AuthVO auth);
	
	public MemberVO read(String userid);

}
