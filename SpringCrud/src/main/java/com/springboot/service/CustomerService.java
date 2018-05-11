package com.springboot.service;

import java.util.List;

import com.springboot.entity.Customer;

public interface CustomerService {

	public List<Customer> getListCustomer();
	public void saveOrUpdateCustomer(Customer customer);
	public Customer getCustomer(long id);
	public void deleteCustomer(long id);
	

	
	
	
}
