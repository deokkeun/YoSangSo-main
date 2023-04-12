package edu.kh.yosangso.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.member.model.service.MemberService;

@WebServlet("/member/checkNumber")
public class CheckNumberServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String cMessage = req.getParameter("cMessage");
			String cNumber = req.getParameter("cNumber");
			
			int result = new MemberService().checkNumber(cMessage, cNumber);
			
			resp.getWriter().print(result);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
