package com.bakingbee.Product;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;


	@Entity
	public class Product implements Serializable {
		
		/**
		 * 
		 */
		private static final long serialVersionUID = -4315101976126832334L;
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int ProductId;
		private String ProductName;
		private String ProductCateogry;
		private String ProductDescription;
		private String ProductPrice;
		private String ProductImage;
	    private String ProductQuantity;
		@Transient
		private MultipartFile ProductFile;
		public MultipartFile getProductFile() 
		{
			return ProductFile;
		}
		public void setProductFile(MultipartFile productFile) {
			ProductFile = productFile;
		}
		
		
		public int getProductId() {
			return ProductId;
		}
		public void setProductId(int productId) {
			ProductId = productId;
		}
		public String getProductName() {
			return ProductName;
		}
		public void setProductName(String productName) {
			ProductName = productName;
		}
		public String getProductCategory() {
			return ProductCateogry;
		}
		public void setProductCateogry(String productCateogry) {
			ProductCateogry = productCateogry;
		}
		public String getProductDescription() {
			return ProductDescription;
		}
		public void setProductDescription(String productDescription) {
			ProductDescription = productDescription;
		}
		public String getProductPrice() {
			return ProductPrice;
		}
		public void setProductPrice(String productPrice) {
			ProductPrice = productPrice;
		}
		public String getProductImage() {
			return ProductImage;
		}
		public void setProductImage(String productImage) {
			ProductImage = productImage;
		}
		public String getProductQuantity() {
			return ProductQuantity;
		}
		public void setProductQuantity(String productQuantity) {
			ProductQuantity = productQuantity;
		}
		
}

