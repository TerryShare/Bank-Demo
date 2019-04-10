package org.bank.service;

import java.util.List;
import java.util.Map;

import org.bank.pojo.BankCard;

public interface BankCardService {
	 List<BankCard> cardInfo(String ownerIDCard);
	 BankCard searchMoney(String cardid);
	 int costMoneyInCard(BankCard card);
	 BankCard checkTrasfer(Map map);
	 int lostCard(String cardid);
	 List<BankCard> isHaveCard(BankCard card);
	 int createCard(BankCard card);
	 BankCard cmoney(String cardid);
	 int missCard(String cardid);
}
