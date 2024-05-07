package com.doongdoong.web.member;

import java.util.Collection;
import java.util.Date;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;

/*
 	  create table tbl_member(
      userid varchar2(50) not null primary key,
      userpw varchar2(100) not null,
      membername varchar2(100) not null,
      phone varchar2(50) not null,
      regdate date default sysdate, 
      updatedate date default sysdate,
      enabled char(1) default '1');
*/

@Data
public class MemberVO implements UserDetails{
	
	private String userid, userpw, membername;
	
	private String phone;
	
	private boolean enabled;
	
	private Date regDate, updateDate;
	
	private List<AuthVO> authList;

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return null;
	}

	@Override
	public String getPassword() {
		return null;
	}

	@Override
	public String getUsername() {
		return null;
	}

	@Override
	public boolean isAccountNonExpired() {
		return false;
	}

	@Override
	public boolean isAccountNonLocked() {
		return false;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return false;
	}

	@Override
	public boolean isEnabled() {
		return false;
	}

}
