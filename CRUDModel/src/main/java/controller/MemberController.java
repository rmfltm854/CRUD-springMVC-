package controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.self.crud.HomeController;

import Service.MemberService;
import common.ViewPath;

import vo.MemberVO;

@Controller
public class MemberController {
	
	private MemberService service;
	@Autowired
	private HttpServletRequest request;

	public MemberController(MemberService service) {
		this.service = service;
	}
	
	@RequestMapping({"/","/list"})
	public String list(Model model) {
		
		int result = service.reset1();
		int result2 = service.reset2();
		System.out.println(result);
		System.out.println(result2);
		
		List<MemberVO> list = service.selectList();
		
		model.addAttribute("list", list);
		
		return ViewPath.PATH + "list.jsp";
	}
	
	@RequestMapping("/update")
	public String editform(Model model, int num) {
		MemberVO vo = service.selectOne(num);
		model.addAttribute("vo", vo);
		
		return ViewPath.PATH + "UpdateForm.jsp";	
	}
	
	@RequestMapping("/updateForm")
	@ResponseBody
	public String updateForm(MemberVO vo) {
		System.out.println(vo.getTel2());
		
		int result = service.update(vo);
		String rs = "no";
		if(result != 0 ) {
			rs  = "yes";
		}
		
		return rs;	
	}
	
	@RequestMapping("/delete")
	public String delete(Model model, int num) {
		int result = service.delete(num);
		
		if(result != 0) {
			
			return "redirect:/";
		}else {
			return "redirect:list";
		}
	}
	@RequestMapping("/insert")
	public String insert() {
		return ViewPath.PATH + "insertForm.jsp";
	}
	
	
	@RequestMapping("/insertForm")
	public String insertForm(MemberVO vo) {
		int result = service.insert(vo);
		if(result != 0) {
			
			return "redirect:/";
		}else {
			return "redirect:list";
		}
	}
	
	
	
	

	
	
	

}
