package com.klef.sdp.springboot.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klef.sdp.springboot.model.LoanRequest;
import com.klef.sdp.springboot.service.LoanRequestService;

import jakarta.servlet.http.HttpServletRequest;
@Controller
public class LoanRequestController {
	@GetMapping("loanrequest")
	  public ModelAndView loanrequest() {
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("loanRequestForm");
	    return mv;
	  }
	@PostMapping("submitLoanRequest")
	public String submitLoanRequest(HttpServletRequest request) {
	    String borrowerName = request.getParameter("borrowerName");
	    String email = request.getParameter("email");
	    double loanAmount = Double.parseDouble(request.getParameter("loanAmount"));
	    String loanPurpose = request.getParameter("loanPurpose");
	    int repaymentTime = Integer.parseInt(request.getParameter("repaymentTime"));

	    // Create a LoanRequest object and set its properties
	    LoanRequest loanRequest = new LoanRequest();
	    loanRequest.setBorrowerName(borrowerName);
	    loanRequest.setEmail(email);
	    loanRequest.setAmount(loanAmount);
	    loanRequest.setLoanPurpose(loanPurpose);
	    loanRequest.setRepaymentTime(repaymentTime);

	    // Save loan request and get response message
	    LoanRequestService.saveLoanRequest(loanRequest); 
	    return "redirect:/borrowerhome";
	}

}
