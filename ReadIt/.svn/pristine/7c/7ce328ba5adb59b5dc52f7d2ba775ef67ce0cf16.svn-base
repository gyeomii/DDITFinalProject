package bookred.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

import bookred.member.dto.MemberVO;


public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	//아이디랑 패스워드 db에서 끄내와야하기 때문에 service가 필요하다
	//근데 CustomAuthenticationProvider에서 service가 호출되기 때문에 여기선 필요가 없음
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws ServletException, IOException {
		

		User user = (User)authentication.getDetails();	
		
		// session 저장
		MemberVO loginUser = user.getMemberVO();  
		HttpSession session = request.getSession();		
		
		session.setAttribute("loginUser", loginUser);
		session.setMaxInactiveInterval(60*1000);
		
		System.out.println(loginUser.getMem_id());
		System.out.println(loginUser.getMem_name());
		System.out.println(loginUser.getAuthority());
		
		
		super.onAuthenticationSuccess(request, response, authentication);
	}
	
	
	

}
