package com.doongdoong.web.index;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class IndexController {

	@GetMapping("register")
	   public void Register() {
	      
	   }
	   
	   @Autowired
	   JavaMailSenderImpl mailSender;

	   //이메일 인증
	   @PostMapping("/EmailAuth")
	   @ResponseBody
	   public int emailAuth(String email) {
	      
	      log.info("전달 받은 이메일 주소 : " + email);
	      
	      //난수의 범위 111111 ~ 999999 (6자리 난수)
	      Random random = new Random();
	      int checkNum = random.nextInt(888888)+111111;
	      
	      //이메일 보낼 양식
	      String setFrom = "doongdoong8282@naver.com"; //2단계 인증 x, 메일 설정에서 POP/IMAP 사용 설정에서 POP/SMTP 사용함으로 설정o
	      String toMail = email;
	      String title = "회원가입 인증 이메일 입니다.";
	      String content = "인증 코드는 " + checkNum + " 입니다." +
	                   "<br>" +
	                   "해당 인증 코드를 인증 코드 확인란에 기입하여 주세요.";
	      
	      try {
	         MimeMessage message = mailSender.createMimeMessage(); //Spring에서 제공하는 mail API
	            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
	            helper.setFrom(setFrom);
	            helper.setTo(toMail);
	            helper.setSubject(title);
	            helper.setText(content, true);
	            mailSender.send(message);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      log.info("랜덤숫자 : " + checkNum);
	      return checkNum;
	   }
	
	
}
