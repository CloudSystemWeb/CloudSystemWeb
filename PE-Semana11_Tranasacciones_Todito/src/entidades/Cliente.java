package entidades;

import java.io.FileOutputStream;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.faces.context.FacesContext;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.servlet.ServletContext;

/**
 * The persistent class for the cliente database table.
 * 
 */
@Entity
public class Cliente implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idcliente;

	private String nombre;

	private String apellido;

	private String correo;

	@Temporal(TemporalType.DATE)
	private Date fechaNacimiento;

	@Column(length = 100000)
	private byte[] foto;

	// bi-directional many-to-one association to Boleta
	@OneToMany(mappedBy = "cliente")
	private List<Boleta> boletas;

	// Se le agrega un atributo adicional para mostrar las imagenes
	@Transient
	private String imagen;

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public String getImagen() {
		
		//ruta del servidor
		ServletContext servletContext = (ServletContext) FacesContext.getCurrentInstance().getExternalContext().getContext();
		String realPath=(String) servletContext.getRealPath("/"); 
		 
		try {
			String rutaFile = realPath+"\\"+ idcliente +".jpg";
			imagen= idcliente +".jpg";
			FileOutputStream fileOuputStream = new FileOutputStream(rutaFile);
			fileOuputStream.write(foto);
			fileOuputStream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return imagen;
	}

	public byte[] getFoto() {
		return foto;
	}

	public void setFoto(byte[] foto) {
		this.foto = foto;
	}

	public Cliente() {
	}

	public int getIdcliente() {
		return this.idcliente;
	}

	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}

	public String getApellido() {
		return this.apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Date getFechaNacimiento() {
		return this.fechaNacimiento;
	}

	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public List<Boleta> getBoletas() {
		return this.boletas;
	}

	public void setBoletas(List<Boleta> boletas) {
		this.boletas = boletas;
	}

	public Boleta addBoleta(Boleta boleta) {
		getBoletas().add(boleta);
		boleta.setCliente(this);

		return boleta;
	}

	public Boleta removeBoleta(Boleta boleta) {
		getBoletas().remove(boleta);
		boleta.setCliente(null);

		return boleta;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

}