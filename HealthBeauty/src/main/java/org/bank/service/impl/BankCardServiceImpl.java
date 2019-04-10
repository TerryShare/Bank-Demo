package org.bank.service.impl;

import java.util.List;
import java.util.Map;

import org.bank.dao.BankCardDao;
import org.bank.pojo.BankCard;
import org.bank.service.BankCardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("bankCardService")
public class BankCardServiceImpl implements BankCardService{
	
	@Autowired
	private BankCardDao BankCardService;
	
	@Override
	public List<BankCard> cardInfo(String ownerIDCard) {
		// TODO Auto-generated method stub
		return BankCardService.cardInfo(ownerIDCard);
	}

	@Override
	public BankCard searchMoney(String cardid) {
		// TODO Auto-generated method stub
		return BankCardService.searchMoney(cardid);
	}

	@Override
	public int costMoneyInCard(BankCard card) {
		// TODO Auto-generated method stub
		return BankCardService.costMoneyInCard(card);
	}

	@Override
	public BankCard checkTrasfer(Map map) {
		// TODO Auto-generated method stub
		return BankCardService.checkTrasfer(map);
	}

	@Override
	public int lostCard(String cardid) {
		// TODO Auto-generated method stub
		return BankCardService.lostCard(cardid);
	}

	@Override
	public BankCard cmoney(String cardid) {
		// TODO Auto-generated method stub
		return BankCardService.cmoney(cardid);
	}

	@Override
	public int createCard(BankCard card) {
		// TODO Auto-generated method stub
		return BankCardService.createCard(card);
	}

	@Override
	public List<BankCard> isHaveCard(BankCard card) {
		// TODO Auto-generated method stub
		return BankCardService.isHaveCard(card);
	}

	@Override
	public int missCard(String cardid) {
		// TODO Auto-generated method stub
		return BankCardService.missCard(cardid);
	}

	

}
