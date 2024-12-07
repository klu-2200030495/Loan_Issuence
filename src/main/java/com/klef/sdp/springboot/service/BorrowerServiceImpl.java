package com.klef.sdp.springboot.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.sdp.springboot.model.Borrower;
import com.klef.sdp.springboot.repository.BorrowerRepository;

@Service
public class BorrowerServiceImpl implements BorrowerService {
    @Autowired
    private BorrowerRepository borrowerRepository;

    @Override
    public String borrowerRegistration(Borrower borrower) {
        // Check if borrower with the same email already exists
        Borrower existingBorrower = borrowerRepository.findByEmail(borrower.getEmail());
        if (existingBorrower != null) {
            return "User already exists";
        }

        // If not, save the borrower to the database
        borrowerRepository.save(borrower);
        return "Borrower Registered Successfully";
    }

    @Override
    public Borrower checkBorrowerLogin(String email, String password) {
        return borrowerRepository.checkBorrowerLogin(email, password);
    }
    @Override
    public Borrower getBorrowerById(int id) {
        // Use the repository to fetch borrower details by ID
        return borrowerRepository.findById(id).orElse(null);
    }
    @Override
    public void updateBorrower(Borrower borrower) {
        // Use the repository to save the updated borrower
        borrowerRepository.save(borrower);
    }
    
    @Override
    public boolean deleteBorrowerById(int id) {
        if (borrowerRepository.existsById(id)) {
            borrowerRepository.deleteById(id);
            return true;
        }
        return false;
    }

}