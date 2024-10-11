package com.semi.product.model.dao;


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
}
