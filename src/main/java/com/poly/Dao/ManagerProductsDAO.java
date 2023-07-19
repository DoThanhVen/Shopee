package com.poly.Dao;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.Bean.*;


public interface ManagerProductsDAO extends JpaRepository<ManagerProducts, Integer>{
	@Query("SELECT mp FROM ManagerProducts mp WHERE mp.product.id = ?1 ORDER BY mp.size DESC")
	List<ManagerProducts> findInfoProduct(int id);
}
