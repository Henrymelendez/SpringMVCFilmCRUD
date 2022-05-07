package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.dao.FilmDAO;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;
	
	
	@RequestMapping(path= {"/", "home.do"})
	public String home() {
		
		return "home";
	}
	
	@RequestMapping(path ="lookup.do", method = RequestMethod.GET)
	public ModelAndView formSelector() {
		
	
		ModelAndView mv = new ModelAndView();
		
		
		return mv;
	}
//use redirect when adding/deleting/editing film

}
