package com.ggws.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ggws.db.SqlSessionManager;


public class BoardDAO {
	// DAO에서 호출했을 때 바로 DB와 연결할 수 있도록 SqlSessionManager사용
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		// 작성한게시글 db에 저장
		public int upload(BoardVO vo) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			int cnt = sqlSession.insert("com.smhrd.db.BoardMapper.boardinsert", vo);
			sqlSession.close();
			return cnt;
		}
}
