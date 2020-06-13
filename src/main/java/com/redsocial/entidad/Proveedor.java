package com.redsocial.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "proveedor")
public class Proveedor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idproveedor")
	private int idProveedor;
	
	@Column(name = "raz_social_proveedor")
	private String raz_social_proveedor;
	
	@Column(name = "dir_proveedor")
	private String dir_proveedor;
	
	@Column(name = "ruc_proveedor")
	private String ruc_proveedor;
	
	@Column(name = "fec_reg_proveedor")
	private String fec_reg_proveedor;
	
	@ManyToOne @JsonIgnore
	@JoinColumn(name = "idCategoria")
	private CategoriaProveedor categoria;

	public int getIdProveedor() {
		return idProveedor;
	}

	public void setIdProveedor(int idProveedor) {
		this.idProveedor = idProveedor;
	}

	public String getRaz_social_proveedor() {
		return raz_social_proveedor;
	}

	public void setRaz_social_proveedor(String raz_social_proveedor) {
		this.raz_social_proveedor = raz_social_proveedor;
	}

	public String getDir_proveedor() {
		return dir_proveedor;
	}

	public void setDir_proveedor(String dir_proveedor) {
		this.dir_proveedor = dir_proveedor;
	}

	public String getRuc_proveedor() {
		return ruc_proveedor;
	}

	public void setRuc_proveedor(String ruc_proveedor) {
		this.ruc_proveedor = ruc_proveedor;
	}

	public String getFec_reg_proveedor() {
		return fec_reg_proveedor;
	}

	public void setFec_reg_proveedor(String fec_reg_proveedor) {
		this.fec_reg_proveedor = fec_reg_proveedor;
	}

	public CategoriaProveedor getCategoria() {
		return categoria;
	}

	public void setCategoria(CategoriaProveedor categoria) {
		this.categoria = categoria;
	}

	
}
