package com.klef.sdp.springboot.service;

import com.klef.sdp.springboot.model.LoanRequest;
import com.klef.sdp.springboot.repository.LoanRequestRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoanRequestServiceImpl implements LoanRequestService {

    @Autowired
    private LoanRequestRepository loanRequestRepository;

    @Override
    public String submitLoanRequest(LoanRequest loanRequest) {
        // Check if a loan request with the same email and loan purpose already exists
        LoanRequest existingRequest = loanRequestRepository.findByEmailAndLoanPurpose(
                loanRequest.getEmail(), loanRequest.getLoanPurpose()
        );

        if (existingRequest != null) {
            return "Loan request already exists";
        }

        // Save the loan request in the repository
        loanRequestRepository.save(loanRequest);

        return "Loan request submitted successfully";
    }
}
