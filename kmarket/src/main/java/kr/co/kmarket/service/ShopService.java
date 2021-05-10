package kr.co.kmarket.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.kmarket.dao.ShopDao;
import kr.co.kmarket.vo.CartVo;
import kr.co.kmarket.vo.OrderVo;
import kr.co.kmarket.vo.ProductVo;

@Service
public class ShopService {
	@Autowired
	private ShopDao dao;
	
	public ProductVo selectProduct(int code) {
		return dao.selectProduct(code);
	}
	
	public List<ProductVo> selectProducts(int cate1, int cate2, String sort) {
		return dao.selectProducts(cate1, cate2, sort);
	}
	
	public ProductVo selectTitles(int cate1, int cate2) {
		return dao.selectTitles(cate1, cate2);
	}
	
	public int selectCountCart(CartVo vo) {
		return dao.selectCountCart(vo);
	}
	
	public List<CartVo> selectCart (String uid) {
		return dao.selectCart(uid);
	}
	
	public int insertCart (CartVo vo) {
		return dao.insertCart(vo);
	}
	
	public int deleteCart (int[] cartSeqs) {
		return dao.deleteCart(cartSeqs);
	}
	
	public int insertOrder(int[] cartSeqs) {
		return dao.insertOrder(cartSeqs);
	}
	
	public List<OrderVo> selectOrder(String uid) {
		return dao.selectOrder(uid);
	}
}
