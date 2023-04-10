package edu.kh.yosangso.order.controller;

import java.io.IOException;
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
		
		
		try {
			// 1개 구매시 (상품 번호 수량 얻어오기)
			int productNo = 0;
			int buyingRate = 0;
//			int productNo = Integer.parseInt(req.getParameter("productNo"));
			
			
//			장바구니 여러개 구매시
			HttpSession session = req.getSession();
			Member loginMember = (Member)session.getAttribute("loginMember");
			
			
			if(loginMember != null) {
				
				int memberNo = loginMember.getMemberNo();
				
				OrderService service = new OrderService();
				
				
				if(productNo == 0) {
					
					List<Product> payList = service.payList(memberNo);
					
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
					
				} else {
					// PRODUCT_IMAGE, PRODUCT_NM, PRICE
					Product product = service.payOneList(productNo);
					
					int productTotalPrice = 0;
					int deliveryPrice = 3000;
					int discount = 1000;
					int totalPrice = 0;
					
					// 수량 파라미터로 얻어와서 변경하기
					productTotalPrice += product.getPrice() * buyingRate;
					
					if(productTotalPrice > 10000) {
						deliveryPrice = 0;
					}
					
					totalPrice = productTotalPrice - discount + deliveryPrice;
					
					req.setAttribute("productTotalPrice", productTotalPrice);
					req.setAttribute("deliveryPrice", deliveryPrice);
					req.setAttribute("totalPrice", totalPrice);
					req.setAttribute("product", product);
					
					String path = "/WEB-INF/views/order/pay.jsp";
					req.getRequestDispatcher(path).forward(req, resp);
				}
				
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
}
