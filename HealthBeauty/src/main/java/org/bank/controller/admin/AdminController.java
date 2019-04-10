package org.bank.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.bank.pojo.Admin;
import org.bank.pojo.BankCard;
import org.bank.pojo.User;
import org.bank.service.AdminService;
import org.bank.service.BankCardService;
import org.bank.service.DealService;
import org.bank.service.UserService;
import org.bank.ut.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin/")
public class AdminController extends Page{

	@Autowired
	private AdminService Admin;
	
	@Autowired
	private UserService users;
	
	@Autowired
	private DealService deal;
	
	@Autowired
	private BankCardService bankCard;
	
	@RequestMapping("tzlogin")
	public String tzlogin() {
		return "admin/login";
	}
	@RequestMapping("login")
	public String Login(Admin admin,HttpSession session,Model model,User user,HttpServletRequest request) {
		System.out.println(admin);
		if(admin != null) {
			Admin admins=Admin.login(admin);
			System.out.println(admins);
		//	System.out.println(admins.getId());
			session.setAttribute("name", admins.getName());
			session.setAttribute("id", admins.getId());
			
			List list=users.yh(user);
			System.out.println(list);
			model.addAttribute("list", list);
			return "admin/index";
		}
		return "admin/index";
	}
	
	@RequestMapping("tzindex")
	public String tzindex(Model model,User user,String names
			) {
		
		System.out.println(user.getNames());
	
		List list=users.yh(user);
		model.addAttribute("list", list);
		return "admin/index";
	}
	
	@RequestMapping("seachCard")
	public String seachCard(Model model,User user,String owner
			) {
		BankCard card = new BankCard();
		card.setIsLive("true");
		if(owner!=null){
			card.setOwner(owner);
		}
		System.out.println(card.getOwner());
	
		List list=users.kp(card);
		model.addAttribute("list", list);
		return "admin/ka";
	}
	
	@RequestMapping("scyh")
	public String scyh(int id) {
		users.scyh(id);
		return "redirect:tzindex";
	}
	
	@RequestMapping("tzkp")
	public String tzka(Model model) {
		String isLive = "true";
		BankCard card = new BankCard();
		card.setIsLive(isLive);
		List list =users.kp(card);
		model.addAttribute("list", list);
		return "admin/ka";
	}
	
	@RequestMapping("zckp")
	public String zxkp(String cardid) {
		
		bankCard.lostCard(cardid);
		return "redirect:tzkp";
		
	}
	@RequestMapping("tzsh")
	public String sh(Model model) {
		String isLive = "true";
		BankCard card = new BankCard();
		card.setIsLive(isLive);
		List list =users.kp(card);
		model.addAttribute("list", list);
		return "admin/sh";
	}
	
	@RequestMapping("kpsh")
	public String kpsc(String id) {
		BankCard card = bankCard.searchMoney(id);
		User use=new User();
		
		use = users.searchID(card.getOwner());
		users.kpsh(use.getId());
		bankCard.missCard(card.getCardid());
		return "redirect:tzsh";
		
	}
	
	@RequestMapping("tzzd")
	public String zd(Model model) {
		List list =deal.zd();
		model.addAttribute("list", list);
		return "admin/zd";
	}
	@RequestMapping("sc")
	public String sc(int id) {
		deal.jysc(id);
		return "redirect:tzzd";
	}
	
}
