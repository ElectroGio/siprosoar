package com.arauca.domain;

// Generated 6/06/2015 07:49:03 PM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Funcionario generated by hbm2java
 */
@Entity
@Table(name = "funcionario", catalog = "mydbtest")
public class Funcionario implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idFuncionario;
	private String codFuncionario;
	private String nombreFuncionario;
	private String telefonoFuncionario;
	private String correoFuncionario;
	private String sectorFuncionario;

	public Funcionario() {
	}

	public Funcionario(String codFuncionario, String nombreFuncionario) {
		this.codFuncionario = codFuncionario;
		this.nombreFuncionario = nombreFuncionario;
	}

	public Funcionario(String codFuncionario, String nombreFuncionario,
			String telefonoFuncionario, String correoFuncionario,
			String sectorFuncionario) {
		this.codFuncionario = codFuncionario;
		this.nombreFuncionario = nombreFuncionario;
		this.telefonoFuncionario = telefonoFuncionario;
		this.correoFuncionario = correoFuncionario;
		this.sectorFuncionario = sectorFuncionario;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id_funcionario", unique = true, nullable = false)
	public Integer getIdFuncionario() {
		return this.idFuncionario;
	}

	public void setIdFuncionario(Integer idFuncionario) {
		this.idFuncionario = idFuncionario;
	}

	@Column(name = "cod_funcionario", nullable = false, length = 45)
	public String getCodFuncionario() {
		return this.codFuncionario;
	}

	public void setCodFuncionario(String codFuncionario) {
		this.codFuncionario = codFuncionario;
	}

	@Column(name = "nombre_funcionario", nullable = false, length = 45)
	public String getNombreFuncionario() {
		return this.nombreFuncionario;
	}

	public void setNombreFuncionario(String nombreFuncionario) {
		this.nombreFuncionario = nombreFuncionario;
	}

	@Column(name = "telefono_funcionario", length = 45)
	public String getTelefonoFuncionario() {
		return this.telefonoFuncionario;
	}

	public void setTelefonoFuncionario(String telefonoFuncionario) {
		this.telefonoFuncionario = telefonoFuncionario;
	}

	@Column(name = "correo_funcionario", length = 45)
	public String getCorreoFuncionario() {
		return this.correoFuncionario;
	}

	public void setCorreoFuncionario(String correoFuncionario) {
		this.correoFuncionario = correoFuncionario;
	}

	@Column(name = "sector_funcionario", length = 45)
	public String getSectorFuncionario() {
		return this.sectorFuncionario;
	}

	public void setSectorFuncionario(String sectorFuncionario) {
		this.sectorFuncionario = sectorFuncionario;
	}

}
