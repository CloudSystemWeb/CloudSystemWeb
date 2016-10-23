package action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;

import model.ClienteModel;
import model.ProductoModel;
import model.VentaModel;

import org.primefaces.component.api.UIData;

import entidades.Boleta;
import entidades.Cliente;
import entidades.Producto;
import entidades.ProductoHasBoleta;
import entidades.Seleccion;

@ManagedBean
public class VentaAction {

	// ComboBox
	private List<Producto> productos;
	private List<Cliente> clientes;

	// Seleccion de la grilla
	private UIData dttVentas;

	// Formulario
	private int idProducto, idCliente, cantidad;
	private Seleccion seleccion;

	// Acceso a sesion
	private Map<String, Object> session = FacesContext.getCurrentInstance()
			.getExternalContext().getSessionMap();

	public VentaAction() {
		productos = listaProductos();
		clientes = listaClientes();
	}

	@SuppressWarnings("unchecked")
	public String limpiaVenta() {

		// Valida que exista en sesion
		ArrayList<Seleccion> boleta = (ArrayList<Seleccion>)session.get("boleta");
				
		boleta.clear();
		
		//se actualiza boleta en sesion
		session.put("boleta", boleta);

		return "/ui/registroVenta.jsf";
	}

	@SuppressWarnings("unchecked")
	public String eliminaVenta() {
		// Valida que exista en sesion
		ArrayList<Seleccion> boleta = (ArrayList<Seleccion>)session.get("boleta");
				
		// Se obtiene la seleccion
	    Seleccion seleccion = (Seleccion)dttVentas.getRowData();;
		
		//Valida el ingreso duplicado
		if(boleta.size()>0){
			for (Seleccion x : boleta) {
				if(x.getIdProducto() == seleccion.getIdProducto()){
					boleta.remove(seleccion);
					break;
				}
			}
		}
		
		//se actualiza boleta en sesion
		session.put("boleta", boleta);
		
		return "/ui/registroVenta.jsf";
	}

	public void mensaje(String titulo, String msg){
		FacesContext.getCurrentInstance().addMessage(titulo, new FacesMessage(msg));
	}
	
	@SuppressWarnings("unchecked")
	public String getMontoTotal(){
		double monto = 0;
		ArrayList<Seleccion> boleta = (ArrayList<Seleccion>)session.get("boleta");
		if(boleta!= null && boleta.size()>0){
			for (Seleccion x : boleta) {
				monto += x.getPrecio()*x.getCantidad();
			}
		}
		return "S/. "+ monto;
	}
	
	@SuppressWarnings("unchecked")
	public String agregaVenta() {
		
		//valida cantidades negativas
		if(cantidad<=0){
			mensaje("Mensaje", "La cantidad es positiva");
			return "/ui/registroVenta.jsf";
		}
		
		// Valida que exista en sesion
		ArrayList<Seleccion> boleta = null;
		if(session.get("boleta") == null){
			boleta = new ArrayList<Seleccion>();
		}else{
			boleta = (ArrayList<Seleccion>)session.get("boleta");
		}
		
		//Valida el ingreso duplicado
		if(boleta.size()>0){
			for (Seleccion x : boleta) {
				if(x.getIdProducto() == idProducto){
					x.setCantidad( x.getCantidad() + cantidad);
					return "/ui/registroVenta.jsf";
				}
			}
		}
		
		//se obtiene el producto
		ProductoModel model = new ProductoModel();
		Producto p = model.busca(idProducto);
		
		Seleccion s = new Seleccion();
		s.setIdProducto(idProducto);
		s.setNombre(p.getNombre());
		s.setPrecio(p.getPrecio());
		s.setCantidad(cantidad);
		
		//se agrega la seleccion al arraylist
		boleta.add(s);
		
		//se agrega la boleta a sesion
		session.put("boleta", boleta);

		return "/ui/registroVenta.jsf";
	}

	@SuppressWarnings("unchecked")
	public String registraVenta() {

		try {
			Boleta b = new Boleta();

			Cliente c = new Cliente();
			c.setIdcliente(idCliente);
			b.setCliente(c);

			List<Seleccion> boleta = (ArrayList<Seleccion>) session.get("boleta");
			if (boleta != null) {

				for (Seleccion s : boleta) {
					ProductoHasBoleta phb = new ProductoHasBoleta();

					Producto p = new Producto();
					p.setIdproducto(s.getIdProducto());

					phb.setStock(s.getCantidad());
					phb.setProducto(p);

					b.addProductoHasBoleta(phb);
				}

				VentaModel m = new VentaModel();
				m.insertarVenta(b);

				session.put("boleta", boleta);
				boleta.clear();

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/ui/registroVenta.jsf";
	}

	public List<Producto> listaProductos() {
		ProductoModel m = new ProductoModel();
		return m.listaProducto();
	}

	public List<Cliente> listaClientes() {
		ClienteModel m = new ClienteModel();
		return m.listaCliente();
	}

	public UIData getDttVentas() {
		return dttVentas;
	}

	public int getIdProducto() {
		return idProducto;
	}

	public int getIdCliente() {
		return idCliente;
	}

	public int getCantidad() {
		return cantidad;
	}

	public Seleccion getSeleccion() {
		return seleccion;
	}

	public void setDttVentas(UIData dttVentas) {
		this.dttVentas = dttVentas;
	}

	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public void setSeleccion(Seleccion seleccion) {
		this.seleccion = seleccion;
	}

	public List<Producto> getProductos() {
		return productos;
	}

	public List<Cliente> getClientes() {
		return clientes;
	}

	public void setProductos(List<Producto> productos) {
		this.productos = productos;
	}

	public void setClientes(List<Cliente> clientes) {
		this.clientes = clientes;
	}

}
