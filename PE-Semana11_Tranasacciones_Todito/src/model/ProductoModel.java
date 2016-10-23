package model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import entidades.Producto;

public class ProductoModel {

	public static EntityManagerFactory emf =	Persistence.createEntityManagerFactory("DAW2-Semana03-Generacion");

	public void inserta(Producto p){
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
	
	public Producto busca(int idProducto){
		EntityManager manager = null;
		Producto aux =null;
		try {
			manager = emf.createEntityManager();
			aux = manager.find(Producto.class, idProducto);
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			manager.close();
		}
		return aux;
	}
	
	public void elimina(Producto p){
		EntityManager manager = null;
		try {
			manager = emf.createEntityManager();
			//manager.find --> es como select por ID
			Producto aux = manager.find(Producto.class, p.getIdproducto());
			manager.getTransaction().begin();
			manager.remove(aux);
			manager.flush();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		} finally{
			manager.close();
		}
	}
	
	
	public void actualiza(Producto p){
		EntityManager manager = null;
		try {
			manager = emf.createEntityManager();
			manager.getTransaction().begin();
			manager.merge(p);
			manager.flush();
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		} finally{
			manager.close();
		}
	}
	
	public List<Producto> listaProducto(){
		EntityManager manager = emf.createEntityManager();
		TypedQuery<Producto> q = manager.createQuery("select p from Producto p",
																Producto.class);
		return q.getResultList();
	}
}









