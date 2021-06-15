package edu.somaiya.springsecurity.demo.dao;

import java.util.List; 

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.somaiya.springsecurity.demo.entity.Customer;
import edu.somaiya.springsecurity.demo.entity.Transaction;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveCustomer(Customer theCustomer) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(theCustomer);
	}

	@Override
	public List<Customer> getCustomers() {
		Session session = sessionFactory.getCurrentSession();
		Query<Customer> theQuery = session.createQuery("from Customer", Customer.class); // ClassName hai dono
		List<Customer> customers = theQuery.getResultList();
		return customers;
	}

	@Override
	public List<Transaction> getTransactions() {
		Session session = sessionFactory.getCurrentSession();
		Query<Transaction> theQuery = session.createQuery("from Transaction", Transaction.class); // ClassName hai dono
		List<Transaction> transactions = theQuery.getResultList();
		return transactions;
	}

	@Override
	public Customer getCustomers(int theId) {
		Session session = sessionFactory.getCurrentSession();
		Query<Customer> theQuery = session.createQuery("from Customer where id = '" + theId + "'", Customer.class); // ClassName
																													// hai
																													// dono
		Customer customer = theQuery.getSingleResult();
		return customer;
	}

	@Override
	public List<Customer> getCustomersForTransfer(int theId) {
		Session session = sessionFactory.getCurrentSession();
		Query<Customer> theQuery = session.createQuery("from Customer where id != '" + theId + "'", Customer.class); // ClassName
																														// hai
		List<Customer> customers = theQuery.getResultList();
		return customers;
	}

	@Override
	public void saveTransaction(Transaction theTransaction) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(theTransaction);
	}

}
