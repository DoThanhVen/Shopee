package com.poly.Bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@SuppressWarnings("serial")
@Getter
@Setter
@Entity @Table(name = "Bills")
public class Bills implements Serializable {
	@Id	
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	String Idbill;
	String status;
	@Temporal(TemporalType.DATE)
	@Column(name = "Createdate")
	Date createDate = new Date();
	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_xac_nhan")
	Date ngayXacNhan = new Date();
	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_giao_hang")
	Date ngayGiaoHang = new Date();
	@Temporal(TemporalType.DATE)
	@Column(name = "ngay_huy_don")
	Date ngayHuyDon = new Date();
	@ManyToOne
	@JoinColumn(name = "Orderid")
	OrderDetail order;
}
