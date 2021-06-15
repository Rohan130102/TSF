package edu.somaiya.springsecurity.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.somaiya.springsecurity.demo.dao.CustomerDAO;
import edu.somaiya.springsecurity.demo.entity.Customer;
import edu.somaiya.springsecurity.demo.entity.Transaction;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO customerDAO;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customerDAO.getCustomers();
	}

	@Override
	@Transactional
	public List<Transaction> getTransactions() {
		return customerDAO.getTransactions();
	}

	@Override
	@Transactional
	public Customer getCustomers(int theId) {
		return customerDAO.getCustomers(theId);
	}

	@Override
	@Transactional
	public List<Customer> getCustomersForTransfer(int theId) {
		return customerDAO.getCustomersForTransfer(theId);
	}

	@Override
	@Transactional
	public void saveCustomer(Customer theCustomer) {
		customerDAO.saveCustomer(theCustomer);
	}

	@Override
	@Transactional
	public void saveTransactaction(Transaction theTransaction) {
		 customerDAO.saveTransaction(theTransaction);
	}

}
