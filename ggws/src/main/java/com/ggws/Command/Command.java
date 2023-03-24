package com.ggws.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {

	// Interface : 틀 ex)이력서
		// 추상메소드 : 값은 없지만, 무조건 구현해야하는 기본메소드 ex) 이름, 나이..
		public abstract String execute(HttpServletRequest request, HttpServletResponse response);
}
