package model;

import java.util.Date;

public class Update {

	private int id;
	private int ticketId;
	
	private String modifier; // modifier's username
	private String updateDetails;
	private Date modifiedDate;
	
	public Update(int id, int ticketId, String modifier, String updateDetails, Date modifiedDate){
		this.id = id;
		this.ticketId = ticketId;
		this.modifier = modifier;
		this.updateDetails = updateDetails;
		this.modifiedDate = modifiedDate;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTicket() {
		return ticketId;
	}
	public void setTicket(int ticket) {
		this.ticketId = ticket;
	}
	public String getModifier() {
		return modifier;
	}
	public void setModifier(String modifier) {
		this.modifier = modifier;
	}
	public String getUpdateDetails() {
		return updateDetails;
	}
	public void setDetails(String details) {
		this.updateDetails = details;
	}
	public Date getModifiedDate() {
		return modifiedDate;
	}
	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}
	
	
}
