package action;

import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import model.FotoModel;

import org.primefaces.event.FileUploadEvent;
import org.primefaces.model.UploadedFile;

import entidades.Foto;

@ViewScoped
@ManagedBean
public class FotoAction {

	private List<UploadedFile> imagenes = new ArrayList<UploadedFile>();
	private Foto foto = new Foto();
	
	
	public void cargaImagen(FileUploadEvent event) {
		// FacesMessage message = new FacesMessage("Succesful",event.getFile().getFileName() + " is uploaded.");
	    // FacesContext.getCurrentInstance().addMessage(null, message);
		imagenes.add(event.getFile());
	}
	
	public String insertaFoto(){
		if(imagenes.size()>0){
			for (UploadedFile aux : imagenes) {
				FotoModel model = new FotoModel();
				foto.setImagen(aux.getContents());
				model.insertaFoto(foto);
			}
			
			imagenes.clear();
		}
		
		return "/ui/registraFoto.jsf";
	}
	
	
	
	

	public List<UploadedFile> getImagenes() {
		return imagenes;
	}

	public void setImagenes(List<UploadedFile> imagenes) {
		this.imagenes = imagenes;
	}

	public Foto getFoto() {
		return foto;
	}
	public void setFoto(Foto foto) {
		this.foto = foto;
	}
	
	
}
