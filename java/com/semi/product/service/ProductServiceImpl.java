package com.semi.product.service;

<<<<<<< HEAD
import com.semi.product.model.dao.ProductDao;

public class ProductServiceImpl implements ProductService{

	private ProductDao pDao = new ProductDao();
=======
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.semi.mybatis.common.template.Template;
import com.semi.product.model.dao.ProductDao;
import com.semi.product.model.vo.Product;

public class ProductServiceImpl implements ProductService{
	
	private ProductDao pDao= new ProductDao();

	@Override
	public List<Product> getAllProducts() {
		SqlSession sqlSession = Template.getSqlSession();
        List<Product> productList = pDao.selectAllProducts(sqlSession);
        sqlSession.close();
        return productList;
	}

	@Override
	public List<Product> searchProductsByName(String name) {
		SqlSession sqlSession = Template.getSqlSession();
        List<Product> searchResults = pDao.searchProductsByName(sqlSession, name);
        sqlSession.close();
        return searchResults;
	}

	@Override
	public List<Product> searchProductsByCateNum(String catenum) {
		SqlSession sqlSession = Template.getSqlSession();
        List<Product> searchResults = pDao.searchProductsByCateNum(sqlSession, catenum);
        sqlSession.close();
        return searchResults;
	}

>>>>>>> 2b354c79c1fbfa98682f66c02f377035d25672e2
}
