package com.semi.board.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.semi.board.model.vo.Board;

public interface ContactPageService {

	//문의글 가져오기
	public Board selectList(int ucNo);
	
	//문의글 추가
	public int insertContactList(HashMap<String, String> map);
}