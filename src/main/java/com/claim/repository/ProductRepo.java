package com.claim.repository;
import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.claim.entity.Product;

@Repository

public interface ProductRepo extends JpaRepository <Product, String >{

	@Query("Select P from Product P where productName like %?1% ")
	public ArrayList<Product> search(String search);
}
