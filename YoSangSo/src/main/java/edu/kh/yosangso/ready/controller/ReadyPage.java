package edu.kh.yosangso.ready.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
@WebServlet()

public class ReviewSelectServlet extends HttpServlet{
	
=======
@WebServlet("/ready/ready")
public class ReadyPage extends HttpServlet {
>>>>>>> develop:YoSangSo/src/main/java/edu/kh/yosangso/ready/controller/ReadyPage.java
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/ready/ready.jsp";
		
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
