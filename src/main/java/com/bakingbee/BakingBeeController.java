
package com.bakingbee;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.transaction.Transaction;
import javax.validation.Valid;

import org.hibernate.Session;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bakingbee.Product.Product;
import com.bakingbee.Product.ProductService;
import com.bakingbee.user.user;
import com.bakingbee.user.userService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BakingBeeController {

	@Autowired
	userService us;
	@Autowired
ProductService ps;
	@Autowired
ServletContext context;
	
	
	
	//@RequestMapping("/")
	//public String home()
	//{
		//return "index";
	//}
	
	@RequestMapping("/index")
	public String index()
	{
		return "index";
	}

	@RequestMapping("/head")
	public String head()
	{
		return "head";
	}
	
	@RequestMapping("/head-meta")
	public String head_meta()
	{
		return "head-meta";
	}
	
	@RequestMapping("/aboutus")
	public String about_us()                     
	{
		return "aboutus";
	}
	
	@RequestMapping("/contact")
	public String contact()
	{
		return "contact";
	}
	
	
	@RequestMapping("/cart")
	public String cart()
	{
		return "cart";
	}
	
	@RequestMapping("/signup")
	public ModelAndView signup(@Valid @ModelAttribute("user") user i)
	{
		ModelAndView mav  = new ModelAndView("signup");
		mav.addObject("User", new user());
		return mav;
	}	
	
@RequestMapping(value = "/AddUser", method = RequestMethod.POST)
	public ModelAndView AddUser(@Valid @ModelAttribute("user") user i, BindingResult bind) {
		ModelAndView mav = new ModelAndView("signup");
		System.out.println(i.getUsername());
         us.insert(i);
		
		return mav;
	}
@RequestMapping(value = "/AddProduct", method = RequestMethod.POST)
public ModelAndView AddProduct(@Valid @ModelAttribute("Product") Product p, BindingResult bind) {
	ModelAndView
	
	mav = new ModelAndView("addproduct");
	System.out.println(p.getProductName());
     ps.insert(p);
	
	return mav;
}	

@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
public ModelAndView adminlogin(@RequestParam("UserName") String a,@RequestParam("Password") String b) {
	ModelAndView mav = new ModelAndView("adminhome");
	ModelAndView mav1 = new ModelAndView("adminlogin");
	System.out.println(a);
	
	List<Product> list = ps.getAllProducts();
	
	JSONArray jarr = new JSONArray();
	
	for( Product p1 : list )
	{
		JSONObject jobj = new JSONObject();
		
		jobj.put("ProductId", p1.getProductId());
		jobj.put("ProductName", p1.getProductName());
		jobj.put("ProductDescription", p1.getProductDescription());
		jobj.put("ProductCateogry", p1.getProductCategory());
		jobj.put("ProductPrice", p1.getProductPrice());
		jobj.put("ProductQuantity", p1.getProductQuantity());
		jobj.put("ProductImage", p1.getProductImage());
		
		
		jarr.add(jobj);
	}
	 
	mav.addObject("JSONData", jarr.toJSONString());
	mav1.addObject("JSONData", jarr.toJSONString());
	

	if(a.equals("admin")&& b.equals("pass@123"))
	{
		return mav;
	}
	else
	return mav1;
}	

@RequestMapping("/login")
public String login()
{
	return "login";
}


	
	@RequestMapping("/faq")
	public String faq()
	{
		return "faq";
	}
	
	@RequestMapping("/product1")
	public String product1()
	{
		return "product1";
	}
	
	@RequestMapping("/product2")
	public String product2()
	{
		return "product2";
	}
	@RequestMapping("/product3")
	public String product3()
	{
		return "product3";
	}
	@RequestMapping("/addproduct")
	public ModelAndView addproduct()
	{
		ModelAndView mav = new ModelAndView("addproduct");
		mav.addObject("Product", new Product());
		
		
		return mav;
	}
	@RequestMapping("/adminlogin")
	public String adminlogin()
	{
		return "adminlogin";
	}
	@RequestMapping(value = "/AddProductToDB", method = RequestMethod.POST)
	public ModelAndView AddProductToDB(@ModelAttribute("adminhome") Product p, BindingResult bind) {
		ModelAndView mav = new ModelAndView("adminhome");
		ps.insert(p);
		
		Product pi = ps.getProductWithMaxId();
		
		//
		
		try
		{
			String path = context.getRealPath("/");
	        
	        System.out.println(path);
	        
	        File directory = null;
	        
	        if (p.getProductFile().getContentType().contains("image"))
	        {
	        	directory = new File(path + "/resources/images");
	        	
	        	System.out.println(directory);
	        	
	        	byte[] bytes = null;
	            File file = null;
	            bytes = p.getProductFile().getBytes();
	            
	            if (!directory.exists()) directory.mkdirs();
	            
	            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + pi.getProductId() + ".jpg");
	            
	            System.out.println(file.getAbsolutePath());
	            
	            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
	            stream.write(bytes);
	            stream.close();
	            
	            pi.setProductImage("resources/images/img_" + pi.getProductId() + ".jpg");
	            
	            ps.update(pi);
	        }
		}
		catch( Exception e )
		{
			e.printStackTrace();
			System.out.println("Error here");
		}
		
		//
		
		List<Product> list = ps.getAllProducts();
		
		JSONArray jarr = new JSONArray();
		
		for( Product p1 : list )
		{
			JSONObject jobj = new JSONObject();
			
			jobj.put("ProductId", p1.getProductId());
			jobj.put("ProductName", p1.getProductName());
			jobj.put("ProductDescription", p1.getProductDescription());
			jobj.put("ProductCateogry", p1.getProductCategory());
			jobj.put("ProductPrice", p1.getProductPrice());
			jobj.put("ProductQuantity", p1.getProductQuantity());
			jobj.put("ProductImage", p1.getProductImage());
			
			
			jarr.add(jobj);
		}
		
		System.out.println(jarr.toJSONString());
		
		mav.addObject("JSONData", jarr.toJSONString());
		

		return mav;
	}

	@RequestMapping("/viewproduct/{ProductId}")
	public ModelAndView viewproduct(@PathVariable("ProductId") int pid) {
		ModelAndView mav = new ModelAndView("viewproduct");
		
		Product p = ps.getProduct(pid);
		
		if( p!=null )
		{
			mav.addObject("ProductId",p.getProductId());
			mav.addObject("ProductName",p.getProductName());
			mav.addObject("ProductCateogry",p.getProductCategory());
			mav.addObject("ProductPrice",p.getProductPrice());
			mav.addObject("ProductQuantity",p.getProductQuantity());
			mav.addObject("ProductImage",p.getProductImage());
			mav.addObject("ProductDescription",p.getProductDescription());
			
		}
		return mav;
	}

	@RequestMapping("/deleteproduct/{ProductId}")
	public ModelAndView deleteproduct(@PathVariable("ProductId") int pid) {
		ModelAndView mav = new ModelAndView("adminhome");
		
		ps.delete(pid);
		
		List<Product> list = ps.getAllProducts();
		
		JSONArray jarr = new JSONArray();
		
		for( Product p1 : list )
		{
			JSONObject jobj = new JSONObject();
			
			jobj.put("ProductId", p1.getProductId());
			jobj.put("ProductName", p1.getProductName());
			jobj.put("ProductDescription", p1.getProductDescription());
			jobj.put("ProductCateogry", p1.getProductCategory());
			jobj.put("ProductPrice", p1.getProductPrice());
			jobj.put("ProductQuantity", p1.getProductQuantity());
			jobj.put("ProductImage", p1.getProductImage());
			
			
			jarr.add(jobj);
		}
		
		System.out.println(jarr.toJSONString());
		
		mav.addObject("JSONData", jarr.toJSONString());
				
		return mav;
	}

	@RequestMapping("/updateproduct/{ProductId}")
	public ModelAndView updateproduct(@PathVariable("ProductId") int pid) {
		ModelAndView mav = new ModelAndView("updateproduct");
		System.out.println("hit update!!!!");
		Product p = ps.getProduct(pid);
		mav.addObject("ProductId", p.getProductId());
		mav.addObject("Product", p);
		System.out.println("hit update!!!!ddffd");
		
		System.out.println("hit update!!!!dddghhj");
		return mav;
	}


	@RequestMapping(value = "/hitproductdb", method = RequestMethod.POST)
	public ModelAndView UpdateProductToDB(@ModelAttribute("Product") Product p, BindingResult bind) {
		ModelAndView mav = new ModelAndView("adminhome");
		//ps.insert(p);
	//	
		
		
		
		Product pi = ps.getProductWithMaxId();
		
		try
		{
		
			String path = context.getRealPath("/");
		
	        System.out.println(path);
	    
	        File directory = null;
	        
	    
	        if (p.getProductFile() != null)
	        	//System.out.println("hit me in update product!!!!222");
	        if (p.getProductFile().getContentType().contains("image"))
	        {
	    
	        	directory = new File(path + "/resources/images");
	    
	        	System.out.println(directory);
	        	
	        	byte[] bytes = null;
	        	
	            File file = null;
	            
	            bytes = p.getProductFile().getBytes();
	            
	            if (!directory.exists()) directory.mkdirs();
	            
	            System.out.println(p.getProductId());
	            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + p.getProductId() + ".jpg");
	            
	            System.out.println(file.getAbsolutePath());
	            
	            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
	            
	            stream.write(bytes);
	            
	            stream.close();
	            System.out.println("hit me in update product!!!!5555888");
	            p.setProductImage("resources/images/image_" + p.getProductId() + ".jpg");
	            System.out.println("hit me in update product!!!!869545");
	            ps.update(pi);
	            System.out.println("hit me in update product!!!!");
	        }
	        else 
	        {
	        	p.setProductImage("resources/images/image_" + p.getProductId() + ".jpg");
	        }
		}
		catch( Exception e )
		{
			e.printStackTrace();
		}
		
		//@@@@@
		
		//ps.update(p);
		
		List<Product> list = ps.getAllProducts();
		
		JSONArray jarr = new JSONArray();
		
		for( Product p1 : list )
		{
			JSONObject jobj = new JSONObject();
			
			jobj.put("ProductId", p1.getProductId());
			jobj.put("ProductName", p1.getProductName());
			jobj.put("ProductDescription", p1.getProductDescription());
			jobj.put("ProductCateogry", p1.getProductCategory());
			jobj.put("ProductPrice", p1.getProductPrice());
			jobj.put("ProductQuantity", p1.getProductQuantity());
			jobj.put("ProductImage", p1.getProductImage());
				
			jarr.add(jobj);
		}
		
		System.out.println(jarr.toJSONString());
		
		mav.addObject("JSONData", jarr.toJSONString());
		return mav;	}

	@RequestMapping(value ="/login", method = RequestMethod.POST)
	public ModelAndView logincheck(@RequestParam("username")String a,@RequestParam("password") String b)
	{	
		ModelAndView mav = new ModelAndView("login");
		ModelAndView mav1 = new ModelAndView("adminhome");
		
	List<Product> list = ps.getAllProducts();
		
		JSONArray jarr = new JSONArray();
				 
		mav.addObject("JSONData", jarr.toJSONString());
		mav1.addObject("JSONData", jarr.toJSONString());
		
		if(a.equals("admin") && b.equals("pass@123"))
		{
			return mav1;
		}
		else
			
		return mav;
	}
}



