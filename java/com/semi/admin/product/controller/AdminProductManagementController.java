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
 * Servlet implementation class AdminProductManagementController
 */
public class AdminProductManagementController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ProductService productService = new ProductServiceImpl();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProductManagementController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Product> productList = productService.getAllProducts();
        
        //디버깅테스트용
//        if (orderList != null) {
//            System.out.println("조회된 회원 수: " + productList.size()); //회원수출력
//            for (Order order : productList) {
//                System.out.println("주문 정보: " + order); //정보출력
//            }
//        } else {
//            System.out.println("주문 목록이 없습니다.");
//        }

        request.setAttribute("productList", productList);
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
