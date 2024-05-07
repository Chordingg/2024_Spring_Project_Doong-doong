package com.doongdoong.web.security;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.doongdoong.web.member.AuthVO;
import com.doongdoong.web.member.MemberMapper;
import com.doongdoong.web.member.MemberVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
			"file:src/main/webapp/WEB-INF/spring/security-context.xml"}
)
@Log4j
public class SecurityTest {

	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	@Autowired
	private MemberMapper memberMapper;
	
	/*
	 * @Test public void testInsertMember() {
	 * 
	 * for(int i=1; i<=100; i++) {
	 * 
	 * MemberVO memberVO = new MemberVO();
	 * 
	 * memberVO.setUserid("user"+i); memberVO.setUserpw(pwEncoder.encode("1111"));
	 * memberVO.setName("USER"+i);
	 * 
	 * List<AuthVO> authList = new ArrayList<AuthVO>();
	 * 
	 * AuthVO userAuth = new AuthVO("user"+i, "ROLE_USER"); authList.add(userAuth);
	 * 
	 * if(i>50) { AuthVO managerAuth = new AuthVO("user"+i, "ROLE_MEMBER");
	 * authList.add(managerAuth); }
	 * 
	 * if(i>=90) { AuthVO adminAuth = new AuthVO("user"+i, "ROLE_ADMIN");
	 * authList.add(adminAuth); }
	 * 
	 * memberVO.setAuthList(authList);
	 * 
	 * log.info("============check4===============");
	 * 
	 * memberMapper.insert(memberVO);
	 * 
	 * log.info("============check5===============");
	 * 
	 * authList.stream().forEach(authVO->{ memberMapper.insertAuth(authVO);
	 * 
	 * }); } }
	 */
	
//	@Test
//	   public void testInsertMember2() {
//
//	      
//	         MemberVO memberVO = new MemberVO();
//
//	         memberVO.setUserid("doongdoong8282@naver.com");
//	         memberVO.setUserpw(pwEncoder.encode("1111"));
//	         memberVO.setMembername("둥둥프로젝트");
//	         memberVO.setPhone("010-1234-5678");
//           memberVO.setMemberAddr1("경기도 수원시");
//	         memberVO.setMemberAddr2("팔달구 덕영대로895번길");
//	         memberVO.setMemberAddr3("9-1 2층");
//
//	         List<AuthVO> authList = new ArrayList<AuthVO>();
//
//	         AuthVO userAuth = new AuthVO("doongdoong8282@naver.com", "ROLE_ADMIN");
//	         authList.add(userAuth);
//
//	         memberVO.setAuthList(authList);
//	         
//	         memberMapper.insert(memberVO);
//
//	         authList.stream().forEach(authVO -> {
//	            memberMapper.insertAuth(authVO);
//	         });
//	      }
	
	
	@Test
	public void testPassword() {
		
		String str = "1234";
		
		String encodeStr = pwEncoder.encode(str);
		
		log.info("-------------------------------------------");
		
		log.info(encodeStr);
		
		boolean match = pwEncoder.matches("1234", encodeStr);
		log.info(match);
		
	}
	
	
	@Test
	public void testRead() {
		MemberVO memberVO = memberMapper.read("user99");
		log.info("memberVO=============================>"  + memberVO);
	}
	
	
}
