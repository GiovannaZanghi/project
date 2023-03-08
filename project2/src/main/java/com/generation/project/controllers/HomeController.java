package com.generation.project.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController 
{	
	/* Per vedere se funziono
	@GetMapping("/")
	@ResponseBody
	public String test()
	{
		return "sto funzionando";
	}
	*/
	
	@GetMapping("/")
	public String home()
	{
		return "home.html";
	}
}
