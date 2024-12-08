package com.klef.sdp.springboot.repository;

import com.klef.sdp.springboot.model.LoanRequest;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface LoanRequestRepository extends JpaRepository<LoanRequest, Long> {
    LoanRequest findByEmailAndLoanPurpose(String email, String loanPurpose);

	List<LoanRequest> findById(int userId);
}
