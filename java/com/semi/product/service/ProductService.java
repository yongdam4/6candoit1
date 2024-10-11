package com.semi.product.service;

	
import java.util.List;

import com.semi.product.model.vo.Product;

public interface ProductService {
	public List<Product> getAllProducts();  // 상품 목록 조회 메소드
	public List<Product> searchProductsByName(String name);  
    public List<Product> searchProductsByCateNum(String catenum);   
}
