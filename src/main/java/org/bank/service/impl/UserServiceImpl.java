package org.bank.service.impl;



import org.bank.dao.UserDao;
import org.bank.pojo.BankCard;
import org.bank.pojo.User;
import org.bank.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao UserService;

	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return UserService.login(user);
	}

	@Override
	public int touser(User user) {
		// TODO Auto-generated method stub
		return UserService.touser(user);
	}

	@Override
	public int upkh(User user) {
		// TODO Auto-generated method stub
		return UserService.upkh(user);
	}

	@Override
	public User khcx(String name) {
		// TODO Auto-generated method stub
		return UserService.khcx(name);
	}

	@Override
	public List khxx(String name) {
		// TODO Auto-generated method stub
		return UserService.khxx(name);
	}

	@Override
	public int upxx(User user) {
		// TODO Auto-generated method stub
		return UserService.upxx(user);
	}

	@Override
	public User cxye(String  name) {
		// TODO Auto-generated method stub
		return UserService.cxye(name);
	}

	@Override
	public int cz(User user) {
		// TODO Auto-generated method stub
		return UserService.cz(user);
	}

	@Override
	public User kcx(User user) {
		// TODO Auto-generated method stub
		return UserService.kcx(user);
	}

	@Override
	public List<User> yh(User user) {
		
		return UserService.yh(user);
	}

	@Override
	public int scyh(int id) {
		// TODO Auto-generated method stub
		return UserService.scyh(id);
	}

	

	@Override
	public int kpsh(int id) {
		// TODO Auto-generated method stub
		return UserService.kpsh(id);
	}

	@Override
	public int zxkp(int id) {
		// TODO Auto-generated method stub
		return UserService.zxkp(id);
	}

	@Override
	public List sh() {
		// TODO Auto-generated method stub
		return UserService.sh();
	}

	@Override
	public int upzz(Map map) {
		// TODO Auto-generated method stub
		return UserService.upzz(map);
	}

	@Override
	public int uppw(User user) {
		// TODO Auto-generated method stub
		return UserService.uppw(user);
	}

	@Override
	public List kp(BankCard card) {
		// TODO Auto-generated method stub
		return UserService.kp(card);
	}

	@Override
	public User searchID(String name) {
		// TODO Auto-generated method stub
		return UserService.searchID(name);
	}

	
}
