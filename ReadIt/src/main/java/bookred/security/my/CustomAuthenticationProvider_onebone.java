package bookred.security.my;
//package bookred.security;
//
//import java.sql.SQLException;
//
//import org.springframework.security.authentication.AuthenticationProvider;
//import org.springframework.security.authentication.BadCredentialsException;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.AuthenticationException;
//import org.springframework.security.core.userdetails.UserDetails;
//
//
//import bookred.admin.dto.AdminVO;
//import bookred.admin.service.AdminService;
//import bookred.exception.InvalidPasswordException;
//import bookred.exception.NotFoundIdException;
//
//public class CustomAuthenticationProvider implements AuthenticationProvider {
//
//	private AdminService adminService;
//	public void setAdminService(AdminService adminService) {
//		this.adminService = adminService;
//	}
//	
//	@Override	//성공하면 요고			//로그인 정보 받아서~~		// 로그인 실패하면요거
//	public Authentication authenticate(Authentication auth) throws AuthenticationException {
//		String login_id = (String) auth.getPrincipal(); // 로그인 시도한 ID를 가져온다
//		String login_pwd = (String) auth.getCredentials(); // 로그인 시도한 Password 를 가져온다.
//		
//		
//	
//		try {
//			adminService.login(login_id, login_pwd);
//			
//			AdminVO admin = adminService.getAdmin(login_id);
//			
//			UserDetails authUser = new User(admin);
//			boolean invalidCheck = authUser.isAccountNonExpired()
//					&& authUser.isAccountNonLocked()
//					&& authUser.isCredentialsNonExpired()
//					&& authUser.isEnabled();
//			
//			if (invalidCheck) {
//				UsernamePasswordAuthenticationToken result
//				= new UsernamePasswordAuthenticationToken(
//							authUser.getUsername(), authUser.getPassword(), 
//							authUser.getAuthorities());
//				// 전달할 내용을 설정한 후
//				result.setDetails(authUser); // 얘가 user디테일이다.
//				// 리턴한다. successHandler로 전송된다.
//				return result;
//			}
//			
//		} catch (NotFoundIdException e) {
//			throw new BadCredentialsException("존재하지 않는 아이디입니다.");
////			throw new UsernameNotFoundException("존재하지 않는 아이디입니다."); 이렇게 해도됨!
//		} catch (InvalidPasswordException e) {
//			throw new BadCredentialsException("패스워드가 일치하지 않습니다.");
//		} catch (SQLException e) {
//			e.printStackTrace();
//			throw new BadCredentialsException("서버 에러");
//		}
//		
//		return null;
//	}
//
//	@Override
//	public boolean supports(Class<?> auth) {
////		System.out.println("서포트:" + auth.equals(UsernamePasswordAuthenticationToken.class));
//		return auth.equals(UsernamePasswordAuthenticationToken.class);
//	}
//
//}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
