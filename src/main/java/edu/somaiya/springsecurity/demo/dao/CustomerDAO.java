package edu.somaiya.springsecurity.demo.dao;

import java.util.List;

import edu.somaiya.springsecurity.demo.entity.Customer;
import edu.somaiya.springsecurity.demo.entity.Transaction;

public interface CustomerDAO {

	List<Customer> getCustomers();

	List<Transaction> getTransactions();

	Customer getCustomers(int theId);

	List<Customer> getCustomersForTransfer(int theId);

	void saveCustomer(Customer theCustomer);

	void saveTransaction(Transaction theTransaction);

}
