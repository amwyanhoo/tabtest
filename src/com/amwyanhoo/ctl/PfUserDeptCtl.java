package com.amwyanhoo.ctl;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.amwyanhoo.entity.PfUserCopy;
import com.amwyanhoo.entity.PfUserDept;
import com.amwyanhoo.entity.PfUserPack;
import com.amwyanhoo.service.PfUserDeptService;
import com.amwyanhoo.service.PfUserService;

@Controller
@RequestMapping("pfuserdept")
public class PfUserDeptCtl {
	@Resource
	private PfUserService pfuserservice;
	@Resource
	private PfUserDeptService pfuserdeptservice;
	
	@RequestMapping("/findPfuser")
	public String findPfuser(HttpServletRequest request,HttpServletResponse response, Model model,PfUserPack pfuserpack){
		List<PfUserCopy>  list = pfuserservice.findPfUserListwithrole(null);
		model.addAttribute("items", list);
		
		return "pfusermanager";
	}
	
	@RequestMapping("/update")
	public void update(HttpServletRequest request,HttpServletResponse response, Model model,String userid,String roleid){
		//public String update(HttpServletRequest request,HttpServletResponse response, Model model,PfUserPack pfuserpack){
		String success="success";
		PfUserDept pfUserDept = new PfUserDept();
		pfUserDept.setUserid(userid);
		pfUserDept.setRoleid(Integer.parseInt(roleid));
		try {
			pfuserdeptservice.updateByPrimaryKeySelective(pfUserDept);
		} catch (Exception e) {
			success="error";
			e.printStackTrace();
		}finally{
			try {
				Writer writer = response.getWriter();
				writer.write(success);
				writer.flush();
				writer.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
