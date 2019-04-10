package org.bank.service.impl;

import java.util.List;

import org.bank.dao.SharesDao;
import org.bank.pojo.Jijin;
import org.bank.pojo.Shares;
import org.bank.pojo.Zhai;
import org.bank.service.SharesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("shareService")
public class SharesServiceImpl implements SharesService{

	@Autowired
	private SharesDao shareService;

	
	@Override
	public List<Shares> searchShares() {
		// TODO Auto-generated method stub
		return shareService.searchShares();
	}


	
}
