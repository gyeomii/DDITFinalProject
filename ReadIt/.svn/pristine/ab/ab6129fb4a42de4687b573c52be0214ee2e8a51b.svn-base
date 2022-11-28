package bookred.socket.listener;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import bookred.socket.dto.AlramVO;
import bookred.socket.service.SocketService;

public class webSocketListenerMH extends TextWebSocketHandler{

	@Autowired
	private SocketService socekService;
	public void setSocekService(SocketService socekService) {
		this.socekService = socekService;
	}

	//접속한 websocket sessione들을 저장 하려 해용
	private static List<WebSocketSession> list = new ArrayList<WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		list.add(session);   // 리스트에 접속한 session들을 다마버려용
	}

	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		System.out.println(message);
		System.out.println("여기 데이터 전달된다~");
		
		for(WebSocketSession single : list) {
	         String id = message.getPayload();
	         List<AlramVO> alramList = socekService.getCommonAlramRMList(id);
	         int count = alramList.size();
	         
	         //리스트에 담긴 세션의 id와 메세지를 보내줄 세션의 id가 같고, uchkList가 0이 아닐 경우 메세지 전송
	         if(single.getId().equals(session.getId()) && count != 0) {
	            TextMessage sendMsg = new TextMessage(count+"");
	            single.sendMessage(sendMsg);
	         }
	      }

		
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		list.remove(session);
	}
	
}
