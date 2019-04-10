package org.bank.controller.user;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.bank.pojo.BankCard;
import org.bank.pojo.Deal;
import org.bank.pojo.User;
import org.bank.service.BankCardService;
import org.bank.service.DealService;
import org.bank.service.JiJinService;
import org.bank.service.SharesService;
import org.bank.service.UserService;
import org.bank.service.ZhaiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.sf.json.JSONObject;

@Controller
@RequestMapping("/user/")
public class UserController {

	@Autowired
	private UserService userService;

	@Autowired
	private DealService dealService;

	@Autowired
	private BankCardService bankCardService;
	
	@Autowired
	private SharesService shareService;
	
	@Autowired
	private ZhaiService zhaiService;
	
	@Autowired
	private JiJinService jijinService;
	// login
	@RequestMapping("tzlogin")
	public String tzlogin() {
		return "user/login";
	}

	// ��¼
	@ResponseBody
	@RequestMapping("login")
	public String login(User user, HttpSession session,String requestDate) {
		Map map = new HashMap();
		JSONObject requestJson = JSONObject.fromObject(requestDate);
		map.put("name", requestJson.getString("name"));
		map.put("password", requestJson.getString("password"));
		user.setName(requestJson.getString("name"));
		user.setPassword(requestJson.getString("password"));
		User user2 = userService.login(user);

		if (user2==null) {
			Map reMap = new HashMap();
			reMap.put("succ", "false");
			JSONObject jsonObject = JSONObject.fromObject(reMap);
			return jsonObject.toString();
			
		} else {
			System.out.println("user2" + user2);
			session.setAttribute("name", user.getName());
			session.setAttribute("id", user2.getId());
			Map reMap = new HashMap();
			reMap.put("succ", "true");
			JSONObject jsonObject = JSONObject.fromObject(reMap);
			return jsonObject.toString();
		}

	}

	@RequestMapping("sy")
	public String sy() {
		return "user/user_index";
	}

	// ע��
	@RequestMapping("touser")
	public String touser(User user) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(System.currentTimeMillis());
		user.setTime(time);
		int i = userService.touser(user);
		return "redirect:tzlogin";
	}

	// �˳�
	@RequestMapping("exit")
	public String exit(HttpSession session) {
		session.removeAttribute("name");
		return "redirect:tzlogin";
	}

	// 开户
	@RequestMapping("kh")
	public String kaihu(HttpSession session, User user, String name,Model model) {
		String na=(String) session.getAttribute("name");
		user = userService.khcx(na);
		user.setName(na);
		user.setT4(1);
		User user2 = userService.kcx(user);
		System.out.println("user2 IDCard"+user.getSf());
		String ownerIDCard = user2.getSf();
		List list = bankCardService.cardInfo(ownerIDCard);
		model.addAttribute("user", user);
		model.addAttribute("list", list);
		if (user.getSf() == null) {
			return "user/user_yykh";
		} else {
			return "user/user_yykh";
		}

	}

	// 开户信息提交
	@ResponseBody
	@RequestMapping("upkh")
	public String upkh(User usert, String name, Model model,HttpSession session, String requestDate) {
		Map map = new HashMap();
		JSONObject requestJson = JSONObject.fromObject(requestDate);
		map.put("names", requestJson.getString("names"));
		map.put("sf", requestJson.getString("sf"));
		map.put("t2", requestJson.getString("t2"));
		map.put("email", requestJson.getString("email"));
		map.put("phone", requestJson.getString("phone"));
		map.put("address", requestJson.getString("address"));
		usert.setNames(requestJson.getString("names"));
		usert.setSf(requestJson.getString("sf"));
		usert.setAddress(requestJson.getString("address"));
		usert.setPhone(requestJson.getString("phone"));
		usert.setEmail(requestJson.getString("email"));
		usert.setName(session.getAttribute("name").toString());
		String  t2=requestJson.getString("t2");
		System.out.println(t2);
		if(t2.equalsIgnoreCase("0")){
			BankCard bankCard = new BankCard();
			bankCard.setOwnerIDCard(requestJson.getString("sf"));
			bankCard.setType("0");
			if(bankCardService.isHaveCard(bankCard) !=null){
				Map reMap = new HashMap();
				reMap.put("succ", "false");
				JSONObject jsonObject = JSONObject.fromObject(reMap);
				return jsonObject.toString();
			}
			StringBuilder sb = new StringBuilder();
			BigDecimal strMoney = new BigDecimal(0);
			Random rand = new Random();
			for (int i = 0; i < 19; i++) {
				sb.append(rand.nextInt(10));
			}
			String data = sb.toString();
			usert.setT3(data);
			usert.setT1("0");
			usert.setT4(0);
			usert.setT2("0");
			BankCard bankcard = new BankCard();
			bankcard.setCardid(data);
			bankcard.setMoney(strMoney);
			bankcard.setOwner(requestJson.getString("names"));
			bankcard.setOwnerIDCard(requestJson.getString("sf"));
			bankcard.setPassword("123456");
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String time = df.format(new Date());
			Date date;
			try {
				date = df.parse(time);
				bankcard.setRegistDate(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			bankcard.setIsLive("true");
			bankcard.setIsNew("1");
			
			bankCardService.createCard(bankcard);
			usert.setMoney(strMoney);
			int i = userService.upkh(usert);
			usert = userService.khcx(name);
			model.addAttribute("list", usert);
			Map reMap = new HashMap();
			reMap.put("succ", "true!");
			JSONObject jsonObject = JSONObject.fromObject(reMap);
			return jsonObject.toString();
		} else {
			BigDecimal strMoney = new BigDecimal(0);
			StringBuilder sb = new StringBuilder();
			Random rand = new Random();
			for (int i = 0; i < 19; i++) {
				sb.append(rand.nextInt(10));
			}
			String data = sb.toString();
			usert.setT3(data);
			usert.setT1("1");
			usert.setT4(1);
			usert.setT2("1");
			BankCard bankcard = new BankCard();
			bankcard.setCardid(data);
			bankcard.setMoney(strMoney);
			bankcard.setOwner(requestJson.getString("names"));
			bankcard.setOwnerIDCard(requestJson.getString("sf"));
			bankcard.setPassword("123456");
			bankcard.setIsLive("true");
			bankcard.setIsNew("1");
			if(bankCardService.isHaveCard(bankcard) !=null){
				bankcard.setType("2");
				
			}else{
				bankcard.setType("1");
			}
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
			String time = df.format(new Date());
			Date date;
			try {
				date = df.parse(time);
				bankcard.setRegistDate(date);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			int a = bankCardService.createCard(bankcard);
			usert.setMoney(strMoney);
			int i = userService.upkh(usert);
			usert = userService.khcx(name);
			model.addAttribute("list", usert);
			Map reMap = new HashMap();
			reMap.put("succ", "true!");
			JSONObject jsonObject = JSONObject.fromObject(reMap);
			return jsonObject.toString();
		}

	}

	// 开户信息管理
	@RequestMapping("khxx")
	public String khxx(String name, Model model,HttpSession session) {
		// TODO Auto-generated method stub
		String names = session.getAttribute("name").toString();
		User usert = userService.khcx(names);
		model.addAttribute("list", usert);
		return "user/user_khxx";
	}
	
	@RequestMapping("payFor")
	public String payFor(String name, Model model){
		List shareList = shareService.searchShares();
		List ZhaiList = zhaiService.searchZhai();
		List JiJinList = jijinService.searchJiJin();
		model.addAttribute("shareList",shareList);
		model.addAttribute("zhaiList",ZhaiList);
		model.addAttribute("jijinList",JiJinList);
		return "user/user_shares";
		
	}

	// 网点查询
	@RequestMapping("cxwd")
	public String cxwd() {
		return "user/user_address";

	}

	// 卡片管理跳转
	@RequestMapping("tzkp")
	public String tzkp(String name, Model model,HttpSession session) {
		String uName = session.getAttribute("name").toString();
		User user = new User();
		user.setName(uName);
		user.setT4(1);
		User user2 = userService.kcx(user);
		String ownerIDCard = user2.getSf();
		List list = bankCardService.cardInfo(ownerIDCard);
		model.addAttribute("list", list);
		return "user/user_ka";
	}

	// 卡片注销

	// 信息修改跳转
	@RequestMapping("xxxg")
	public String xxxg(User usert, String name, Model model) {
		usert = userService.khcx(name);
		model.addAttribute("list", usert);
		return "user/user_xxxg";

	}

	// 修改个人信息
	@RequestMapping("upxx")
	public String upxx(String name, HttpSession session, User user, int id) {
		System.out.println(user.getBirthday());
		System.out.println(name);
		System.out.println(id);
		userService.upxx(user);
		return "redirect:exit";

	}
	
	@RequestMapping("uppw")
	public String uppw(String name, HttpSession session, User user, int id) {
		
		userService.uppw(user);
		return "redirect:exit";

	}
	// 收费标准
	@RequestMapping("sf")
	public String sf() {
		return "user/user_sf";
	}
	
	

	// 余额,记录
	@RequestMapping("zhye")
	public String zhye(String name, Model model, HttpServletRequest request,HttpSession session) {
		String uName = session.getAttribute("name").toString();
		User user = userService.cxye(uName);
		List list = dealService.zhye(name);
		String ownerIDCard = user.getSf();
		List cardList = bankCardService.cardInfo(ownerIDCard);
		System.out.println(name);
		System.out.println(user);
		System.out.println(list);
		model.addAttribute("user", user);
		// model.addAttribute("list", list);
		request.setAttribute("list", list);
		request.setAttribute("cardList", cardList);
		return "user/user_zhye";

	}

	// 记录删除
	@RequestMapping("jysc")
	public String jysc(int id, HttpSession session, Model model, HttpServletRequest request) {
		dealService.jysc(id);
		String name = (String) session.getAttribute("name");
		return this.zhye(name, model, request,session);
	}

	// tzcz
	@RequestMapping("cz")
	public String tzcz(String name, HttpSession session,Model model) {
		User user = new User();
		String na=(String) session.getAttribute("name");
		user.setName(na);
		user.setT4(1);
		User user2 = userService.kcx(user);
		System.out.println("user2 IDCard"+user.getSf());
		String ownerIDCard = user2.getSf();
		List list = bankCardService.cardInfo(ownerIDCard);
		model.addAttribute("list", list);
		return "user/user_tzcz";

	}
	
	@RequestMapping("tx")
	public String  tx(BigDecimal money, HttpSession session,Model model,HttpServletRequest request) {
		String name = (String) session.getAttribute("name");
		User users = userService.cxye(name);
		String  cardid = users.getT3();
		BankCard card = bankCardService.searchMoney(cardid);
		BigDecimal cardMoney = card.getMoney();
		BigDecimal mone = users.getMoney();
		if(mone.compareTo(money)==-1){
			session.setAttribute("isTraFromBank", "false");
			return this.zhye(name,  model, request,session);
		}
		
		User user = new User();
		user.setName(name);
		user.setMoney(mone.subtract(money));
		card.setMoney(cardMoney.add(money));

		int b = userService.cz(user);
		int a = bankCardService.costMoneyInCard(card);
		Deal deal = new Deal();
		deal.setJy(money);
		deal.setTyoe("提现到卡");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = df.format(System.currentTimeMillis());
		deal.setTime(time);
		deal.setName(name);
		int isDeal = dealService.cr(deal);
		return this.zhye(name,  model,  request,session);
		
	}
	
	// 充值
	@RequestMapping("czup")
	@ResponseBody
	public String czup( HttpSession session,String requestDate) {
		Map map = new HashMap();
		JSONObject requestJson = JSONObject.fromObject(requestDate);
		map.put("fk", requestJson.getString("fk"));
		map.put("money", requestJson.getString("money"));
		
		System.out.println(map);
		BankCard b=bankCardService.cmoney(requestJson.getString("fk"));
		BigDecimal big=b.getMoney();
		BigDecimal money=new BigDecimal(requestJson.getString("money")) ;//前台传的前数
		int a=big.compareTo(money);
		System.out.println(a);
		if(a == -1){
			System.out.println("22222");
			Map reMap = new HashMap();
			reMap.put("succ", "false");
			JSONObject jsonObject = JSONObject.fromObject(reMap);
			return jsonObject.toString();
		}else{
			System.out.println("1111");
			String name = (String) session.getAttribute("name");
			User users = userService.cxye(name);//根据姓名查账户余额
			BigDecimal mone = users.getMoney();//账户余额
			//BigDecimal mone2 = users.getT5();//这个是原来user表里用来存银行卡余额的 现在的话还用这个吗 不？不用了
			BankCard card = bankCardService.cmoney(requestJson.getString("fk"));///根据卡号查余额
			BigDecimal cardMoney = card.getMoney();//卡内余额
			User user = new User();
			user.setName(name);
			user.setMoney(mone.add(money));// ++
			//user.setT5(cardMoney.subtract(money));
			card.setMoney(cardMoney.subtract(money));//--
			bankCardService.costMoneyInCard(card);//
			userService.cz(user);//
			Deal deal = new Deal();
			deal.setJy(money);
			deal.setTyoe("在线充值");
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String time = df.format(System.currentTimeMillis());
			deal.setTime(time);
			deal.setName(name);
			dealService.cr(deal);
			Map reMap = new HashMap();
			reMap.put("succ", "true");
			JSONObject jsonObject = JSONObject.fromObject(reMap);
			return jsonObject.toString();
		}
		

	}
	
	@RequestMapping("lost")
	public String lost(String id) {
		bankCardService.lostCard(id);
		return "redirect:tzkp";
		
	}
	
	// tzjf
	@RequestMapping("sj")
	public String tzsj(String name, Model model, HttpSession session) {
//		User user = new User();
//		String names=(String) session.getAttribute("name");
//		user.setName(names);
//		user.setT4(1);
//		User user2 = userService.kcx(user);
//		System.out.println("user2 IDCard"+user.getSf());
//		String ownerIDCard = user2.getSf();
//		List list = bankCardService.cardInfo(ownerIDCard);
//		model.addAttribute("list", list);
		User user = new User();
		String na=(String) session.getAttribute("name");
		user.setName(na);
		user.setT4(1);
		User user2 = userService.kcx(user);
		System.out.println("user2 IDCard"+user.getSf());
		String ownerIDCard = user2.getSf();
		List list = bankCardService.cardInfo(ownerIDCard);
		model.addAttribute("list", list);
		return "user/user_tzsj";
	}

	@RequestMapping("sjup")
	@ResponseBody
	public String sjup(BigDecimal money1, HttpSession session,String requestDate,String fk) {
		Map map = new HashMap();
		JSONObject requestJson = JSONObject.fromObject(requestDate);
		map.put("cardid", requestJson.getString("fk"));
		map.put("money", requestJson.getString("money"));
		map.put("phone", requestJson.getString("phone"));
		BigDecimal moneyDec = new BigDecimal(requestJson.getString("money"));
		System.out.println(map);
		 	
		
			if("1".equalsIgnoreCase(requestJson.getString("fk"))) {
				String name = (String) session.getAttribute("name");
				User users = userService.cxye(name);
				//System.out.println(users.getMoney());
				String str1 = requestJson.getString("money");
				BigDecimal bd = new BigDecimal(str1);
				BigDecimal mone = users.getMoney();
				int monTra = mone.compareTo(moneyDec);
				if(monTra == -1){
					Map reMap = new HashMap();
					reMap.put("succ", "false");
					JSONObject jsonObject = JSONObject.fromObject(reMap);
					return jsonObject.toString();
				}
				User user = new User();
				user.setName(name);
				user.setMoney(mone.subtract(bd));
				userService.cz(user);
				Deal deal = new Deal();
				deal.setJy(bd);
				deal.setTyoe("手机缴费");
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String time = df.format(System.currentTimeMillis());
				deal.setTime(time);
				deal.setName(name);
				dealService.cr(deal);
				System.out.println(deal);
				Map reMap = new HashMap();
				reMap.put("succ", "true!");
				JSONObject jsonObject = JSONObject.fromObject(reMap);
				return jsonObject.toString();
			}else {
				BankCard cardMon =bankCardService.cmoney(requestJson.getString("fk"));
				int isTrasfer = cardMon.getMoney().compareTo(moneyDec);
				if ( isTrasfer == -1) {
					Map reMap = new HashMap();
					reMap.put("succ", "false");
					JSONObject jsonObject = JSONObject.fromObject(reMap);
					return jsonObject.toString();
				}
				String name = (String) session.getAttribute("name");
				User users = userService.cxye(name);
				BankCard cards =  bankCardService.searchMoney(requestJson.getString("fk"));
//				System.out.println(cards.getMoney());
				String str1 = requestJson.getString("money");
				BigDecimal bd = new BigDecimal(str1);
				BigDecimal cost = cards.getMoney();
				cards.setMoney(cost.subtract(bd));
				int fromCard = bankCardService.costMoneyInCard(cards);
				Deal deal = new Deal();
				deal.setJy(bd);
				deal.setTyoe("手机缴费");
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String time = df.format(System.currentTimeMillis());
				deal.setTime(time);
				deal.setName(name);
				dealService.cr(deal);
				System.out.println(deal);
				Map reMap = new HashMap();
				reMap.put("succ", "true!");
				JSONObject jsonObject = JSONObject.fromObject(reMap);
				return jsonObject.toString();
			}
		}

	

	// tzzz
	@RequestMapping("zz")
	public String tzzz( Model model, HttpSession session) {
		User user = new User();
		String name=(String) session.getAttribute("name");
		user.setName(name);
		user.setT4(1);
		User user2 = userService.kcx(user);
		String ownerIDCard = user2.getSf();
		List list = bankCardService.cardInfo(ownerIDCard);
		model.addAttribute("list", list);
		return "user/user_tzzz";

	}

	@ResponseBody
	@RequestMapping("zzup")
	public String zzup(BigDecimal money1, HttpSession session, String requestDate) {
		Map map = new HashMap();
		JSONObject requestJson = JSONObject.fromObject(requestDate);
		map.put("owner", requestJson.getString("names"));
		map.put("cardid", requestJson.getString("t3"));
		map.put("money", requestJson.getString("money"));
		String  fk=requestJson.getString("fk");
		System.out.println(map);
		System.out.println(fk);
		BankCard card =bankCardService.checkTrasfer(map);
		System.out.print(card);
		if (card == null) {
			Map reMap = new HashMap();
			reMap.put("succ", "false");
			JSONObject jsonObject = JSONObject.fromObject(reMap);
			return jsonObject.toString();
		} else {
			if("1".equalsIgnoreCase(fk)) {
				String name = (String) session.getAttribute("name");
				User users = userService.cxye(name);
				//System.out.println(users.getMoney());
				String str1 = requestJson.getString("money");
				BigDecimal bd = new BigDecimal(str1);
				BigDecimal mone = users.getMoney();
				if(mone.compareTo(bd)<0){
					Map reMap = new HashMap();
					reMap.put("succ", "moneyFalse");
					JSONObject jsonObject = JSONObject.fromObject(reMap);
					return jsonObject.toString();
				}
				User user = new User();
				user.setName(name);
				user.setMoney(mone.subtract(bd));
				userService.cz(user);
				BankCard traCard = bankCardService.searchMoney(map.get("cardid").toString());
				traCard.setMoney(traCard.getMoney().add(bd));
				int transTo = bankCardService.costMoneyInCard(traCard);
				Deal deal = new Deal();
				deal.setJy(bd);
				deal.setTyoe("在线转账");
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String time = df.format(System.currentTimeMillis());
				deal.setTime(time);
				deal.setName(name);
				dealService.cr(deal);
				System.out.println(deal);
				Map reMap = new HashMap();
				reMap.put("succ", "true!");
				JSONObject jsonObject = JSONObject.fromObject(reMap);
				return jsonObject.toString();
			}else {
				
				
				String name = (String) session.getAttribute("name");
				User users = userService.cxye(name);
				BankCard cards =  bankCardService.searchMoney(fk);
//				System.out.println(cards.getMoney());
				String str1 = requestJson.getString("money");
				BigDecimal bd = new BigDecimal(str1);
				BigDecimal cost = cards.getMoney();
				if(cost.compareTo(bd)<0){
					Map reMap = new HashMap();
					reMap.put("succ", "moneyFalse");
					JSONObject jsonObject = JSONObject.fromObject(reMap);
					return jsonObject.toString();
				}
				cards.setMoney(cost.subtract(bd));
				int fromCard = bankCardService.costMoneyInCard(cards);
				BankCard traCard = bankCardService.searchMoney(map.get("cardid").toString());
				traCard.setMoney(traCard.getMoney().add(bd));
				int transTo = bankCardService.costMoneyInCard(traCard);
				Deal deal = new Deal();
				deal.setJy(bd);
				deal.setTyoe("在线转账");
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String time = df.format(System.currentTimeMillis());
				deal.setTime(time);
				deal.setName(name);
				dealService.cr(deal);
				System.out.println(deal);
				Map reMap = new HashMap();
				reMap.put("succ", "true!");
				JSONObject jsonObject = JSONObject.fromObject(reMap);
				return jsonObject.toString();
			}
		}
	}

}
