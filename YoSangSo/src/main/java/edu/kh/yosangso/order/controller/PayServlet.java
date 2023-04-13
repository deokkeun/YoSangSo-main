package edu.kh.yosangso.order.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.member.model.vo.Member;
import edu.kh.yosangso.order.model.service.OrderService;
import edu.kh.yosangso.product.model.vo.Product;

@WebServlet("/order/pay")
public class PayServlet extends HttpServlet{

	/**	결제 페이지 이동
	 *	장바구니 -> 결제 
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("order pay doget loaded.");
		
		try {
			List<Product> payList = null;
			
			// <input type="hidden" name="pay_mode" value="detail"/> 값 받아와서 활용하기(개별, 장바구니)
			System.out.println("pay_mode :::" + req.getParameter("pay_mode"));
			
//			장바구니 여러개 구매시
			HttpSession session = req.getSession();
			Member loginMember = (Member)session.getAttribute("loginMember");
			String mode = req.getParameter("pay_mode");
			
			
			if(loginMember != null) {
				
				int memberNo = loginMember.getMemberNo();
				
				OrderService service = new OrderService();
				
				
				if(mode != null) {
					// 개별상품 구매시 파라미터 값 가져오기
					int productNo = Integer.parseInt(req.getParameter("productNo"));
					String productName = req.getParameter("productName");
					int price = Integer.parseInt(req.getParameter("price"));
					int productCount = Integer.parseInt(req.getParameter("count"));
					
					payList = new ArrayList<Product>();
					
					// 상품 디테일에서 바로 결제
					Product product = new Product();
					product.setProductNo(productNo);
					product.setProductName(productName);
					product.setPrice(price);
					product.setProductCount(productCount);
					
					payList.add(product);
//					payList = service.payDetailList(memberNo);
					// 상품번호, 이미지, 이름, 가격, 구매수량
					
					int productTotalPrice = 0;
					int deliveryPrice = 3000;
					int discount = 1000;
					int totalPrice = 0;
					
					for(Product pro : payList) {
						productTotalPrice += pro.getPrice() * pro.getProductCount();
					}
					
					if(productTotalPrice > 10000) {
						deliveryPrice = 0;
					}
					
					totalPrice = productTotalPrice - discount + deliveryPrice;
					
					req.setAttribute("productTotalPrice", productTotalPrice);
					req.setAttribute("deliveryPrice", deliveryPrice);
					req.setAttribute("totalPrice", totalPrice);
					req.setAttribute("payList", payList);
					
					String path = "/WEB-INF/views/order/pay.jsp";
					req.getRequestDispatcher(path).forward(req, resp);
					

					
				} else {
					payList = new ArrayList<>();
					// 장바구니 결제
					payList = service.payList(memberNo);
					
					int productTotalPrice = 0;
					int deliveryPrice = 3000;
					int discount = 1000;
					int totalPrice = 0;
					
					for(Product product : payList) {
						productTotalPrice += product.getPrice() * product.getProductCount();
					}
					
					if(productTotalPrice > 10000) {
						deliveryPrice = 0;
					}
					
					totalPrice = productTotalPrice - discount + deliveryPrice;
					
					req.setAttribute("productTotalPrice", productTotalPrice);
					req.setAttribute("deliveryPrice", deliveryPrice);
					req.setAttribute("totalPrice", totalPrice);
					req.setAttribute("payList", payList);
					
					String path = "/WEB-INF/views/order/pay.jsp";
					req.getRequestDispatcher(path).forward(req, resp);
					
				}
					
			} else {
				// loginMember == null
				
				String path = "/WEB-INF/views/member/login.jsp";
				req.getRequestDispatcher(path).forward(req, resp);
				
		
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
