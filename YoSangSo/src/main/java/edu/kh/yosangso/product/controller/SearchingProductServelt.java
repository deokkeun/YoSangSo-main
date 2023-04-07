package edu.kh.yosangso.product.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.product.model.service.SearchingService;
import edu.kh.yosangso.product.model.vo.Product;

@WebServlet("/searchingProduct")
public class SearchingProductServelt extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
			
			List<Product> list = new ArrayList<>();
			SearchingService service = new SearchingService();
			String query = req.getParameter("query");
			
			list  = service.searchingProduct(query);
			
			req.setAttribute("productList", list);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/views/product/searchingProduct.jsp";
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		
		dispatcher.forward(req, resp);
		
	}

}
