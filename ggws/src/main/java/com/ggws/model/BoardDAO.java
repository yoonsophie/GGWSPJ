package com.ggws.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ggws.db.SqlSessionManager;


public class BoardDAO {
	// DAO에서 호출했을 때 바로 DB와 연결할 수 있도록 SqlSessionManager사용
		SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
		// 작성한게시글 db에 저장
		public int upload(BoardVO vo) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			int cnt = sqlSession.insert("com.ggws.db.boardMapper.boardinsert", vo);
			sqlSession.close();
			return cnt;
		}
		// 전체 게시글 조회
		public List<BoardVO> showBoard(){
			List<BoardVO> list = null;
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			list = sqlSession.selectList("com.ggws.db.boardMapper.selectAll");
			sqlSession.close();
			return list;
		}
		// 세부 게시글 조회
		public BoardVO detailBoard(int board_seq) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			BoardVO detail_vo = sqlSession.selectOne("com.ggws.db.boardMapper.selectone", board_seq);
			sqlSession.close();
			return detail_vo;
		}
		// 게시글 삭제
		public int delete(String board_title) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			int cnt = sqlSession.delete("com.ggws.db.boardMapper.boarddelete", board_title);
			sqlSession.close();
			return cnt;
		}
}
