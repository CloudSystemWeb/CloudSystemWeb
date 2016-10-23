package action;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;

import model.CategoriaModel;
import entidades.Categoria;

@RequestScoped
@ManagedBean
public class CategoriaAction {

	private Categoria categoria;

	public CategoriaAction() {
		categoria = new Categoria();
	}

	public String insertaCategoria() {
		CategoriaModel model = new CategoriaModel();
		model.inserta(categoria);
		return "/ui/registroCategoria.jsf";
	}

	public Categoria getCategoria() {
		return categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

}
