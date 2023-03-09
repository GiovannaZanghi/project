package com.generation.project.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import com.generation.project.entities.Utente;
import com.generation.utility.dao.Database;

public class DAOUtenti 
{
	@Autowired
	private Database db;
	
	@Autowired
	private ApplicationContext context;
	//Metodi crud
	
	//Metodo READ
	public List<Utente> read (String query, String... params)
	{
		List<Utente> ris = new ArrayList<Utente>();
		List<Map<String,String>> righe = db.rows(query, params);
		
		for(Map<String, String> riga : righe)
		{
			Utente u = context.getBean(Utente.class,riga);
			ris.add(u);
		}
		return ris;
	} //Fine di read()
	
	public List<Utente> leggiTutti()
	{
		return read("select * from utenti");
	}
	
	//METOTO CREATE
	public boolean create (Utente u)
	{
		String query = "insert into utenti (nome, cognome, dob, nazionalita, importoIn, stipendio) values (?,?,?,?,?,?)";
		String stipendio = u.isStipendio()?"1":"0";
		System.out.println("Id DAO:" + u.getId());
		return db.update(query, u.getNome(), u.getCognome(), u.getDob(), u.getNazionalita(), u.getImportoIn() + "", stipendio);
	}
	
	//METODO DELETE
	public boolean delete (int id)
	{
		String query = "delete from utenti  where id = ?";
		return db.update(query, id + "");
	}
		
		//METODO UPDATE
		public boolean update (Utente u)
		{
			String query = "update utenti set nome = ?, cognome = ?, dob = ?, nazionalita = ?, importoIn = ?, stipendio = ? where id = ?";
			String stipendio = u.isStipendio()?"1":"0";
			return db.update(query, u.getNome(), u.getCognome(), u.getDob(),u.getNazionalita(), u.getImportoIn() + "", stipendio, u.getId() + "");
		}
		
		public Utente cercaPerId(int id)
		{
			return read("select * from utenti where id = ?", id + "").get(0);
		}	
	}
	

