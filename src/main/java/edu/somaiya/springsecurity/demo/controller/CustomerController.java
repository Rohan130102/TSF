package edu.somaiya.springsecurity.demo.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import edu.somaiya.springsecurity.demo.entity.Customer;
import edu.somaiya.springsecurity.demo.entity.Transaction;
import edu.somaiya.springsecurity.demo.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	
	@GetMapping("/")
	public String showHome() {
		return "Home";
	}
	

	@GetMapping("/showAllCustomers")
	public String showAllCustomers(Model theModel) {
		List<Customer> theCustomers = customerService.getCustomers();
		theModel.addAttribute("customers", theCustomers);
		return "list-customers";
	}
	
	@GetMapping("/showAllTransactions")
	public String showAllTransactions(Model theModel) {
		List<Transaction> theTransactions = customerService.getTransactions();
		theModel.addAttribute("transactions", theTransactions);
		return "list-transactions";
	}
	
	@GetMapping("/showCustomerDetail")
	public String showCustomerDetail(@RequestParam("customerId") int theId, Model theModel) {
		Customer theCustomer = customerService.getCustomers(theId);
		theModel.addAttribute("customer", theCustomer);
		return "customer-detail";
	}
	
	
	@GetMapping("/showCustomersForTransfer")
	public String showCustomersForTransfer(@RequestParam("customerId") int theId, Model theModel) {
		List<Customer> theCustomers = customerService.getCustomersForTransfer(theId);
		Customer theCustomer = customerService.getCustomers(theId);
		theModel.addAttribute("currentCustomer", theCustomer);
		theModel.addAttribute("customers", theCustomers);
		return "customers-for-transfer";
	}
	
	@GetMapping("/paymentPage")
	public String paymentPage(@RequestParam("customerId") int to, @RequestParam("currentCustomerId") int from, Model theModel) {
		Customer fromCustomer = customerService.getCustomers(from);
		Customer toCustomer = customerService.getCustomers(to);
		theModel.addAttribute("from", fromCustomer);
		theModel.addAttribute("to", toCustomer);
		
		return "amount-page";
	}
	
	@PostMapping("/verifyAmount")
	public String verifyAmount(@RequestParam("amount") String amount , 
			@RequestParam("from") int from, @RequestParam("to") int to , Model theModel) {
		
		Customer fromCustomer = customerService.getCustomers(from);
		Customer toCustomer = customerService.getCustomers(to);
		
		double a;
		if(amount != null ) {
			try {
				a = Double.parseDouble(amount);
				if(fromCustomer.getCurrentBalance() >= a) {
					fromCustomer.setCurrentBalance(fromCustomer.getCurrentBalance() - a);
					toCustomer.setCurrentBalance(toCustomer.getCurrentBalance() + a);
					customerService.saveCustomer(fromCustomer);
					customerService.saveCustomer(toCustomer);
					
					Date date=new Date();
					SimpleDateFormat spl=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					String d=spl.format(date);
					try {
						date=spl.parse(d);
					} catch (ParseException e) {
						e.printStackTrace();
					}
					
				
					Transaction theTransaction = new Transaction(fromCustomer.getfName() +  " "+ fromCustomer.getlName(),
							toCustomer.getfName() + " " + toCustomer.getlName(), a, date);
					
					customerService.saveTransactaction(theTransaction);
					return "transfer-confirmation";
				}else {
					theModel.addAttribute("from", fromCustomer);
					theModel.addAttribute("to", toCustomer);
					return "amount-page-with-errors";
				}
			}catch(Exception e) {
				theModel.addAttribute("from", fromCustomer);
				theModel.addAttribute("to", toCustomer);
					return "amount-page-with-errors";
				
			}
		}else {
			theModel.addAttribute("from", fromCustomer);
			theModel.addAttribute("to", toCustomer);
			return "patient-confirmation.jsp";
		}
		
	}
}
