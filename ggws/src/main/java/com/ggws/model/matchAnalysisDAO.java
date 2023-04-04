package com.ggws.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ggws.db.SqlSessionManager;

public class matchAnalysisDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	/*
	 * // 경기정보확인 public List<matchAnalysisVO> select() { List<matchAnalysisVO> list
	 * = null; SqlSession sqlSession = sqlSessionFactory.openSession(true); list =
	 * sqlSession.selectList("com.ggws.db.matchAnalysisMapper.matchselectall");
	 * sqlSession.close(); return list; }
	 */
				// 주최팀 총경기수
				public List<matchAnalysisVO> select_a() {
					List<matchAnalysisVO> list = null;
					SqlSession sqlSession = sqlSessionFactory.openSession(true);
					list = sqlSession.selectList("com.ggws.db.matchAnalysisMapper.matchselecta");
					sqlSession.close();
					return list;
				}
				// 상대팀 총경기수
				public List<matchAnalysisVO> select_h() {
					List<matchAnalysisVO> list = null;
					SqlSession sqlSession = sqlSessionFactory.openSession(true);
					list = sqlSession.selectList("com.ggws.db.matchAnalysisMapper.matchselecth");
					sqlSession.close();
					return list;
				}
				// 우리팀 경기 정보
				public List<matchAnalysisVO> select_my() {
					List<matchAnalysisVO> list = null;
					SqlSession sqlSession = sqlSessionFactory.openSession(true);
					list = sqlSession.selectList("com.ggws.db.matchAnalysisMapper.matchselectmy");
					sqlSession.close();
					return list;
				}
				// 우리팀 vs 1팀 경기 정보
				public List<matchAnalysisVO> select_1team() {
					List<matchAnalysisVO> list = null;
					SqlSession sqlSession = sqlSessionFactory.openSession(true);
					list = sqlSession.selectList("com.ggws.db.matchAnalysisMapper.matchselect1team");
					sqlSession.close();
					return list;
				}
				// 우리팀 vs 4팀 경기 정보
				public List<matchAnalysisVO> select_4team() {
					List<matchAnalysisVO> list = null;
					SqlSession sqlSession = sqlSessionFactory.openSession(true);
					list = sqlSession.selectList("com.ggws.db.matchAnalysisMapper.matchselect4team");
					sqlSession.close();
					return list;
				}
				// 우리팀 vs 4팀 경기 정보
				public List<matchAnalysisVO> select_win() {
					List<matchAnalysisVO> list = null;
					SqlSession sqlSession = sqlSessionFactory.openSession(true);
					list = sqlSession.selectList("com.ggws.db.matchAnalysisMapper.matchselectwin");
					sqlSession.close();
					return list;
				}
		
}
