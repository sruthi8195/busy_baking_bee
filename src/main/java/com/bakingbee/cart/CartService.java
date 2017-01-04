package com.bakingbee.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public interface CartService {

	@Autowired
	
	Cart getCartById(int cartId);

    void update(Cart cart);
    
    void add(Cart cart);
    
    void delete(int i);
    
    public List<Cart> getAllItems();
    
    Cart getCartByUsername(String Username);
    
    String checkUsername(String Username);
}
