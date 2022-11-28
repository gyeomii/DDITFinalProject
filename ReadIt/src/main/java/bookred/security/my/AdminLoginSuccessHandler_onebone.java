package bookred.security.my;
//package bookred.security;
//
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import org.springframework.security.core.Authentication;
//import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
//
//import bookred.admin.dto.AdminVO;
//import bookred.member.dto.MemberVO;
//
//
//public class AdminLoginSuccessHandler_onebone extends SavedRequestAwareAuthenticationSuccessHandler {
//
//	//아이디랑 패스워드 db에서 끄내와야하기 때문에 service가 필요하다
//	//근데 CustomAuthenticationProvider에서 service가 호출되기 때문에 여기선 필요가 없음
//	@Override
//	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
//			Authentication authentication) throws ServletException, IOException {
//		HttpSession session = request.getSession();		
//		Object loginUser = null;
//		// session 저장
//		try {
//			Admin admin = (Admin)authentication.getDetails();	
//			System.out.println(admin.getAuthorities());
//			
//			loginUser = (AdminVO) admin.getAdminVO();
//			session.setAttribute("loginAuth", "admin");
//			
//		} catch (ClassCastException e) {
//			User user = (User) authentication.getDetails();	
//			
//			loginUser = (MemberVO) user.getMemberVO();
//			session.setAttribute("loginAuth", "user");
//		}  
//		
//		session.setAttribute("loginUser", loginUser);
//		session.setMaxInactiveInterval(60*6);
//		
//		
//		super.onAuthenticationSuccess(request, response, authentication);
//	}
//	
//	
//	
//
//}
