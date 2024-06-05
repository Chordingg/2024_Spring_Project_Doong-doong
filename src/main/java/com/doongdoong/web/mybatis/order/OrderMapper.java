package com.doongdoong.web.mybatis.order;

import java.util.List;

import com.doongdoong.web.main.Criteria;
import com.doongdoong.web.member.MemberVO;
import com.doongdoong.web.order.OrderItemVO;
import com.doongdoong.web.order.OrderPageItemVO;
import com.doongdoong.web.order.OrderVO;

public interface OrderMapper {

   //주문 상품 정보
   public OrderPageItemVO getProductInfo(int product_id);
   
   //주문 상품 정보(주문 처리)
   public OrderItemVO getOrderInfo(int product_id);
   
   //주문 테이블 등록
   public int enrollOrder(OrderVO order);
   
   //주문 아이템 테이블 등록
   public int enrollOrderItem(OrderItemVO orderItem);
   
   //주문 금액 차감
   public int deductMoney(MemberVO memberVO);
   
   
   //주문 상품 리스트
      public List<OrderVO> getOrderList(Criteria cri);
      
      //주문 총 갯수
      public int getOrderTotal(Criteria cri);

      /* 주문 취소 */
      public int orderCancle(String orderId);
      
      /* 주문 상품 정보(주문취소) */
      public List<OrderItemVO> getOrderItemInfo(String orderId);
      
      /* 주문 정보(주문취소) */
      public OrderVO getOrder(String orderId);
}