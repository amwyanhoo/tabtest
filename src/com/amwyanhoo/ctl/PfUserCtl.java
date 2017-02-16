package com.amwyanhoo.ctl;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.amwyanhoo.entity.PfUserCopy;
import com.amwyanhoo.entity.PfUserPack;
import com.amwyanhoo.service.PfUserService;

@Controller
@RequestMapping("/PfUser")
public class PfUserCtl {
	@Autowired
	private PfUserService pfuserservice;
	
	@RequestMapping("findPfUserList")
	public String findPfUserList(HttpServletRequest request,Model model,PfUserPack pfuserpack){
		PfUserCopy pfuser = pfuserservice.findPfUserList(null);
		model.addAttribute("items", pfuser);
		return "pfuserlist";
	}
}
