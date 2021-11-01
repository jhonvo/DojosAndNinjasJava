package com.codingdojo.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codingdojo.models.Dojo;
import com.codingdojo.models.Ninja;
import com.codingdojo.services.DNService;

@Controller
public class DNController {
	private final DNService service;
	
	public DNController(DNService service) {
		this.service = service;
	}
	
	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	@RequestMapping("dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo){
		return "dojonew.jsp";
	}
	
	@RequestMapping("ninjas/new")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> dojos = service.getDojos();
		model.addAttribute("dojos", dojos);
		return "ninjanew.jsp";
	}
	
	@RequestMapping(value="dojos/new", method=RequestMethod.POST)
	public String saveDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result){
		if (result.hasErrors()) {
			return "dojonew.jsp";
		}
		service.createDojo(dojo);
		return "redirect:/";
	}
	
	@RequestMapping(value="ninjas/new", method=RequestMethod.POST)
	public String saveNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result){
		if (result.hasErrors()) {
			return "redirect:/ninjas/new";
		}
		service.createNinja(ninja);
		return "redirect:/";
	}
	
	@RequestMapping("dojos/{id}")
	public String showDojo(Model model, @PathVariable("id") Long id) {
		Dojo dojo = service.getDojo(id);
		model.addAttribute("dojo", dojo);
		return "dojos.jsp";
	}
}
