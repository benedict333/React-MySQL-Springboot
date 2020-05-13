package com.claim.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Product;
import com.claim.entity.User;
import com.claim.repository.ProductRepo;


@Service
public class ProductService {
	@Autowired
	ProductRepo productRepo;
	
	public void saveProduct(Product product)
	{
		productRepo.save(product);
		
	}
	
public ArrayList<Product> findAll(){
	return (ArrayList<Product>) productRepo.findAll();
			
}

public ArrayList<Product> searchProduct(Product search)
{
return productRepo.search(search.getSearch());
}
}
