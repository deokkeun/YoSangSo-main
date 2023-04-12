package edu.kh.yosangso.main.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.main.model.service.MainService;
import edu.kh.yosangso.product.model.vo.Product;

@WebServlet("/main")
public class MainServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		List<Product> mpdList = new ArrayList<>();
	
		
		try {
			
			MainService service = new MainService();
			
			mpdList = service.mainProduct();
			
					
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/views/common/main.jsp";
		
		req.setAttribute("mpdList", mpdList);
		
		System.out.println(mpdList);
		
		req.getRequestDispatcher(path).forward(req, resp);
		
		
	}

	
	
}


