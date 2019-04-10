package org.bank.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.bank.pojo.BankCard;
import org.bank.pojo.User;

public interface UserService {
	User login(User user);

	int touser(User user);

	int upkh(User user);

	User khcx(String name);

	List khxx(String name);

	int upxx(User user);
	
	int uppw(User user);

	User cxye(String name);

	int cz(User user);

	User kcx(User user);

	List<User> yh(User user);

	int scyh(int id);

	List kp(BankCard card);
	
	int zxkp(int id);
	List sh();

	int kpsh(int id);
	
	User searchID(String name);
	int upzz(Map map);

}
