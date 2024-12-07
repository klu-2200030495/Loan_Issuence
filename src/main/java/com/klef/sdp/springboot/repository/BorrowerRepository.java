package com.klef.sdp.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.klef.sdp.springboot.model.Borrower;

@Repository
public interface BorrowerRepository extends JpaRepository<Borrower, Integer > {

    // Custom query to find borrower by email
    Borrower findByEmail(String email);

    // Custom query for checking borrower login
    @Query("SELECT b FROM Borrower b WHERE b.email = :email AND b.password = :password")
    Borrower checkBorrowerLogin(String email, String password);
    
  

}
