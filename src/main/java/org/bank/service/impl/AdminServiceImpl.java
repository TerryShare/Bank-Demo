package org.bank.service.impl;

import org.bank.dao.AdminDao;
import org.bank.pojo.Admin;
import org.bank.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("AdminService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	private AdminDao AdminDao;
	
	@Override
	public Admin login(Admin admin) {
		// TODO Auto-generated method stub
		return AdminDao.login(admin);
	}

}
