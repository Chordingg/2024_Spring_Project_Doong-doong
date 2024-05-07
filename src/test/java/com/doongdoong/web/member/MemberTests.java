package com.doongdoong.web.member;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
					   "file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class MemberTests {
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Test
	public void testInsertMember() {
		
		for (int i = 1; i <= 10; i++) {

			MemberVO memberVO = new MemberVO();

			memberVO.setUserid("user" + i);
			memberVO.setUserpw(pwEncoder.encode("1111"));
			memberVO.setMembername("USER" + i);
			memberVO.setPhone("010-1234-5678");

			List<AuthVO> authList = new ArrayList<AuthVO>();

			AuthVO userAuth = AuthVO.builder()
					.userid("user" + i)
					.auth("ROLE_USER")
					.memberAddr1("경기도 화성시")
					.memberAddr2("병점동")
					.memberAddr3("우남1차")
					.build();
			
			authList.add(userAuth);
					
			if (i > 5) {
				
				AuthVO managerAuth = AuthVO.builder()
						.userid("member" + i)
						.auth("ROLE_MEMBER")
						.memberAddr1("경기도 수원시")
						.memberAddr2("영통구")
						.memberAddr3("태산아파트1차")
						.build();
				
				authList.add(managerAuth);
			}

			if (i >= 10) {
				
				AuthVO adminAuth = AuthVO.builder()
						.userid("doongdoong82@naver.com")
						.auth("ROLE_ADMIN")
						.memberAddr1("서울시 강남구")
						.memberAddr2("개포동")
						.memberAddr3("힐스테이트")
						.build();
				
				authList.add(adminAuth);
			}

			memberVO.setAuthList(authList);
			
			memberMapper.insert(memberVO);

			authList.stream().forEach(authVO ->{
				memberMapper.insertAuth(authVO);
			});
		}
	}
	
	@Test
	public void testRead() {
		MemberVO vo = memberMapper.read("user2");
		log.info(vo);
	}
}
