package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.film.dao.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO filmDao;
	
	
	@RequestMapping(path= {"/", "home.do"})
	public String home() {
		
		return "home";
	}
	
	@RequestMapping(path = {"/","form.do"})
	public String addFilmForm() {
		
		return "addFilm";
	}
	
	//adds film from addFilm.jsp
	@RequestMapping(path ="add.do", method = RequestMethod.POST)
	public ModelAndView addFilm(Film film, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		filmDao.createFilm(film);
		redir.addFlashAttribute("addingObject", film);
		mv.setViewName("redirect:filmAdded.do");
		
		
		return mv;
	}
//use redirect when adding/deleting/editing film
	
	// redirect when film is added 
	@RequestMapping(path = "filmAdded.do")
	public ModelAndView createdFilm() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("result");
		return mv;
	}

}
