package action;

import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import model.CategoriaModel;
import entidades.Categoria;

@SessionScoped
@ManagedBean
public class ComboAction {

	private List<Categoria> categorias;

	public List<Categoria> getCategorias() {
		CategoriaModel model = new CategoriaModel();
		categorias = model.listaCategoria();
		return categorias;
	}

	public void setCategorias(List<Categoria> categorias) {
		this.categorias = categorias;
	}

}
