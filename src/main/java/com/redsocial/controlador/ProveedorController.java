package com.redsocial.controlador;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.redsocial.entidad.CategoriaProveedor;
import com.redsocial.entidad.Proveedor;
import com.redsocial.servicio.CategoriaProveedorServicio;
import com.redsocial.servicio.ProveedorServicio;

@Controller
public class ProveedorController {
	@Autowired
	private CategoriaProveedorServicio categoriaServicio;

	@Autowired
	private ProveedorServicio proveedorServicio;

	@RequestMapping("/verProveedor")
	public String ver() {
		return "registraProveedor";
	}

	@RequestMapping("/cargaCategoriaProveedor")
	@ResponseBody
	public List<CategoriaProveedor> lista() {
		return categoriaServicio.listaCategoria();
	}

	@RequestMapping(value = "/registraProveedor")
	public String regProveedor(Proveedor proveedor, HttpSession session) {
		Proveedor aux = proveedorServicio.insertaProveedor(proveedor);
		if (aux == null) {
			session.setAttribute("MENSAJE", "Registro erróneo");
		} else {
			session.setAttribute("MENSAJE", "Registro exitos");
		}

		return "redirect:verProveedor";
	}
}
