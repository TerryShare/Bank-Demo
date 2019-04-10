package org.bank.service.impl;

import java.util.List;

import org.bank.dao.ZhaiDao;
import org.bank.pojo.Zhai;
import org.bank.service.ZhaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("zhaiService")
public class ZhaiServiceImpl  implements ZhaiService{

	
	@Autowired
	private ZhaiDao ZhaiService;

	@Override
	public List<Zhai> searchZhai() {
		// TODO Auto-generated method stub
		return ZhaiService.searchZhai();
	}

}
