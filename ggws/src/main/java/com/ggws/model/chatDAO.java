package com.ggws.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ggws.db.SqlSessionManager;

public class chatDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 작성한 채팅 내용 DB로 전송
	public int submit(chatVO dto){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int chat = sqlSession.insert("submitChat", dto);
		sqlSession.close();
		return chat;
	}
	
	// 최근 작성된 채팅 메시지
	public List<chatVO> getChatListByID(int chatID, String fromID, String toID){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		chatVO setdto = new chatVO(chatID, fromID, toID);
		List<chatVO> chatList = sqlSession.selectList("chatSelect", setdto);				
		sqlSession.close();
		System.out.println("chatDAO getChatListByID 완");
		return chatList;
	}
	
	// 기존 채팅 내역
	public List<chatVO> getChatListByRecent(String fromID, String toID, String chatID){
		List<chatVO> chatList = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		chatVO dto = new chatVO(fromID, toID, chatID);
		chatList = sqlSession.selectList("getChatListByRecent", dto);
		sqlSession.close();
		System.out.println("chatDAO getChatListByRecent 완");
		return chatList;
	}
	
	
	
	
	
	
	// 작성한 팀채팅 내용 DB로 전송
	public int submitTeam(chatVO dto){
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int chat = sqlSession.insert("submitChatTeam", dto);
		sqlSession.close();
		return chat;
	}
	
	
	
	// 기존 팀채팅 내역
		public List<chatVO> getChatListByIDTeam(String toID,String chatID){
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			chatVO setdto = new chatVO(toID,chatID);
			List<chatVO> chatList = sqlSession.selectList("chatSelectTeam", setdto);	
			sqlSession.close();
			System.out.println("chatDAO getChatListByIDTeam 완");
			return chatList;
		}
		
		// 최근 작성된 팀채팅 메시지
		public List<chatVO> getChatListByRecentTeam(String toID, String chatID){
			List<chatVO> chatList = null;
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			chatVO dto = new chatVO( toID, chatID);
			chatList = sqlSession.selectList("getChatListByRecentTeam", dto);
			sqlSession.close();
			System.out.println("chatDAO getChatListByRecentTeam 완");
			return chatList;
		}
	
	
	
	
	
	
	
	// 채팅할 사람 이름(이메일x)
	public String getChatName(String toID) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		String getChatName = sqlSession.selectOne("selectName", toID);
		sqlSession.close();
		return getChatName;
	}
	
}
