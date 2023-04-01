package com.ggws.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.ggws.db.SqlSessionManager;


public class calendarDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();

	
	public int insertCalendar(calendarVO vo) {
		
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		int cnt = sqlSession.insert("insertCalendar", vo);
		sqlSession.close();
		
		return cnt;
	}
	
	public List<calendarVO> showCalendar() {
		List<calendarVO> list = null;
		SqlSession sqlSession = sqlSessionFactory.openSession(true);
		list = sqlSession.selectList("showCalendar");
		sqlSession.close();
		return list;
		
	}
	
	
}
