package model;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import entidades.Boleta;
import entidades.Cliente;
import entidades.Producto;
import entidades.ProductoHasBoleta;
import entidades.ProductoHasBoletaPK;

public class VentaModel {

	public static EntityManagerFactory emf =	Persistence.createEntityManagerFactory("DAW2-Semana03-Generacion");



	
	public void insertarVenta(Boleta boleta) throws Exception {
		EntityManager manager = null;
		
		try {
			manager = emf.createEntityManager();
			
			Boleta bol = new Boleta();
			bol.setFecha(new Date());
			
			//Obtiene Cliente
			Cliente c =	manager.find(Cliente.class,
								boleta.getCliente().getIdcliente());
			bol.setCliente(c);
			
			//Se envia la cabercera(NO se registra)(Obtener el ID)
			manager.getTransaction().begin();
			manager.persist(bol);
			manager.flush(); //NO REGISTRA, VERIFICA SI ES CORRECTO
			
			for (ProductoHasBoleta x : boleta.getProductoHasBoletas()) {
				
				manager.persist(bol);
				manager.flush(); 
				
				ProductoHasBoleta phb = new ProductoHasBoleta();
				phb.setStock(x.getStock());
				
				Producto p = 
				manager.find(Producto.class,
						x.getProducto().getIdproducto());
				
				phb.setProducto(p);		
				phb.setPrecio(p.getPrecio());
				
				ProductoHasBoletaPK pk = new ProductoHasBoletaPK();
				pk.setIdboleta(bol.getIdboleta());
				pk.setIdproducto(p.getIdproducto());
				
				phb.setId(pk);
				
				manager.persist(phb);
				manager.flush();
			}
			
			//SE ENVIA  A LA BD
			manager.getTransaction().commit();
		} catch (Exception e) {
			manager.getTransaction().rollback();
			e.printStackTrace();
		} finally{
			if(manager != null)
				manager.close();
		}	

	}
	
}
