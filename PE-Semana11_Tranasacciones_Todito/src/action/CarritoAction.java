package action;

import java.util.ArrayList;
import java.util.List;

import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

import model.ProductoModel;

import org.primefaces.component.api.UIData;
import org.primefaces.event.DragDropEvent;

import entidades.Producto;


@ViewScoped
@ManagedBean
public class CarritoAction {
	
	private Producto producto;
	private List<Producto> catalogo;
	private List<Producto> carrito;
	private UIData dttProductos, dttCarrito;
	
	public CarritoAction() {
	    producto = new Producto();
	    carrito = new ArrayList<Producto>();
	}
	
	//evento de primefaces
	public void agregarCarrito(DragDropEvent event){
		//Se obtiene del arrastre el objeto seleccionado
		Producto seleccionado =  (Producto) event.getData();
		seleccionado.setCantidad(1);

		//validamos que no se repita
		for (Producto p : carrito) {
			if(p.getIdproducto() == seleccionado.getIdproducto()){
				addMessage("Producto "+ p.getNombre() +  " ya existe");
				return;
			}
		}
		
		//Se agrega al carrito
		carrito.add(seleccionado);
	}

	public void eliminaProducto(ActionEvent actionEvent) {
		Producto aux = (Producto)	 dttCarrito.getRowData();
		
		for (Producto p : carrito) {
			if(p.getIdproducto() == aux.getIdproducto()){
				carrito.remove(p);
				addMessage("Se eliminó "+ p.getNombre());
				return;
			}
		}
		
	}
	public void actualizaProducto(ActionEvent actionEvent) {
		Producto aux = (Producto)	 dttCarrito.getRowData();
		int pos = dttCarrito.getRowIndex();
		
		for (Producto p : carrito) {
			if(p.getIdproducto() == aux.getIdproducto()){
				carrito.set(pos, p);
				addMessage("Se actualizó "+ p.getNombre());
				return;
			}
		}
		
	}
	public List<Producto> getCatalogo() {
		ProductoModel model = new ProductoModel();
		catalogo =	model.listaProducto();
		return catalogo;
	}
	
	public String getMontoTotal(){
		double monto = 0;
		if(carrito.size()>0){
			for (Producto x : carrito) {
				monto += x.getPrecio()*x.getCantidad();
			}
		}
		return "S/. "+ monto;
	}
	
	
	//---------------------
	public void addMessage(String summary) {
        FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, summary,  null);
        FacesContext.getCurrentInstance().addMessage(null, message);
}
	public Producto getProducto() {
		return producto;
	}

	public List<Producto> getCarrito() {
		return carrito;
	}
	public UIData getDttProductos() {
		return dttProductos;
	}
	public void setProducto(Producto producto) {
		this.producto = producto;
	}
	public void setCatalogo(List<Producto> catalogo) {
		this.catalogo = catalogo;
	}
	public void setCarrito(List<Producto> carrito) {
		this.carrito = carrito;
	}
	public UIData getDttCarrito() {
		return dttCarrito;
	}

	public void setDttCarrito(UIData dttCarrito) {
		this.dttCarrito = dttCarrito;
	}

	public void setDttProductos(UIData dttProductos) {
		this.dttProductos = dttProductos;
	}
	
	
}
