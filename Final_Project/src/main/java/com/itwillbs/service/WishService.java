package com.itwillbs.service;

import java.util.List;
import java.util.Map;

public interface WishService {
	
	public List<Map<String, Object>> getWishList(String memberId);
}
