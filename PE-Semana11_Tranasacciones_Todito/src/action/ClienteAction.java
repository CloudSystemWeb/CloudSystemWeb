package action;

import java.util.List;

import javax.faces.bean.ManagedBean;

import model.ClienteModel;

import org.primefaces.component.api.UIData;
import org.primefaces.model.UploadedFile;

import entidades.Cliente;

@ManagedBean
public class ClienteAction {
	private Cliente cliente;
	
	//Este atributo es propio del primefaces
	private UploadedFile foto;
	private UIData dttClientes;
	private List<Cliente> listaCliente;
	
	public ClienteAction() {
		cliente = new Cliente();
	}
	public String insertaCliente() {
		ClienteModel model = new ClienteModel();
		
		//Se envian los bytes del archivo a la base de datos
		cliente.setFoto(foto.getContents());
		
		model.insertaCliente(cliente);
		return "/ui/listaCliente.jsf";
	}

	public String eliminaCliente() {
		cliente = (Cliente) dttClientes.getRowData();

		ClienteModel model = new ClienteModel();
		model.elimina(cliente);
		return "/ui/listaCliente.jsf";
	}

	

	public List<Cliente> getListaCliente() {
		ClienteModel model = new ClienteModel();
		listaCliente = model.listaCliente();
		
		
		return listaCliente;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public UploadedFile getFoto() {
		return foto;
	}
	public void setFoto(UploadedFile foto) {
		this.foto = foto;
	}
	public UIData getDttClientes() {
		return dttClientes;
	}
	public void setDttClientes(UIData dttClientes) {
		this.dttClientes = dttClientes;
	}
	public void setListaCliente(List<Cliente> listaCliente) {
		this.listaCliente = listaCliente;
	}

	
	
}
