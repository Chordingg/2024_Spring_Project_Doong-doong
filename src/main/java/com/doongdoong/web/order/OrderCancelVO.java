package com.doongdoong.web.order;

import lombok.Data;

@Data
public class OrderCancelVO {
   private String userid;
   
   private String orderId;
   
   private String keyword;
   
   private int amount;
   
   private int pageNum;
}