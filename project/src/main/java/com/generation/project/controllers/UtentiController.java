package com.generation.project.controllers;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.generation.project.dao.DAOUtenti;
import com.generation.project.entities.Utente;
@Controller
@RequestMapping("/utenti")
public class UtentiController 
{
	@Autowired
	private DAOUtenti du;
	
	@Autowired
	private ApplicationContext context;
	
	@GetMapping("elencoutenti")
	public String elencoUtenti (Model model)
	{
		model.addAttribute("elencoutenti", du.leggiTutti());
		model.addAttribute("proviamo","sto funzionandooooooo");
		return "/utenti/elencoutenti.jsp";
	}
	
	@GetMapping("eliminautente")
	public String elimina(@RequestParam("id") int idUtente)
	{
		if(du.delete(idUtente))
			return "redirect:elencoutenti";
		else
			return "Errore nell'eliminazione dell'utente con id =" + idUtente;
		
	}
	
	@GetMapping("dettagliutente")
	public String dettagli(@RequestParam("id") int idUtente, Model model)
	{
		Utente u = du.cercaPerId(idUtente);
		if(u==null)
			return "redirect:elencoutenti";
		else
			model.addAttribute("utente",u);
			return"/utenti/dettagliutente.jsp";
	}
	
	@GetMapping("formmodifica")
	public String vaiAllaForm(@RequestParam("id") int idUtente, Model model)
	{
		Utente u = du.cercaPerId(idUtente);
		if(u == null)
			return "redirect:elencoutenti";
		else
			model.addAttribute("utente",u);
			return "/utenti/formmodifica.jsp";
	}
	
	@GetMapping("modificautente")
	public String aggiorna(@RequestParam Map<String,String> inputs)
	{
		Utente u = context.getBean(Utente.class,inputs);
		if(du.update(u))
			return "redirect:elencoutenti";
		else
			return "CENTODICIOTTOOOOOOOOOOOOH";
	}
	
	@GetMapping("formnuovoutente")
	public String nuovoUtente()
	{
		return "/utenti/formnuovoutente.html";
	}
	
	@GetMapping("nuovoutente")
	public String aggiungiUtente(@RequestParam Map<String,String> inputsNuovoUtente)
	{
		Utente u = context.getBean(Utente.class,inputsNuovoUtente);
		if(du.create(u))
		{
			System.out.println("Id utenti:" + u.getId());
			return "redirect:elencoutenti";
		}
		else
			return "CENTODICIOTTOOOOO THE REVENGEHHH";
	}
}