package com.bakingbee.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceimpl implements ProductService{

	@Autowired
	ProductDAO pdao;
	public void insert(Product P) {
		// TODO Auto-generated method stub
		pdao.insert(P);
	}

	public void update(Product P) {
		// TODO Auto-generated method stub
		pdao.update(P);
	}

	public void delete(int ProductId) {
		// TODO Auto-generated method stub
		pdao.delete(ProductId);
	}

	public Product getProduct(int ProductId) {
		// TODO Auto-generated method stub
		return pdao.getProduct(ProductId);
	}

	public List<Product> getAllProducts() {
		// TODO Auto-generated method stub
		return pdao.getAllProducts();
	}

	public Product getProductWithMaxId() {
		// TODO Auto-generated method stub
		return pdao.getProductWithMaxId();
	}

}
