package com.doongdoong.web.order;

import java.util.List;

import com.doongdoong.web.main.Criteria;

public interface OrderService {

   //주문정보
   public List<OrderPageItemVO> getProductInfo(List<OrderPageItemVO> orders);

   //주문
   public void Order(OrderVO orderVO);
   
   //주문 상품 리스트
   public List<OrderVO> getOrderList(Criteria cri);
   
   //주문 총 갯수
   public int getOrderTotal(Criteria cri);
   
   /* 주문 취소 */
   public void orderCancle(OrderCancelVO cancel);
}