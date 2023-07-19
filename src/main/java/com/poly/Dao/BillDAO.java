package com.poly.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.poly.Bean.*;

public interface BillDAO extends JpaRepository<Bills, Integer> {
	@Query("Select bill FROM Bills bill WHERE bill.Idbill = ?1")
	List<Bills> getByIDBill(@Param("id") String id);
	@Query("SELECT p.image,p.name,od.size,od.color,od.classify,od.quantity,bills.Idbill,p.price,p.sale FROM OrderDetail od JOIN od.product p JOIN od.bills bills WHERE od.account.username=?1 AND bills.status =?2")
	List<Object[]> getAllInOrders(@Param("username") String username,@Param("status") String status);
	@Query("SELECT YEAR(b.ngayGiaoHang), MONTH(b.ngayGiaoHang), SUM(p.price * o.quantity - (p.price * o.quantity * p.sale)/100)"
			+ " AS total FROM Bills b JOIN b.order o JOIN o.product p  WHERE b.status = ?1 OR b.status = ?2 GROUP BY YEAR(b.ngayGiaoHang), MONTH(b.ngayGiaoHang)")
	List<Object[]> thongKeTien(@Param("status1") String status1,@Param("status2") String status2);
}
