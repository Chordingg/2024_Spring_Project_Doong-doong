package com.doongdoong.web.order;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.doongdoong.web.main.Criteria;
import com.doongdoong.web.main.PageMakeVO;
import com.doongdoong.web.member.MemberService;
import com.doongdoong.web.member.MemberVO;

@Controller
public class OrderController {
   
   @Autowired
   private OrderService orderService;
   
   @Autowired
   private MemberService memberService;
   
   
   @GetMapping("/order/{userid:.+}")
   public String orderPageGET(@PathVariable("userid") String userid, OrderPageVO opv, Model model) {

      model.addAttribute("orderList", orderService.getProductInfo(opv.getOrders()));
      model.addAttribute("memberInfo", memberService.getMemberInfo(userid));
      
      return "/order/order";
   }
   
   @PostMapping("/order")
   public String orderPagePost(OrderVO ov, HttpServletRequest request) {
      System.out.println(ov);
      
      orderService.Order(ov);
//      
//      MemberVO memberVO = new MemberVO();
//      memberVO.setUserid(ov.getUserid());
//      
//      HttpSession session = request.getSession();
//      
//      try {
//         MemberVO memberLogin = memberService.memberLogin(memberVO);
//         memberLogin.setUserpw("");
//         session.setAttribute("member", memberLogin);
//         
//      }catch(Exception e) {
//         e.printStackTrace();
//      }
//      
//      
      return "redirect:/mainPage";
   }

   
   
   //주문 현황 페이지
   @GetMapping("/orderList")
   public String orderListGET(Criteria cri, Model model) {
      
      List<OrderVO> list = orderService.getOrderList(cri);
      
      if(!list.isEmpty()) {
         model.addAttribute("list", list);
         model.addAttribute("pageMaker", new PageMakeVO(cri, orderService.getOrderTotal(cri)));
      }else {
         model.addAttribute("listCheck", "empty");
      }
      
      
      return "/order/orderList";
   }
   
   
   //주문 삭제
   @PostMapping("/orderCancle")
   public String orderCanclePOST(OrderCancelVO cancel) {
      
      orderService.orderCancle(cancel);
      
      return "redirect:/orderList?keyword=" + cancel.getKeyword() + "&amount=" + cancel.getAmount() + "&pageNum=" + cancel.getPageNum();
   
   }
}