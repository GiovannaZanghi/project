
package com.generation.project;
import java.util.Map;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Scope;

import com.generation.project.dao.DAOUtenti;
import com.generation.project.entities.Utente;
import com.generation.utility.dao.Database;


@Configuration
public class Context 
{
    @Bean
    public Database db()
    {
        return new Database("spring","root","root");
    }

    @Bean
    public DAOUtenti daoutenti()
    {
        return new DAOUtenti();
    }

    @Bean
    @Scope("prototype")
    @Primary
    public Utente UtenteMappa(Map<String,String> riga)
    {
        Utente u = new Utente();
        u.fromMap(riga);
        return u;
    }

}