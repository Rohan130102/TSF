package edu.somaiya.springsecurity.demo.service;

import java.util.List;

import edu.somaiya.springsecurity.demo.entity.Customer;
import edu.somaiya.springsecurity.demo.entity.Transaction;

public interface CustomerService {

	List<Customer> getCustomers();

	List<Transaction> getTransactions();

	Customer getCustomers(int theId);

	List<Customer> getCustomersForTransfer(int theId);

	void saveCustomer(Customer fromCustomer);

	void saveTransactaction(Transaction theTransaction);

}
