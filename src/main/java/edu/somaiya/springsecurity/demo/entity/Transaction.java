package edu.somaiya.springsecurity.demo.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Transfers")
public class Transaction {
	
	public Transaction() {}
	
	
	public Transaction(String transfferedFrom,String transferredTo, double amount, Date transferTime) {
		this.transferredFrom = transfferedFrom;
		this.transferredTo = transferredTo;
		this.amount = amount;
		this.transferTime = transferTime;
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "transferredFrom")
	private String transferredFrom;
	
	@Column(name = "transferredTo")
	private String transferredTo;
	
	@Column(name = "amount")
	private double amount;
	
	@Column(name = "transferTime")
	private Date transferTime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTransferredTo() {
		return transferredTo;
	}

	public void setTransferredTo(String transferredTo) {
		this.transferredTo = transferredTo;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public Date getTransferTime() {
		return transferTime;
	}

	public void setTransferTime(Date transferTime) {
		this.transferTime = transferTime;
	}


	public String getTransferredFrom() {
		return transferredFrom;
	}


	public void setTransferredFrom(String transferredFrom) {
		this.transferredFrom = transferredFrom;
	}
	

}
