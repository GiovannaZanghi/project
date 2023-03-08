package com.generation.project.entities;

import com.generation.utility.entities.Entity;

public class Utente extends Entity
{
	private String nome;
	private String cognome;
	private String dob;
	private String nazionalita;
	private double importoIn;
	private boolean stipendio;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getNazionalita() {
		return nazionalita;
	}
	public void setNazionalita(String nazionalita) {
		this.nazionalita = nazionalita;
	}
	public double getImportoIn() {
		return importoIn;
	}
	public void setImportoIn(double importoIn) {
		this.importoIn = importoIn;
	}
	public boolean isStipendio() {
		return stipendio;
	}
	public void setStipendio(boolean stipendio) {
		this.stipendio = stipendio;
	}
	
}
