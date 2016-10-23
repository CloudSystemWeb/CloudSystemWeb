package action;

import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

import model.ProductoModel;

import org.primefaces.component.api.UIData;

import entidades.Producto;

@RequestScoped
@ManagedBean
public class ProductoAction {

	private Producto producto;
	private List<Producto> listaProducto;
	// Permite obtener el elemento selecionado del datatable del mantenimiento
	private UIData dttProductos;

	public ProductoAction() {
		producto = new Producto();
	}

	public String buscaProducto() {
		// getRowData(); --> Obtiene el objeto seleccionado
		producto = (Producto) dttProductos.getRowData();
		return "/ui/modificaProducto.jsf";
	}

	public String modificaProducto() {
		ProductoModel model = new ProductoModel();
		model.actualiza(producto);
		return "/ui/listaProducto.jsf";
	}

	public String eliminaProducto() {
		producto = (Producto) dttProductos.getRowData();

		ProductoModel model = new ProductoModel();
		model.elimina(producto);
		return "/ui/listaProducto.jsf";
	}

	public String insertaProducto() {
		ProductoModel model = new ProductoModel();
		model.inserta(producto);
		return "/ui/listaProducto.jsf";
	}

	public Producto getProducto() {
		return producto;
	}

	public List<Producto> getListaProducto() {
		ProductoModel model = new ProductoModel();
		listaProducto = model.listaProducto();
		return listaProducto;
	}

	public void setProducto(Producto producto) {
		this.producto = producto;
	}

	public void setListaProducto(List<Producto> listaProducto) {
		this.listaProducto = listaProducto;
	}

	public UIData getDttProductos() {
		return dttProductos;
	}

	public void setDttProductos(UIData dttProductos) {
		this.dttProductos = dttProductos;
	}

}
