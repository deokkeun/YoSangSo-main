package edu.kh.yosangso.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/member/memberInfo")
public class MemberInfoServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String path = "/WEB-INF/views/member/memberInfo.jsp";
	
		req.getRequestDispatcher(path).forward(req, resp);
	}
	
	
	
}
