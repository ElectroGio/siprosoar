package com.arauca.domain;

// Generated 6/06/2015 07:49:03 PM by Hibernate Tools 3.4.0.CR1

import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * FuenteFinanciacion generated by hbm2java
 */
@Entity
@Table(name = "fuente_financiacion", catalog = "mydbtest")
public class FuenteFinanciacion implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer idFuenteFinanciacion;
	private int idProyecto;
	private String codFuente;
	private String nombreFuente;
	private BigDecimal montoFuente;

	public FuenteFinanciacion() {
	}

	public FuenteFinanciacion(int idProyecto, String codFuente,
			String nombreFuente, BigDecimal montoFuente) {
		this.idProyecto = idProyecto;
		this.codFuente = codFuente;
		this.nombreFuente = nombreFuente;
		this.montoFuente = montoFuente;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id_fuente_financiacion", unique = true, nullable = false)
	public Integer getIdFuenteFinanciacion() {
		return this.idFuenteFinanciacion;
	}

	public void setIdFuenteFinanciacion(Integer idFuenteFinanciacion) {
		this.idFuenteFinanciacion = idFuenteFinanciacion;
	}

	@Column(name = "id_proyecto", nullable = false)
	public int getIdProyecto() {
		return this.idProyecto;
	}

	public void setIdProyecto(int idProyecto) {
		this.idProyecto = idProyecto;
	}

	@Column(name = "cod_fuente", nullable = false, length = 45)
	public String getCodFuente() {
		return this.codFuente;
	}

	public void setCodFuente(String codFuente) {
		this.codFuente = codFuente;
	}

	@Column(name = "nombre_fuente", nullable = false, length = 45)
	public String getNombreFuente() {
		return this.nombreFuente;
	}

	public void setNombreFuente(String nombreFuente) {
		this.nombreFuente = nombreFuente;
	}

	@Column(name = "monto_fuente", nullable = false, precision = 25, scale = 0)
	public BigDecimal getMontoFuente() {
		return this.montoFuente;
	}

	public void setMontoFuente(BigDecimal montoFuente) {
		this.montoFuente = montoFuente;
	}

}