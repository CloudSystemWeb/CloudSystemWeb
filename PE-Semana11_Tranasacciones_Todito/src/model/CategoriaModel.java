package model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import entidades.Categoria;

public class CategoriaModel {

	public static EntityManagerFactory emf =	
			Persistence.createEntityManagerFactory("DAW2-Semana03-Generacion");

	public void inserta(Categoria p){
		EntityManager manager = null;
		try {
			manager = emf.createEntityManager();
			manager.getTransaction().begin();
			manager.persist(p);
			manager.flush();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		} finally{
			manager.close();
		}
	}
	

	
	public List<Categoria> listaCategoria(){
		EntityManager manager = emf.createEntityManager();
		TypedQuery<Categoria> q = manager.createQuery("select c from Categoria c ",	Categoria.class);
														
		return q.getResultList();
	}
}









