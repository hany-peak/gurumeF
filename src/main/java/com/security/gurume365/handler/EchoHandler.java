package com.security.gurume365.handler;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
 
public class EchoHandler extends TextWebSocketHandler{
 
    private Logger logger = LoggerFactory.getLogger(EchoHandler.class);
    
    //모든세션 저장
    //방법1 Map
    //private Map <String, WebSocketSession> sessions = new HashMap<String, WebSocketSession();>
    
    //방법2 List //단체채팅//쓴사람 구분안됨
    private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();
     
    //클라이언트 연결후에 실행되는 메소드
    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception{
    	
    	//1 Map
    	//session.put(session.getId(), session);
    	//2 List
    	sessionList.add(session);
    	logger.info("{} Contected", session.getId());
    }
    //클라이언트가 웹소켓 서버로 메세지를 전송했을 때 실행되는 메소드
    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
    	
    	//아래와 같이는 최대 2개 
    	logger.info("From{}, recieved Message : {}", session.getId(), message.getPayload());
    	
    	//연결된 모든 클라이언트에게 메세지 전송
    	//2 List
    	for (WebSocketSession sess : sessionList) {
			sess.sendMessage(new TextMessage("echo : "+message.getPayload()));
		}
    	
    	/*1 Map
    		Iterator<String> sessionIds = sessions.keySet().iterator();
    		String sessionId = "";
    		while(sessionIds.hasNext()){
    			sessionId = sessionIds.next();
    			sessions.get(sessionId).sendMessage(new TextMessage("echo:" + message.getPayload()));
    		}
    		session.sendMessage(new TextMessage("echo: "+message.getPayload()));
    		*/
    }
    /**
     * 클라이언트가 연결 끊었을 때 실행되는 메소드
     */
    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception{
    	
    	//2List
    	sessionList.remove(session);
    	
    	//1Map
    	//sessions.remove(session.getId());
    	
    	logger.info("{} Connection Closed ", session.getId());
    }
    
}
