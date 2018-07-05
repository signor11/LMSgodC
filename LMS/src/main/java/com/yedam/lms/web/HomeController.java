<<<<<<< HEAD
package com.yedam.lms.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.admin.web.etc.NoticeSearchVO;
import com.yedam.admin.web.etc.NoticeService;
import com.yedam.admin.web.etc.NoticeVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	NoticeService noticeService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/home", "/"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model,NoticeVO vo) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		vo.setFirst(1);
		vo.setLast(1);
		model.addAttribute("no",noticeService.getNoticeList(vo).get(0));
		model.addAttribute("serverTime", formattedDate );
		
		return "home/home";
	}
}
=======
package com.yedam.lms.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yedam.admin.web.etc.NoticeService;
import com.yedam.admin.web.etc.NoticeVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	NoticeService noticeService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/home", "/"}, method = RequestMethod.GET)
	public String home(Locale locale, Model model,NoticeVO vo) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("no",noticeService.getNoticeList(vo).get(0));
		model.addAttribute("serverTime", formattedDate );
		
		return "home/home";
	}
}
>>>>>>> branch 'master' of https://github.com/signor11/LMSgodC
