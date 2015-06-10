package com.arauca.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.arauca.domain.Contrato;
import com.arauca.domain.DimensionPdm;
import com.arauca.domain.Estado;
import com.arauca.domain.Modalidad;
import com.arauca.domain.UnidadEjecutora;
import com.arauca.services.ContratoService;
import com.arauca.services.DependenciaService;
import com.arauca.services.DimensionPdmService;
import com.arauca.services.EntidadService;
import com.arauca.services.EstadoService;
import com.arauca.services.FuenteFinanciacionService;
import com.arauca.services.FuncionarioService;
import com.arauca.services.ModalidadService;
import com.arauca.services.ProgramaPdmService;
import com.arauca.services.ProyectoService;
import com.arauca.services.SectorInversionPdmService;
import com.arauca.services.SubprogramaPdmService;
import com.arauca.services.UnidadEjecutoraService;

@Controller
public class MainController {

	@Autowired
	ContratoService contratoService;
	@Autowired
	DependenciaService dependenciaService;
	@Autowired
	DimensionPdmService dimensionPdmService;
	@Autowired
	EntidadService entidadService;
	@Autowired
	EstadoService estadoService;
	@Autowired
	FuenteFinanciacionService fuentefinanciacionService;
	@Autowired
	FuncionarioService funcionarioService;
	@Autowired
	ModalidadService modalidadService;
	@Autowired
	ProgramaPdmService programaPdmService;
	@Autowired
	ProyectoService proyectoService;
	@Autowired
	SectorInversionPdmService sectorInversionPdmService;
	@Autowired
	SubprogramaPdmService subprogramaPdmService;
	@Autowired
	UnidadEjecutoraService unidadEjecutoraService;

	@RequestMapping(value = { "/", "/modulos**" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {

		ModelAndView model = new ModelAndView();

		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			model.addObject("title", "Spring Security + Hibernate Example");
			model.addObject("message", "This is default page!");
			model.setViewName("modulos");
		} else {
			model.setViewName("403");
			;
		}
		return model;

	}

	@RequestMapping(value = "/admin**", method = RequestMethod.GET)
	public ModelAndView adminPage() {

		ModelAndView model = new ModelAndView();
		model.addObject("title", "Spring Security + Hibernate Example");
		model.addObject("message", "This page is for ROLE_ADMIN only!");
		model.setViewName("admin");

		return model;

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout,
			HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error",
					getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;

	}

	// customize the error message
	private String getErrorMessage(HttpServletRequest request, String key) {

		Exception exception = (Exception) request.getSession()
				.getAttribute(key);

		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Invalid username and password!";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			error = "Invalid username and password!";
		}

		return error;
	}

	// for 403 access denied page
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {

		ModelAndView model = new ModelAndView();

		// check if user is login
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);

			model.addObject("username", userDetail.getUsername());

		}

		model.setViewName("403");
		return model;

	}

	@RequestMapping(value = "/contratacion", method = RequestMethod.GET)
	public ModelAndView contratacion() {
		ModelAndView model;
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			List<Contrato> contratoList = contratoService.getList();

			for (int contador = 0; contador < contratoList.size(); contador++) {

				UnidadEjecutora undEjecutora = unidadEjecutoraService
						.getRowById(contratoList.get(contador)
								.getUnidadEjecutora().getIdUnidadEjecutora());
				contratoList.get(contador).setUnidadEjecutora(undEjecutora);

				Modalidad modalidad = modalidadService.getRowById(contratoList
						.get(contador).getModalidad().getIdModalidad());
				contratoList.get(contador).setModalidad(modalidad);

				Estado estado = estadoService.getRowById(contratoList
						.get(contador).getEstado().getIdEstado());
				contratoList.get(contador).setEstado(estado);

			}

			model = new ModelAndView("contratacion", "contratoList",
					contratoList);
		} else {
			model = new ModelAndView();
			model.setViewName("403");
		}
		return model;
	}

	@RequestMapping(value = "/presupuesto", method = RequestMethod.GET)
	public ModelAndView presupuesto() {
		ModelAndView model = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			model.setViewName("presupuesto");
		} else {
			model.setViewName("403");
		}
		return model;
	}

	@RequestMapping(value = "/bancoproyectos", method = RequestMethod.GET)
	public ModelAndView bancoProyectos() {
		ModelAndView model = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			model.setViewName("bancoproyectos");
		} else {
			model.setViewName("403");
		}
		return model;
	}

	@RequestMapping(value = "/programassociales", method = RequestMethod.GET)
	public ModelAndView programasSociales() {
		ModelAndView model = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			model.setViewName("programassociales");
		} else {
			model.setViewName("403");
		}
		return model;
	}

	@RequestMapping(value = "/planeacion", method = RequestMethod.GET)
	public ModelAndView planeacion() {
		ModelAndView model = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			model.setViewName("planeacion");
		} else {
			model.setViewName("403");
		}
		return model;
	}

	@RequestMapping(value = "/localizacionpredial", method = RequestMethod.GET)
	public ModelAndView localizacionPredial() {
		ModelAndView model = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext()
				.getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			model.setViewName("localizacionpredial");
		} else {
			model.setViewName("403");
		}
		return model;
	}
}