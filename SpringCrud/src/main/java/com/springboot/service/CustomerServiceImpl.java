package com.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springboot.entity.Customer;
import com.springboot.repository.CustomerRepository;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepository customerRepository;
	
	
	@Override
	public List<Customer> getListCustomer() {
			
		return (List<Customer>) customerRepository.findAll();
	}


	@Override
	public void saveOrUpdateCustomer(Customer customer) {
		
			customerRepository.save(customer);
	}


	@Override
	public Customer getCustomer(long id) {
		
		return customerRepository.findById(id).get();
	}


	@Override
	public void deleteCustomer(long id) {
			
		customerRepository.deleteById(id);
		
	}

}
