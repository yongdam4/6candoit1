package com.semi.admin.product.controller;

import java.io.IOException;
import java.util.List;

import com.semi.product.model.vo.Product;
import com.semi.product.service.ProductService;
import com.semi.product.service.ProductServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminProductSearchController
 */
public class AdminProductSearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private ProductService productService = new ProductServiceImpl();
	
    public AdminProductSearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	     // 검색 조건과 검색어 가져오기
	        String searchType = request.getParameter("searchType");  // 회원명, 아이디, 회원등급
	        String searchText = request.getParameter("searchText");  // 검색어
	        
	        List<Product> searchResults = null;

	        // 검색 타입에 따라 회원명 또는 아이디 검색
	        if ("상품명".equals(searchType)) {
	            searchResults = productService.searchProductsByName(searchText);
	        }else if ("카테고리".equals(searchType)) {
	            searchResults = productService.searchProductsByCateNum(searchText);
	        }
	        
	        // 검색 결과를 request에 저장하고 JSP로 전달
	        request.setAttribute("productList", searchResults);
	        request.getRequestDispatcher("/views/jsp/ProductManagement1.jsp").forward(request, response);

	    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
