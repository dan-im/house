package com.mystudy.house.model.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mystudy.house.model.dao.CartDAO;
import com.mystudy.house.model.dao.ProductDAO;
import com.mystudy.house.model.vo.CartviewVO;
import com.mystudy.house.model.vo.OrderCkVO;
import com.mystudy.house.model.vo.OrderPVO;
import com.mystudy.house.model.vo.ProductVO;

public class OrderCompleteCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		//1. 사용할 파라미터 값 추출(확인)
		String id =request.getParameter("id");
		System.out.println("id:" + id);
		String orderRequest = request.getParameter("orderRequest");
		System.out.println("orderRequest:" + orderRequest);
		
		List<OrderCkVO> list = (List<OrderCkVO>) session.getAttribute("plist");
		List<OrderPVO> orderplist = new ArrayList<>();
		
		for(OrderCkVO vo : list) {
			OrderPVO pvo = new OrderPVO();
			
		    pvo.setProductNum(vo.getProductNum());
		    pvo.setCount(vo.getCount());
		    orderplist.add(pvo);
		}
		System.out.println(orderplist.toString());
		
		//3. 데이터를 응답할 페이지에 전달
		//request.setAttribute("list", list);
		
		//4. 페이지 전환 - 응답할 페이지(list.jsp)
		
		return "/WEB-INF/cart/order_complete.jsp";
	}

}









