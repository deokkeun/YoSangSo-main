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

import com.google.gson.Gson;

import edu.kh.yosangso.member.model.vo.Member;
import edu.kh.yosangso.order.model.service.OrderService;
import edu.kh.yosangso.order.model.vo.ApprovalUrl;

@WebServlet("/order/payResult")
public class PayResultServlet extends HttpServlet{
	
	/** 카카오페이 -> js onload ajax를 통해서 productDetail 테이블에서 가져옴
	 *
	 */
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<ApprovalUrl> approval = new ArrayList<>();
		
		try {
			OrderService service = new OrderService();
			
			HttpSession session = req.getSession();
			Member loginMember = (Member)session.getAttribute("loginMember");
			int memberNo = loginMember.getMemberNo();
			
			System.out.println(memberNo);
			
			
			approval = service.approvalUrl(memberNo);
			
			if(approval != null) {
				System.out.println(approval.get(0).getOrderNo());
				System.out.println(approval.get(0).getOrderDate());
				System.out.println(approval.get(0).getDeliveryDate());
				System.out.println(approval.get(0).getBuyingRate());
				System.out.println(approval.get(0).getPrice());
				System.out.println(approval.get(0).getProductName());
				
				new Gson().toJson(approval, resp.getWriter());
			}

			
		} catch(Exception e) {
			e.printStackTrace();
			throw new NullPointerException();
		}
	}

}
