package com.poly.Dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.Bean.*;

public interface AccountDAO extends JpaRepository<Account, String> {
	@Query("Select a FROM Account a WHERE a.email = ?1")
	Optional<Account> getAccount(@Param("email") String email);
}
