package com.ggws.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ggws.db.SqlSessionManager;



public class MemberDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 회원정보확인
		public List<MemberVO> select() {
			List<MemberVO> list = null;
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			list = sqlSession.selectList("com.ggws.db.MemberMapper.selectall");
			sqlSession.close();
			return list;
		}
	// 회원삭제
	public int delete(String id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.delete("com.ggws.db.MemberMapper.deleteMember",id);
		sqlSession.close();
		return cnt;
		}
	
	// 로그인
	public MemberVO login(MemberVO vo) {
			SqlSession sqlSession = sqlSessionFactory.openSession(true);
			MemberVO resultVO = sqlSession.selectOne("com.ggws.db.MemberMapper.loginMember", vo); 
			sqlSession.close();
			return resultVO;
		}
		
	
	
}
