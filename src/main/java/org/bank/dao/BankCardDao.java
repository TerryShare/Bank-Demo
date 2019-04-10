package org.bank.dao;

import java.util.List;
import java.util.Map;

import org.bank.pojo.BankCard;

public interface BankCardDao {
	BankCard searchMoney(String cardid);

	List<BankCard> cardInfo(String ownerIDCard);
	
	int costMoneyInCard(BankCard card);
	BankCard checkTrasfer(Map map);
	int lostCard(String cardid);
	List<BankCard> isHaveCard(BankCard card);
	BankCard cmoney(String cardid);
	int createCard(BankCard card);
	int missCard(String cardid);
	
}
