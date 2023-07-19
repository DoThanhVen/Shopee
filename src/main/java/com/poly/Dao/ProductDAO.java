package com.poly.Dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.poly.Bean.*;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	@Query("SELECT p.image, p.name, p.price,p.sale, od.size, od.color ,od.classify , od.quantity, od.status,od.id FROM Product p JOIN p.orderDetails od JOIN od.account acc WHERE acc.username=?1 AND od.status =?2 ")
	List<Object[]> findAllProducts(@Param("username") String username,@Param("status") String status);
	@Query("SELECT p.id,p.image, p.name,type.name, p.price,p.sale,p.description FROM Product p JOIN p.type type")
	List<Object[]> getAllProducts();
	@Query("SELECT p.id,p.image, p.name,mn.size,mn.color,mn.classify,mn.quantity,mn.gender,mn.createDate FROM ManagerProducts mn JOIN mn.product p")
	List<Object[]> getAllInContainer();
	@Query("SELECT od.account.username,p.image,p.name,od.size,od.color,od.classify,od.quantity,b.status,b.createDate,b.Idbill,b.id,b.ngayXacNhan,b.ngayGiaoHang,b.ngayHuyDon FROM OrderDetail od JOIN od.product p JOIN od.bills b ORDER BY b.createDate DESC")
	List<Object[]> getAllInOrders();
	@Query("SELECT p FROM Product p where p.name LIKE %:keyword%")
	Page<Product> search(@Param("keyword") String keyword, Pageable pageable);
}
