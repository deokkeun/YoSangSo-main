package edu.kh.yosangso.cart.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/boardTest")
public class BoardTestServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int pageNum = 1;
		int amount = 5;
		
		if(req.getParameter("pageNum") != null && req.getParameter("amount") != null) {
			pageNum = Integer.parseInt(req.getParameter("pageNum"));
			amount = Integer.parseInt(req.getParameter("amount"));
		}
		
		BoardTestPageDAO dao = new BoardTestPageDAO();
		
		List<BoardTestVo> list = dao.getList(pageNum, amount);
		int total = dao.getTotal();
		BoardTestPageVo pageVo = new BoardTestPageVo(pageNum, amount, total);
		
		req.setAttribute("pageVo", pageVo);
		req.setAttribute("list", list);
		System.out.println(pageVo);
		req.getRequestDispatcher("/WEB-INF/views/cart/boardTest.jsp").forward(req, resp);
		
	}

}
