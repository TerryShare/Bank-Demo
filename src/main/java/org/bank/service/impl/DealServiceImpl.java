package org.bank.service.impl;

import java.util.List;

import org.bank.dao.DealDao;
import org.bank.pojo.Deal;
import org.bank.service.DealService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("DealService")
public class DealServiceImpl implements DealService{
	
	@Autowired
	private DealDao deal;

	@Override
	public List zhye(String name) {
		// TODO Auto-generated method stub
		return  deal.zhye(name);
	}

	@Override
	public int jysc(int id) {
		// TODO Auto-generated method stub
		return deal.jysc(id);
	}

	@Override
	public int cr(Deal deal) {
		// TODO Auto-generated method stub
		return this.deal.cr(deal);
	}

	@Override
	public List zd() {
		// TODO Auto-generated method stub
		return deal.zd();
	}

}
