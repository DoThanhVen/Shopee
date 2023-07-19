package com.poly.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.Bean.*;



public interface OrderDetailDAO extends JpaRepository<OrderDetail, Integer>{
	@Query("SELECT od FROM OrderDetail od JOIN od.account a WHERE a.username = :username")
	List<OrderDetail> findAllOrderDetailsByUsername(@Param("username") String username);
}