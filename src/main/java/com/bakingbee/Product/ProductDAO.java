package com.bakingbee.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public interface ProductDAO {
	@Autowired
	void insert(Product P);
	void update(Product P);
	void delete(int ProductId);
	Product getProduct(int ProductId);
	public List <Product> getAllProducts();
	public Product getProductWithMaxId();
}
