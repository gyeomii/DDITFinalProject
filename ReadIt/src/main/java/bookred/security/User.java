package bookred.security;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;


import bookred.member.dto.MemberVO;

public class User implements UserDetails {
	
	private MemberVO member;
	public User(MemberVO member) {
		this.member = member;
	}
	public MemberVO getMemberVO() {
		return this.member;
	}

	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> roles = new ArrayList<GrantedAuthority>();
		roles.add(new SimpleGrantedAuthority(member.getAuthority()));	
		return roles;
	}

	@Override
	public String getPassword() {
		return member.getMem_pwd();
	}

	@Override
	public String getUsername() {
		return member.getMem_id();
	}
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return member.getEnabled()!=4; // 기간제 계정의 경우 기간만료 여부 : enabled =4
	}
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return member.getEnabled()!=3;  // 사용 정지 혹은 휴먼계정 : enabled =3
	}
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return member.getEnabled()!=2; // 인증정보 만료 여부 : enabled =2
	}
	@Override
	public boolean isEnabled() {
		
		return member.getEnabled()!=0; // 탈퇴 혹은 삭제 : enabled = 0
	}

	
}






