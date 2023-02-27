package com.itwillbs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Inject
	private SqlSession sqlSession;
	
	private Map<String, String> param = new HashMap<String, String>();
	
	private static final String namespace = "com.itwillbs.mappers.productMapper";

	@Override
	public List<ProductDTO> getPrdFromTheLatest() {
		param.put("GB", "date");
		return sqlSession.selectList(namespace+".orderProduct", param);
	}

	@Override
	public List<ProductDTO> getPrdTopViews() {
		param.put("GB", "views");
		return sqlSession.selectList(namespace+".orderProduct", param);
	}

	@Override
	public List<ProductDTO> getPrdTopWishList() {
		param.put("GB", "wish");
		return sqlSession.selectList(namespace+".orderProduct", param);
	}

	@Override
	public ProductDTO getProductInfo(String productNum) {
		System.out.println("productDAO");
		int productNum1 = Integer.parseInt(productNum);
		System.out.println("productNum1: " + productNum1);
		return sqlSession.selectOne(namespace+".productInfo", productNum1);
	}

	@Override
	public List<ProductDTO> getSellerProduct(String productSeller) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDTO> getSellList(PageDTO pageDTO) {

		return sqlSession.selectList(namespace+".getSellList", pageDTO);
	}
	
	@Override
	public int getSellCount() {
		return sqlSession.selectOne(namespace + ".getSellCount");

	}//
	
	
}
