package org.bank.service.impl;

import java.util.List;

import org.bank.dao.JiJinDao;
import org.bank.pojo.Jijin;
import org.bank.service.JiJinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("jijinService")
public class JiJinServiceImpl implements JiJinService{

	@Autowired
	private JiJinDao jijinService;

	
	@Override
	public List<Jijin> searchJiJin() {
		// TODO Auto-generated method stub
		return jijinService.searchJiJin();
	}

}
