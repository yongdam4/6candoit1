package com.semi.product.model.dao;

<<<<<<< HEAD
<<<<<<< HEAD
public class ProductDao {
	
=======
=======

>>>>>>> 56e217be98fb6e47b06bc9b5f0b908d5b5e12e8f
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.semi.member.model.vo.Member;
import com.semi.product.model.vo.Product;

public class ProductDao {
	public List<Product> selectAllProducts(SqlSession sqlSession) {
		List<Product> list = sqlSession.selectList("productMapper.selectAllProducts");
		sqlSession.close();
        return list;
    }

    public List<Product> searchProductsByName(SqlSession sqlSession, String name) {
        return sqlSession.selectList("productMapper.searchProductsByName", name);
    }

    public List<Product> searchProductsByCateNum(SqlSession sqlSession, String catenum) {
        return sqlSession.selectList("productMapper.searchProductsByCateNum", catenum);
        }
<<<<<<< HEAD
>>>>>>> 2b354c79c1fbfa98682f66c02f377035d25672e2
=======
>>>>>>> 56e217be98fb6e47b06bc9b5f0b908d5b5e12e8f
}
