//package edu.kh.yosangso.order.controller;
//
//import java.io.IOException;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import edu.kh.yosangso.member.model.vo.Member;
//import edu.kh.yosangso.product.model.vo.Product;
//
//@WebServlet("/order/payOne")
//public class PayOneServlet extends HttpServlet{
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		
//		HttpSession session = req.getSession();
//		Member loginMember = (Member)session.getAttribute("loginMember");
//		
//		
//		if(loginMember == null) {
//			String path = "/WEB-INF/views/member/login.jsp";
//			req.getRequestDispatcher(path).forward(req, resp);
//			
//		} else {
//			
//			// 1개 구매시 (상품 번호 수량 얻어오기)
//			int productNo = 0;
//			int buyingRate = 0;
////			int productNo = Integer.parseInt(req.getParameter("productNo"));
//			
//			
//			// PRODUCT_IMAGE, PRODUCT_NM, PRICE
////			Product product = service.payOneList(productNo);
//			
//			int productTotalPrice = 0;
//			int deliveryPrice = 3000;
//			int discount = 1000;
//			int totalPrice = 0;
//			
//			// 수량 파라미터로 얻어와서 변경하기
////			productTotalPrice += product.getPrice() * buyingRate;
//			
//			if(productTotalPrice > 10000) {
//				deliveryPrice = 0;
//			}
//			
//			totalPrice = productTotalPrice - discount + deliveryPrice;
//			
//			req.setAttribute("productTotalPrice", productTotalPrice);
//			req.setAttribute("deliveryPrice", deliveryPrice);
//			req.setAttribute("totalPrice", totalPrice);
//			req.setAttribute("product", product);
//			
//			
//			String path = "/WEB-INF/views/order/payOne.jsp";
//			
//			req.getRequestDispatcher(path).forward(req, resp);
//		}
//		
//		
//		
//		
//	}
//}
