package com.ggws.model;

import java.math.BigDecimal;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ggws.db.SqlSessionManager;

public class noticeBoardDAO {
	
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	public int insert(noticeBoardVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert( "noticeBoardInsert", vo );
		sqlSession.close();
		
		return cnt;
	}

	public List<noticeBoardVO> select(noticeBoardVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		List<noticeBoardVO> list = sqlSession.selectList("noticeBoardList", vo);
		sqlSession.close();
		
		return list;
		
	}

	public noticeBoardVO selectDetail(BigDecimal boardSeq) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		noticeBoardVO vo = sqlSession.selectOne("noticeBoardDetail", boardSeq);
		sqlSession.close();
		
		return vo;
	}

	public String check(noticeBoardVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		String user_id = sqlSession.selectOne("checkMember",vo);
		sqlSession.close();
		
		return user_id;
	}

	public int delete(BigDecimal boardSeq) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.delete("deleteNoticeBoard", boardSeq);
		sqlSession.close();
		return cnt;
	}
	
	
	
	
	
}
