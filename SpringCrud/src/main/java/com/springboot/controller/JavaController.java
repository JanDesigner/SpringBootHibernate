package com.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.springboot.entity.Customer;
import com.springboot.service.CustomerService;

@Controller
@RequestMapping(value = "/customer")
public class JavaController {
	
	
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value ="/list" , method=RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView model = new ModelAndView("customerlist");
		List<Customer> customers = customerService.getListCustomer();
		model.addObject("customers",customers);
		return model;
	}
	
	@RequestMapping(value = "/addcustomer/" , method=RequestMethod.GET)
	public ModelAndView AddCustomer() {
		
		ModelAndView model = new ModelAndView();
		Customer customer = new Customer();
		model.addObject("customers", customer);
		model.setViewName("customerform");
		
		return model;
	}
	
	@RequestMapping(value = "/processForm/" , method=RequestMethod.POST)
	public ModelAndView saved(@ModelAttribute("customers") Customer customer) {
		
		customerService.saveOrUpdateCustomer(customer);
		return new ModelAndView("redirect:/customer/list");
		
	
	}
	
	@RequestMapping(value = "/editcustomer/{id}" , method=RequestMethod.GET)
	public ModelAndView editCustomer(@PathVariable("id")long id) {
		ModelAndView model = new ModelAndView();
		Customer customer = customerService.getCustomer(id);
		model.addObject("customers" , customer);
		model.setViewName("customerform");
		return model;
		
	}
	
	@RequestMapping(value = "/deletecustomer/{id}" , method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable("id")long id) {
		
		customerService.deleteCustomer(id);
		return new ModelAndView("redirect:/customer/list");
		
	}
	
	
}
