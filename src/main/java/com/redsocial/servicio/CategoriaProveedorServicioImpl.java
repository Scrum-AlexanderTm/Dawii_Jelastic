package com.redsocial.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.redsocial.entidad.CategoriaProveedor;
import com.redsocial.repositorio.CategoriaProveedorRepositorio;

@Service
public class CategoriaProveedorServicioImpl implements CategoriaProveedorServicio{

	@Autowired
	private CategoriaProveedorRepositorio repositorio; 
	
	@Override
	public List<CategoriaProveedor> listaCategoria() {
		return repositorio.findAll();
	}

}


