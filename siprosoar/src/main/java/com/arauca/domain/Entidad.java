package com.arauca.domain;

// Generated 6/06/2015 07:49:03 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entidad generated by hbm2java
 */
@Entity
@Table(name = "entidad", catalog = "mydbtest")
public class Entidad implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idEntidad;
	private String codEntidad;
	private String nombreEntidad;
	private String direccionEntidad;
	private String telefonoEntidad;

	public Entidad() {
	}

	public Entidad(String codEntidad, String nombreEntidad) {
		this.codEntidad = codEntidad;
		this.nombreEntidad = nombreEntidad;
	}

	public Entidad(String codEntidad, String nombreEntidad,
			String direccionEntidad, String telefonoEntidad) {
		this.codEntidad = codEntidad;
		this.nombreEntidad = nombreEntidad;
		this.direccionEntidad = direccionEntidad;
		this.telefonoEntidad = telefonoEntidad;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id_entidad", unique = true, nullable = false)
	public Integer getIdEntidad() {
		return this.idEntidad;
	}

	public void setIdEntidad(Integer idEntidad) {
		this.idEntidad = idEntidad;
	}

	@Column(name = "cod_entidad", nullable = false, length = 45)
	public String getCodEntidad() {
		return this.codEntidad;
	}

	public void setCodEntidad(String codEntidad) {
		this.codEntidad = codEntidad;
	}

	@Column(name = "nombre_entidad", nullable = false, length = 45)
	public String getNombreEntidad() {
		return this.nombreEntidad;
	}

	public void setNombreEntidad(String nombreEntidad) {
		this.nombreEntidad = nombreEntidad;
	}

	@Column(name = "direccion_entidad", length = 45)
	public String getDireccionEntidad() {
		return this.direccionEntidad;
	}

	public void setDireccionEntidad(String direccionEntidad) {
		this.direccionEntidad = direccionEntidad;
	}

	@Column(name = "telefono_entidad", length = 45)
	public String getTelefonoEntidad() {
		return this.telefonoEntidad;
	}

	public void setTelefonoEntidad(String telefonoEntidad) {
		this.telefonoEntidad = telefonoEntidad;
	}

}