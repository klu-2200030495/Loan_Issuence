package com.klef.sdp.springboot.service;

import com.klef.sdp.springboot.model.LoanRequest;

public interface LoanRequestService {
    String submitLoanRequest(LoanRequest loanRequest);
}
