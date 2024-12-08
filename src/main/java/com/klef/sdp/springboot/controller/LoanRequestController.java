package com.klef.sdp.springboot.controller;

import com.klef.sdp.springboot.model.Borrower;
import com.klef.sdp.springboot.model.LoanRequest;
import com.klef.sdp.springboot.service.LoanRequestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class LoanRequestController {

    @Autowired
    private LoanRequestService loanRequestService;

    @GetMapping("loanrequest")
    public ModelAndView loanrequest() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("loanRequestForm"); // View for the loan request form
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

        // Call the service method to submit the loan request
        String responseMessage = loanRequestService.submitLoanRequest(loanRequest);

        // If the request is successful, redirect to borrower home page
        if (responseMessage.equals("Loan request submitted successfully")) {
            return "redirect:/borrowerhome"; // Success redirect
        } else {
            return "redirect:/loanrequest"; // Retry if request exists
        }
    }
   
}
