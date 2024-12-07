package com.klef.sdp.springboot.repository;

import com.klef.sdp.springboot.model.LoanRequest;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoanRequestRepository extends JpaRepository<LoanRequest, Long> {
    LoanRequest findByEmailAndLoanPurpose(String email, String loanPurpose);
}
