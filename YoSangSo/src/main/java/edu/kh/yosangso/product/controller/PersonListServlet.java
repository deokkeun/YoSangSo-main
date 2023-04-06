package edu.kh.yosangso.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import edu.kh.yosangso.product.model.service.ProductService;
import edu.kh.yosangso.product.model.vo.Product;

@WebServlet("/product/personList")
public class PersonListServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("test!!");
		
		try {
			String part = req.getParameter("part");
			
			ProductService service = new ProductService();
			
			List<Product> personList = service.personList(part);
			
			new Gson().toJson(personList, resp.getWriter());
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
