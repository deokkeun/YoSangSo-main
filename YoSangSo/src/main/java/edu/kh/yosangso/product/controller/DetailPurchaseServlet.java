package edu.kh.yosangso.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.cart.model.vo.ShoppingCart;
import edu.kh.yosangso.member.model.vo.Member;
import edu.kh.yosangso.product.model.service.ProductService;

@WebServlet("/product/purchase")
public class DetailPurchaseServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			
			try {
			
				HttpSession session = req.getSession();
				
				Member loginMember = (Member)( session.getAttribute("loginMember") ) ;
				
				String path = null;
				
				System.out.println(session);
			
				if(loginMember != null) {
					
					ProductService service = new ProductService();
			
					
					int pro = Integer.parseInt(req.getParameter("productNo"));
					int count = Integer.parseInt(req.getParameter("count"));
					int memberNo = loginMember.getMemberNo();
					
					System.out.println(memberNo);
					
					ShoppingCart cart = new ShoppingCart();
					
					cart.setProductNo(pro);
					cart.setBuyingRate(count);
					cart.setMemberNo(memberNo);
				
					int result = service.detailPurchase(cart);
					
					path = "/WEB-INF/views/product/test.jsp";
					
					
					req.getRequestDispatcher(path).forward(req, resp);
					
				} else {
					
					path ="/WEB-INF/views/member/login.jsp";
					
					
					req.getRequestDispatcher(path).forward(req, resp);
					
				}
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		
	}
}
