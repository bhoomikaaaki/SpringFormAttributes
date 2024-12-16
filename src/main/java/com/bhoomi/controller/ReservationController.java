package com.bhoomi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@RequestMapping("/bookingForm")
	public ModelAndView booking(ModelAndView model)
	{
		Reservation reservation=new Reservation();
		model.addObject("reservation",reservation);
		model.setViewName("reservation-page");
		return model;
	}
	@RequestMapping("/submitForm")
	public String confirmation(HttpServletRequest req,@ModelAttribute("reservation") Reservation res)
	{
		//req.setAttribute("reservation", res);
		return "confirmation";
	}

}
