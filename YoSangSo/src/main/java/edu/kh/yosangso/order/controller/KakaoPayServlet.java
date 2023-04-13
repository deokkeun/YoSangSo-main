package edu.kh.yosangso.order.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet("/kakaoPay")
public class KakaoPayServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				URL url = new URL("https://kapi.kakao.com/v1/payment/ready");
				HttpURLConnection urlConnection = (HttpURLConnection) url.openConnection();
				urlConnection.setRequestMethod("POST");
				urlConnection.setRequestProperty("Authorization", "KakaoAK 04b08a0a8e9e9c287f976e2d26497612");
				urlConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
				urlConnection.setDoOutput(true);
				String parameter = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&item_name=비타민&quantity=1&total_amount=19900&vat_amount=500&tax_free_amount=0&approval_url=https://developers.kakao.com/success&fail_url=https://developers.kakao.com/fail&cancel_url=https://developers.kakao.com/cancel";
				OutputStream ops = urlConnection.getOutputStream();
				DataOutputStream dops = new DataOutputStream(ops);
				dops.writeBytes(parameter);
				dops.close();
				
				int result = urlConnection.getResponseCode();
				
				InputStream ips;
				
				if(result == 200) {
					ips = urlConnection.getInputStream();
				} else {
					ips = urlConnection.getErrorStream();
				}
				
				InputStreamReader ipsr = new InputStreamReader(ips);
				
				BufferedReader br = new BufferedReader(ipsr);
				
//				return br.readLine();
				
				new Gson().toJson(br.readLine(), resp.getWriter());
				
			} catch(IOException e) {
				e.printStackTrace();
			}
			
//			return "";
			
	
	}
	
	
	
}