package com.amwyanhoo.ctl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.amwyanhoo.entity.PfUserCopy;
import com.amwyanhoo.entity.PfUserPack;
import com.amwyanhoo.service.PfUserService;

@Controller
@RequestMapping("pfuser")
public class PfUserCtl {
	@Resource
	private PfUserService pfuserservice;
	
	@RequestMapping("/findPfUserList")
	public String findPfUserList(HttpServletRequest request,Model model,PfUserPack pfuserpack){
		List<PfUserCopy>  list = pfuserservice.findPfUserList(null);
//		List<PfUserCopy> list =new ArrayList();
//		PfUserCopy pf1 = new PfUserCopy();
//		pf1.setUserid("1");
//		pf1.setUsername("黄艳虎");
//		list.add(pf1);
		model.addAttribute("items", list);
		
		return "pfuserlist";
	}
}
