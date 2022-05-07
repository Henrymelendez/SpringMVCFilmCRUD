package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	

	
	@RequestMapping(path = {"/", "form.do"} ,params = "lookup" )
	public String filmLooKUp() {
		
		return "filmLookup";
	}
	
	@RequestMapping(path ="delete.do", method = RequestMethod.GET)
	public ModelAndView deleteFilm(Film film, @RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		film.setId(id);
		System.out.println(film.getId());
		boolean filmDeleted = filmDao.deleteFilm(film);
		mv.addObject("deletingObject", true);
		mv.addObject("objectDeleted", filmDeleted);
		mv.setViewName("result");
		return mv;
	}
	
	
@RequestMapping(path ="updateFilm.do", method = RequestMethod.GET)
public ModelAndView updateFilm(Film film) {
	
	ModelAndView mv = new ModelAndView();
	mv.addObject("film", film);
	mv.setViewName("updateFilm");
	
	return mv;
}
	
	
	
	//adds film from addFilm.jsp
	@RequestMapping(path ="add.do", method = RequestMethod.POST)
	public ModelAndView addFilm(Film film, RedirectAttributes redir) {
		ModelAndView mv = new ModelAndView();
		film = filmDao.createFilm(film);
		mv.addObject("usingLookup",true);
		redir.addFlashAttribute("film", film);
		
		mv.setViewName("redirect:filmAdded.do");
		
		
		return mv;
	}

	
	
	
	// redirect when film is added 
	@RequestMapping(path = "filmAdded.do",method=RequestMethod.GET)
	public ModelAndView createdFilm() {
		ModelAndView mv = new ModelAndView();

		mv.addObject("addingObject", true);
		mv.setViewName("result");
		return mv;
	}
	
	
	// Story 1 Find Film by Id
	@RequestMapping(path ="findByFilmId.do",  method = RequestMethod.GET)
	public ModelAndView FindByFilmId(String filmId) {
		ModelAndView mv = new ModelAndView();
		Film film  = filmDao.findFilmById(Integer.parseInt(filmId));
		mv.addObject("usingLookup",true);

		mv.addObject("film", film);
		mv.setViewName("result");
		return mv;
	}
	
	

}
