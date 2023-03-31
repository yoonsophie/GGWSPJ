package com.ggws.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.ggws.db.SqlSessionManager;
import com.ggws.model.calendarVO.BoardVO;

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
		list = sqlSession.selectList("selectCalendar");
		sqlSession.close();
		return list;
		
	}
	
	
	
}
