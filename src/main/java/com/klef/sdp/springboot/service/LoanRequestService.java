package com.klef.sdp.springboot.service;

import java.util.List;

import com.klef.sdp.springboot.model.LoanRequest;

public interface LoanRequestService {
    String submitLoanRequest(LoanRequest loanRequest);

    static List<LoanRequest> getLoanRequestsByUserId(int userId) {
		// TODO Auto-generated method stub
		return null;
	}
}
