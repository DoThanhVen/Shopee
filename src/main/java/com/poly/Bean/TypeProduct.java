package com.poly.Bean;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;
@SuppressWarnings("serial")
@Data
@Entity 
@Table(name = "Typeproduct")
public class TypeProduct implements Serializable {
	@Id
	int id;
	String name;
	
	//KẾT NỐI PRODUCT
	@OneToMany(mappedBy = "type")
    List<Product> products;
}
