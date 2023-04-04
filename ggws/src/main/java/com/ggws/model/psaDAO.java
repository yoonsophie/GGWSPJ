package com.ggws.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ggws.db.SqlSessionManager;

public class psaDAO {

	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	public int uploadPsa(psaVO vo) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true); //auto commit;
		int cnt = sqlSession.insert("uploadPsa", vo);
		sqlSession.close();
		return cnt;
	}
	
	
	public String getPsa(String user_id) {
		SqlSession sqlSession = sqlSessionFactory.openSession(true); //auto commit;
		String psa = null;
		psa = sqlSession.selectOne("getPsa", user_id);
		sqlSession.close();
		return psa;
	}
	
}
