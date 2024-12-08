package com.klef.sdp.springboot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.time.LocalDateTime;

import jakarta.persistence.Column;

@Entity
@Table(name = "loan_requests") // Specifies the table name in the database
public class LoanRequest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Auto-increment primary key
    @Column(name = "id") // Specifies the column name in the database
    private Long id;

    @Column(name = "email", nullable = false, length = 100) // Email field with constraints
    private String email;

    @Column(name = "loan_purpose", nullable = false, length = 255) // Loan purpose field
    private String loanPurpose;

    @Column(name = "amount", nullable = false) // Loan amount field
    private double amount;

    @Column(name = "borrower_name", nullable = true, length = 100) // Optional field for borrower's name
    private String borrowerName;

    @Column(name = "repayment_time", nullable = false) // Repayment time field
    private int repaymentTime; // Example: in months
    @Column(nullable = false)
    private LocalDateTime requestDate = LocalDateTime.now();


    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLoanPurpose() {
        return loanPurpose;
    }

    public void setLoanPurpose(String loanPurpose) {
        this.loanPurpose = loanPurpose;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getBorrowerName() {
        return borrowerName;
    }

    public void setBorrowerName(String borrowerName) {
        this.borrowerName = borrowerName;
    }

    public int getRepaymentTime() {
        return repaymentTime;
    }

    public void setRepaymentTime(int repaymentTime) {
        this.repaymentTime = repaymentTime;
    }

    @Override
    public String toString() {
        return "LoanRequest{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", loanPurpose='" + loanPurpose + '\'' +
                ", amount=" + amount +
                ", borrowerName='" + borrowerName + '\'' +
                ", repaymentTime=" + repaymentTime +
                '}';
    }
}
